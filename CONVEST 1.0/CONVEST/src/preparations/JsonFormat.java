package preparations;

import org.neo4j.driver.*;

import org.neo4j.driver.types.Node;
import org.neo4j.driver.types.Path;
import org.neo4j.driver.types.Relationship;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import java.util.*;

public class JsonFormat extends HttpServlet {
	private static final long serialVersionUID=1L;


    static Driver driver = null;

    public static void getDriver(){
        String uri = "bolt://localhost:7687";
        String user = "neo4j";//鍐欎綘鑷繁鐨刵eo4j鐨勭敤鎴峰悕
        String password = "991117";//鍐欎綘鑷繁鐨刵eo4j鐨勫瘑鐮�
        driver = GraphDatabase.driver(uri, AuthTokens.basic(user,password));
        System.out.println("hello");
    }

    public static void close(){
        if(driver!=null){
            driver.close();
        }
    }
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
        request.setCharacterEncoding("utf-8");
        System.out.println("hello");
        response.setContentType("text/html; charset=utf-8");
        
        PrintWriter out  = response.getWriter();
        System.out.println("hello1");
        String keyword = request.getParameter("keyword");
        String cypher = "";
        System.out.println("hello2");
        StringBuffer stringBuffer = new StringBuffer("");
        stringBuffer.append("match p=(:股票{StockName:\"");
        stringBuffer.append(keyword);
        
        stringBuffer.append("\"})-[*..2]-() return p");
        cypher = stringBuffer.toString();
        System.out.println("hello3");
        StringBuffer relationBuffer = executeFindRelationCypher(cypher);
        StringBuffer relationNodesBuffer = executeFindRelationNodesCypher(cypher);
        System.out.println(cypher);
        ToJson toJson = new ToJson(relationNodesBuffer,relationBuffer);

        toJson.writeJson();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //这句话可以解决从jsp页面接受到中文乱码问题
 
       
    }
        
        
    //杩斿洖鍏崇郴鐨凷tringBuffer锛屼负鍙鍖栧仛鍑嗗锛乯son鏂囦欢
    public static StringBuffer executeFindRelationCypher(String cypher){
        //鍏崇郴鐨凷tringBuffer,json鏍煎紡
        StringBuffer relationBuffer = new StringBuffer("");
        relationBuffer.append("\"links\":[");//return "links":[
        getDriver();

        try(Session session = driver.session()){
            //result鍖呭惈浜嗘墍鏈夌殑path
            Result result = session.run(cypher);

            while(result.hasNext()){
                Record record = result.next();
                List<Value> value = record.values();

                for(Value i:value){
                    Path path = i.asPath();
                    Iterator<Relationship> relationships = path.relationships().iterator();

                    while(relationships.hasNext()){
                        Relationship relationship = relationships.next();

                        long startNodeId = relationship.startNodeId();
                        long endNodeId = relationship.endNodeId();
                        String relType = relationship.type();

                        //寰楀埌鍏崇郴灞炴�х殑鍋�
                        Iterator<String> relKeys = relationship.keys().iterator();

                        relationBuffer.append("{");
                        relationBuffer.append("\"source\":");
                        relationBuffer.append(startNodeId);
                        relationBuffer.append(",");
                        relationBuffer.append("\"target\":");
                        relationBuffer.append(endNodeId);
                        relationBuffer.append(",");
                        relationBuffer.append("\"type\":");
                        relationBuffer.append("\""+relType+"\"");

                        //杩欓噷澶勭悊鍏崇郴灞炴��
                        while(relKeys.hasNext()){
                            String relKey = relKeys.next();
                            String relValue = relationship.get(relKey).asObject().toString();

                            //鍘婚櫎鍒惰〃绗�
                            relValue = relValue.replaceAll("\t","");
                            //鍘婚櫎鎹㈣绗�
                            relValue= relValue.replaceAll("\r","");
                            //鍘婚櫎鍥炶溅绗�
                            relValue = relValue.replaceAll("\n","");

                            //灏嗗弻寮曞彿鎹㈡垚鍗曞紩鍙�
                            relValue = relValue.replaceAll("\"","'");

                            relationBuffer.append(",");
                            relationBuffer.append("\""+relKey+"\"");
                            relationBuffer.append(":");
                            relationBuffer.append("\""+relValue+"\"");
                        }
                        if(!relationships.hasNext()&&!result.hasNext()){
                            relationBuffer.append("}");
                        }
                        else {
                            //濡傛灉鏄渶鍚庝竴涓紝鍙渶瑕佹坊鍔爙鍗冲彲
                            relationBuffer.append("},");
                        }

                    }
                }
            }
        }
        relationBuffer.append("]");
        close();
        return relationBuffer;
    }

    //杩斿洖鍏崇郴涓妭鐐圭殑StringBuffer锛屼负鍙鍖栧仛鍑嗗锛乯son鏂囦欢,闇�瑕佸鍔犺妭鐐圭殑绫诲瀷
    public static StringBuffer executeFindRelationNodesCypher(String cypher) {
        //鐢ㄤ竴涓猻et闆嗗悎鍘婚櫎閲嶅椤�
        Set nodeSet = new HashSet();
        StringBuffer relationNodesBuffer = new StringBuffer("");
        relationNodesBuffer.append("\"nodes\":[");
        getDriver();

        try(Session session = driver.session()){
          Result result = session.run(cypher);

            while(result.hasNext()){
                Record record = result.next();
                List<Value> value = record.values();

                for(Value i:value){

                    Path path = i.asPath();
                    Iterator<Node> nodes = path.nodes().iterator();

                    while(nodes.hasNext()){
                        Node node = nodes.next();
                        //鍦ㄥ鍔犺妭鐐逛互鍓嶏紝鍏堝垽鏂槸鍚﹀湪闆嗗悎涓�
                        boolean isExist = nodeSet.contains(node.id());
                        if (isExist) continue;
                        Iterator<String> nodeKeys = node.keys().iterator();
                        relationNodesBuffer.append("{");

                        //鑺傜偣灞炴��
                        while(nodeKeys.hasNext()){
                            String nodeKey = nodeKeys.next();
                            relationNodesBuffer.append("\""+nodeKey+"\":");
                            //node.get(nodeKey).toString();
                            //System.out.println(node.get(nodeKey).asObject().toString());
                            String content = node.get(nodeKey).asObject().toString();

                            //鍘婚櫎鍒惰〃绗�
                            content = content.replaceAll("\t","");
                            //鍘婚櫎鎹㈣绗�
                            content = content.replaceAll("\r","");
                            //鍘婚櫎鍥炶溅绗�
                            content = content.replaceAll("\n","");

                            //灏嗗弻寮曞彿鎹㈡垚鍗曞紩鍙�
                            content = content.replaceAll("\"","'");

                            relationNodesBuffer.append("\""+content+"\",");
                        }
                        relationNodesBuffer.append("\"id\":");
                        relationNodesBuffer.append(node.id());
                        //娣诲姞鑺傜偣绫诲瀷锛佷笉鐭ラ亾涓轰粈涔堝彇寰楄妭鐐圭被鍨嬬敤鐨勬槸labels锛屽彲鑳戒竴涓妭鐐瑰彲浠ュ睘浜庡涓被鍒�
                        //浣嗘槸鎴戜滑杩欓噷鍙睘浜庝竴涓被鍒紒
                        Iterator<String> nodeTypes = node.labels().iterator();
                        //寰楀埌鑺傜偣绫诲瀷浜嗭紒
                        String nodeType = nodeTypes.next();

                        relationNodesBuffer.append(",");
                        relationNodesBuffer.append("\"type\":");
                        relationNodesBuffer.append("\""+nodeType+"\"");

                        //灏嗚妭鐐规坊鍔犲埌set闆嗗悎涓�
                        nodeSet.add(node.id());

                        if(!nodes.hasNext()&&!result.hasNext()){
                            relationNodesBuffer.append("}");
                        }
                        else{
                            relationNodesBuffer.append("},");
                        }
                    }
                }
            }
        }
        int bufferLength = relationNodesBuffer.length();
        char lastChar = relationNodesBuffer.charAt(bufferLength-1);
        if(lastChar==','){
            String str = relationNodesBuffer.substring(0,relationNodesBuffer.length()-1);
            relationNodesBuffer = relationNodesBuffer.replace(0,bufferLength,str);
        }
        relationNodesBuffer.append("]");
        close();
        return  relationNodesBuffer;
    }

  /*  public static void main(String... args){

        String cypher = "match p=(:股票{StockName:\"中国平安\"})-[*..2]-() return p";
        
       
        System.out.println("hello");

    }*/

}
