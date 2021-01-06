package controller;

import model2.RelationshipBeanDBA;
import systemInfo.Systeminfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "DisplayController")
public class DisplayController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //杩欏彞璇濆彲浠ヨВ鍐充粠jsp椤甸潰鎺ュ彈鍒颁腑鏂囦贡鐮侀棶棰�
    	System.out.println("hello");
        request.setCharacterEncoding("utf-8");

        response.setContentType("text/html; charset=utf-8");

        PrintWriter out  = response.getWriter();

     
        String keyword = request.getParameter("keyword");
        System.out.println("hello");
        System.out.println(keyword);
      //  String times = request.getParameter("times");//鍒ゆ柇杩欐鎿嶄綔鏄敤鎴风偣鍑绘煡璇㈡寜閽繕鏄弻鍑昏妭鐐�
        

//        String nodeType = "";
//        String nodeName = "";
//
//       
//        nodeName  = keyword;
//
//        String json = "";
//        RelationshipBeanDBA relationshipBeanDBA = new RelationshipBeanDBA();
//        //鐢ㄦ埛鐐瑰嚮鐨勬槸鏌ヨ鎸夐挳锛�
//        if(times.equals("first")){
//            //杩欓噷闇�瑕佺壒鍒敞鎰忥紒锛侊紝鍥犱负鏇存崲浜嗘湇鍔″櫒tomcat->neo4j锛屾墍浠ヤ細鎶�500閿欒锛�
//            //瑙ｅ喅鍔炴硶锛氬皢neo4j鐨勯┍鍔ㄥ寘锛屾嫹鍒癹re涓璴ib鐨別xt鐩綍涓�
//            json = relationshipBeanDBA.lookInto(nodeType,nodeName);
//        }
//        //鐢ㄦ埛鍙屽嚮浜嗚妭鐐癸紒
//        else{
//            //鎵ц鏂扮殑鏌ヨ鏂规硶锛堝厑璁稿鏉℃煡璇㈣鍙ヨ鍙ュ悓鏃惰繘琛岋級
//            //鍏堝皢璇彞鍔犲叆鍒癝ystemInfo涓紝鐒跺悗鍦ㄥ緱鍒板叏閮ㄧ殑鏌ヨ璇彞
//            String cypher = "";
//
//            StringBuffer stringBuffer = new StringBuffer("");
//            stringBuffer.append("match p=(:");
//            stringBuffer.append(nodeType);
//            stringBuffer.append("{");
//            stringBuffer.append("鍚嶇О:");
//            stringBuffer.append("\"");
//            stringBuffer.append(nodeName);
//            stringBuffer.append("\"");
//            stringBuffer.append("}");
//            stringBuffer.append(")");
//            stringBuffer.append("-[*..1]-() return p");
//
//            cypher = stringBuffer.toString();
//
//            Systeminfo.addCypher(cypher);
//
//            //寰楀埌鎵�鏈夌殑鏌ヨ璇彞
//            ArrayList<String> cypherArrayList = Systeminfo.getCypherArrayList();
//
//            /*for(int i = 0;i<cypherArrayList.size();i++){
//                System.out.println(cypherArrayList.get(i));
//            }*/
//
//            json = relationshipBeanDBA.lookIntos(cypherArrayList);
//        }
//        out.write(json);
    }
}
