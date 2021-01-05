package model2;

import  api.Neo4jRestAPI;

import java.util.Map;

public class NodeBeanDBA {

    public void addNode(String nodeType,String[] nodeAttributesName,String[][] nodeAttributesValue){
        for(int index = 0;index<nodeAttributesValue.length;index++){
            String cypher = "";
            StringBuffer stringBuffer = new StringBuffer("");
            stringBuffer.append("merge (:");
            stringBuffer.append(nodeType);//鑺傜偣绫诲瀷
            stringBuffer.append("{");//寮�濮嬫坊鍔犺妭鐐瑰睘鎬�
            int i = 0;
            for(i = 0;i<nodeAttributesName.length-1;i++){
                stringBuffer.append(nodeAttributesName[i]);
                stringBuffer.append(":");
                stringBuffer.append("\"");
                stringBuffer.append(nodeAttributesValue[index][i]);
                stringBuffer.append("\",");
            }
            //褰撴坊鍔犳渶鍚庝竴涓睘鎬ф椂闇�瑕佸仛鐗规畩澶勭悊
            stringBuffer.append(nodeAttributesName[i]);
            stringBuffer.append(":");
            stringBuffer.append("\"");
            stringBuffer.append(nodeAttributesValue[index][i]);
            stringBuffer.append("\"");
            stringBuffer.append("})");
            //涓�鏉ypher璇彞鎷兼帴瀹屾垚
            cypher = stringBuffer.toString();
            //鎵ц
            Neo4jRestAPI.executeCypher(cypher);
        }
    }

    //杩欓噷鏄拡瀵癸紙sdu.zehuape@qq.com锛夋墍鍐欑殑涓�涓柟娉�,杩欐牱鐨勮瘽锛屽舰鍙備竴涓氨鍙互浜�
    //鏍囧噯鏍煎紡match (n:XXX{xxx:"yyy"}) return n;
    public Map<String,String> getNodeAttrs(String nodeType){
        Map<String,String> node_AttrKey_AttrValue_Map = null;

        String cypher = "";
        StringBuffer stringBuffer= new StringBuffer();
        stringBuffer.append("match (n:");
        stringBuffer.append(nodeType);
        stringBuffer.append("{");
        stringBuffer.append("hello1");
        stringBuffer.append(":");
        stringBuffer.append("\"");
        stringBuffer.append("hello2");
        stringBuffer.append("\"");
        stringBuffer.append("}) ");
        stringBuffer.append("return n");

        cypher = stringBuffer.toString();
        //鎵ц
        node_AttrKey_AttrValue_Map = Neo4jRestAPI.executeFindNodeCypher(cypher);
        return node_AttrKey_AttrValue_Map;
    }

    /*
    public void deleteNode(String nodeType,String[] nodeAttributesName,String[] nodeAttributesValue){
        String cypher = "";
        StringBuffer stringBuffer = new StringBuffer("");
        stringBuffer.append("match (n:");
        stringBuffer.append(nodeType);//鑺傜偣绫诲瀷
        stringBuffer.append("{");//寮�濮嬫坊鍔犺妭鐐瑰睘鎬�
        int i = 0;
        for(i = 0;i<nodeAttributesName.length-1;i++){
            stringBuffer.append(nodeAttributesName[i]);
            stringBuffer.append(":");
            stringBuffer.append("\"");
            stringBuffer.append(nodeAttributesValue[i]);
            stringBuffer.append("\",");
        }
        //褰撴坊鍔犳渶鍚庝竴涓睘鎬ф椂闇�瑕佸仛鐗规畩澶勭悊
        stringBuffer.append(nodeAttributesName[i]);
        stringBuffer.append(":");
        stringBuffer.append("\"");
        stringBuffer.append(nodeAttributesValue[i]);
        stringBuffer.append("\"");
        stringBuffer.append("})");
        stringBuffer.append("delete n");
        //涓�鏉ypher璇彞鎷兼帴瀹屾垚
        cypher = stringBuffer.toString();
        //鎵ц
        Neo4jRestAPI.executeCypher(cypher);
    }*/

}
