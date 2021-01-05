package model2;

import api.Neo4jRestAPI;
import preparations.ToJson;
import systemInfo.Systeminfo;

import java.util.ArrayList;
import java.util.Map;

public class RelationshipBeanDBA {

    //鏍囧噯鏍煎紡
    //match (n1:XXX1{yyy1:"xxx1"}),(n2:XXX2{yyy2:"xxx2"})
    //merge (n1)-[:RRR{sss:"rrr"}]-(n2);
    public void addRelationship(String fromNodeType,String relType,String toNodeType,String[] someParametersName,String[][] someParapetersValue){
        for(int index = 0;index<someParapetersValue.length;index++){
            String cypher = "";
            StringBuffer stringBuffer = new StringBuffer("");
            stringBuffer.append("match (n1:");
            stringBuffer.append(fromNodeType);
            stringBuffer.append("{");
            stringBuffer.append(someParametersName[0]);
            stringBuffer.append(":");
            stringBuffer.append("\"");
            stringBuffer.append(someParapetersValue[index][0]);
            stringBuffer.append("\"");
            stringBuffer.append("})");
            stringBuffer.append(",");
            stringBuffer.append("(n2:");
            stringBuffer.append(toNodeType);
            stringBuffer.append("{");
            stringBuffer.append(someParametersName[2]);
            stringBuffer.append(":");
            stringBuffer.append("\"");
            stringBuffer.append(someParapetersValue[index][2]);
            stringBuffer.append("\"");
            stringBuffer.append("}) ");
            stringBuffer.append("merge (n1)-[:");//寮�濮嬫坊鍔犲叧绯�
            stringBuffer.append(relType);
            stringBuffer.append("{");//寮�濮嬪叧绯诲睘鎬х殑娣诲姞
            stringBuffer.append(someParametersName[1]);
            stringBuffer.append(":");
            stringBuffer.append("\"");
            stringBuffer.append(someParapetersValue[index][1]);
            stringBuffer.append("\"");
            //鍥犱负娣诲姞鍏崇郴鏃讹紝鍏崇郴蹇呴』鏈変竴涓睘鎬э紝
            //鎵�浠ワ紝涓嬮潰鐨勫惊鐜槸娣诲姞鍏崇郴鍏朵粬鐨勫睘鎬э紙濡傛灉鏈夌殑璇濓級
            for(int i = 3;i<someParametersName.length;i++){
                stringBuffer.append(",");
                stringBuffer.append(someParametersName[i]);
                stringBuffer.append(":");
                stringBuffer.append("\"");
                stringBuffer.append(someParapetersValue[index][i]);
                stringBuffer.append("\"");
            }
            stringBuffer.append("}]-(n2)");
            //寰楀埌cypher璇彞
            cypher = stringBuffer.toString();
            System.out.println(cypher);
            //鎵ц
            Neo4jRestAPI.executeCypher(cypher);
        }
    }
    //杩欓噷鏄拡瀵癸紙sdu.zehuape@qq.com锛夋墍鍐欑殑涓�涓柟娉�,杩欐牱鐨勮瘽锛屽舰鍙備竴涓氨鍙互浜�
    public Map<String,String> getRelAttrs(String relType){
        Map<String,String> relation_AttrKey_AttrValue_Map = null;

        String cypher = "";
        StringBuffer stringBuffer= new StringBuffer();
        stringBuffer.append("match ()-");
        stringBuffer.append("[r:");
        stringBuffer.append(relType);
        stringBuffer.append("{");
        stringBuffer.append("name:");
        stringBuffer.append("\"");
        stringBuffer.append("sdu.zehuape@qq.com");
        stringBuffer.append("\"");
        stringBuffer.append("}");
        stringBuffer.append("]");
        stringBuffer.append("-() ");
        stringBuffer.append("return r");

        cypher = stringBuffer.toString();

        System.out.println(cypher);
        //鎵ц
        relation_AttrKey_AttrValue_Map = Neo4jRestAPI.executeFindRelAttrCypher(cypher);
        return relation_AttrKey_AttrValue_Map;
    }
    //鍐欏叆json鏂囦欢,鏌ユ壘
    public String lookInto(String nodeType, String nodeName){
        String cypher = "";

        if(nodeName==null||nodeName==""){
            StringBuffer stringBuffer1 = new StringBuffer("");
            stringBuffer1.append("match p=(:");
            stringBuffer1.append(nodeType);
            stringBuffer1.append(")");
            stringBuffer1.append("-[*..1]-() return p");

            cypher = stringBuffer1.toString();
        }else{
            StringBuffer stringBuffer2 = new StringBuffer("");
            stringBuffer2.append("match p=(:");
            stringBuffer2.append(nodeType);
            stringBuffer2.append("{");
            stringBuffer2.append("鍚嶇О:");
            stringBuffer2.append("\"");
            stringBuffer2.append(nodeName);
            stringBuffer2.append("\"");
            stringBuffer2.append("}");
            stringBuffer2.append(")");
            stringBuffer2.append("-[*..1]-() return p");

            cypher = stringBuffer2.toString();

            //鍏堟竻绌猴紝鍐嶅皢cypher璇彞鍔犲叆鍒癝ystemInfo涓�

        }
        Systeminfo.clearAll();
        Systeminfo.addCypher(cypher);
//System.out.println(cypher);


        StringBuffer relationBuffer = Neo4jRestAPI.executeFindRelationCypher(cypher);
        StringBuffer relationNodesBuffer = Neo4jRestAPI.executeFindRelationNodesCypher(cypher);
        ToJson toJson = new ToJson(relationNodesBuffer,relationBuffer);
        //toJson.writeJson();
//System.out.println(toJson.getJson());

        return toJson.getJson();
    }
    //閽堝鐨勬槸澶氭潯鏌ヨ璇彞
    public String lookIntos(ArrayList<String> cypherArrayList){
        String cypher = "";

        StringBuffer relationBuffer = Neo4jRestAPI.executeFindRelationCyphers(cypherArrayList);
        StringBuffer relationNodesBuffer = Neo4jRestAPI.executeFindRelationNodesCyphers(cypherArrayList);
        ToJson toJson = new ToJson(relationNodesBuffer,relationBuffer);

        //toJson.writeJson();

        return toJson.getJson();
    }

}
