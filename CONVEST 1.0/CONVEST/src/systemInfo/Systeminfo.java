package systemInfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

//1�����������û�ĳһϵ�в�����ѯ��������䣨���û�˫���˽ڵ㣩
//�����û�������������ʱ�����ཫ���±����û��Ĳ�ѯ�����Ĳ�ѯ��䣡
//2������໹����һ����ɫ����color[5]
// �������СΪ5 �Ѿ��㹻����Ϊ����չ�ָ��û��Ľڵ���𲻳���5��
//չ�ֵĲ�ͬ�Ľڵ����ò�ͬ����ɫ
//3������һ���ڵ�-��ɫ�Ķ�Ӧ��ϵ
public class Systeminfo {

    //���ڱ���ÿ���û��������ѯ��������в�ѯ��䣬����ʵ�֡�˫�����ڵ�󵯳���һ��
    public static ArrayList<String> cypherArrayList = new ArrayList<>();
    //Ĭ��Ϊ5����ɫ
    public static final String[] COLOR = {"blue","yellow","green","pink","purple"};
    //��һ����ɫ��һ�����͵Ľڵ��Ӧ����
    public static Map nodeType_Color = new HashMap();

    //���cypher���
    public static void addCypher(String... cyphers){
        int length = cyphers.length;

        for(int i = 0;i<length;i++){
            String cypher = cyphers[i];
            cypherArrayList.add(cypher);
        }
    }
    //���ر����cypher���
    public static ArrayList<String> getCypherArrayList(){
        return cypherArrayList;
    }
    //�������
    public static void clearAll(){
        cypherArrayList.clear();
        nodeType_Color.clear();
    }
    //������ɫ����
    public static String[] getColor(){
        return COLOR;
    }
    //��ӽڵ����ɫ��ӳ��
    public static void addNodeType_Color(String nodeType,String color){
        nodeType_Color.put(nodeType,color);
    }
    //���ؽڵ����ɫ��ӳ��
    public static Map<String,String> getNodeType_Color(){
        return nodeType_Color;
    }
    //�����Ѿ�������ɫ�Ľڵ㼯��
    public static Set<String> getNodeTypeKeys(){
        return nodeType_Color.keySet();
    }

}