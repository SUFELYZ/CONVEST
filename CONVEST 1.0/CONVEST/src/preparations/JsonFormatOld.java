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
public class JsonFormatOld {

    static Driver driver = null;

    public static void getDriver(){
        String uri = "bolt://localhost:7687";
        String user = "neo4j";//写你自己的neo4j的用户名
        String password = "991117";//写你自己的neo4j的密码
        driver = GraphDatabase.driver(uri, AuthTokens.basic(user,password));
    }

    public static void close(){
        if(driver!=null){
            driver.close();
        }
    }

    //返回关系的StringBuffer，为可视化做准备！json文件
    public static StringBuffer executeFindRelationCypher(String cypher){
        //关系的StringBuffer,json格式
        StringBuffer relationBuffer = new StringBuffer("");
        relationBuffer.append("\"links\":[");//return "links":[
        getDriver();

        try(Session session = driver.session()){
            //result包含了所有的path
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

                        //得到关系属性的健
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

                        //这里处理关系属性
                        while(relKeys.hasNext()){
                            String relKey = relKeys.next();
                            String relValue = relationship.get(relKey).asObject().toString();

                            //去除制表符
                            relValue = relValue.replaceAll("\t","");
                            //去除换行符
                            relValue= relValue.replaceAll("\r","");
                            //去除回车符
                            relValue = relValue.replaceAll("\n","");

                            //将双引号换成单引号
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
                            //如果是最后一个，只需要添加}即可
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

    //返回关系中节点的StringBuffer，为可视化做准备！json文件,需要增加节点的类型
    public static StringBuffer executeFindRelationNodesCypher(String cypher) {
        //用一个set集合去除重复项
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
                        //在增加节点以前，先判断是否在集合中
                        boolean isExist = nodeSet.contains(node.id());
                        if (isExist) continue;
                        Iterator<String> nodeKeys = node.keys().iterator();
                        relationNodesBuffer.append("{");

                        //节点属性
                        while(nodeKeys.hasNext()){
                            String nodeKey = nodeKeys.next();
                            relationNodesBuffer.append("\""+nodeKey+"\":");
                            //node.get(nodeKey).toString();
                            //System.out.println(node.get(nodeKey).asObject().toString());
                            String content = node.get(nodeKey).asObject().toString();

                            //去除制表符
                            content = content.replaceAll("\t","");
                            //去除换行符
                            content = content.replaceAll("\r","");
                            //去除回车符
                            content = content.replaceAll("\n","");

                            //将双引号换成单引号
                            content = content.replaceAll("\"","'");

                            relationNodesBuffer.append("\""+content+"\",");
                        }
                        relationNodesBuffer.append("\"id\":");
                        relationNodesBuffer.append(node.id());
                        //添加节点类型！不知道为什么取得节点类型用的是labels，可能一个节点可以属于多个类别
                        //但是我们这里只属于一个类别！
                        Iterator<String> nodeTypes = node.labels().iterator();
                        //得到节点类型了！
                        String nodeType = nodeTypes.next();

                        relationNodesBuffer.append(",");
                        relationNodesBuffer.append("\"type\":");
                        relationNodesBuffer.append("\""+nodeType+"\"");

                        //将节点添加到set集合中
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

    public static void main(String... args){
    	String keyword="申万宏源";
        String cypher = "match p=(:股票{StockName:\""+keyword+"\"})-[*..2]-() return p";

        StringBuffer relationBuffer = executeFindRelationCypher(cypher);
        StringBuffer relationNodesBuffer = executeFindRelationNodesCypher(cypher);
        ToJson toJson = new ToJson(relationNodesBuffer,relationBuffer);

        toJson.writeJson();

    }

}