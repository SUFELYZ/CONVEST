package controller;

import model2.NodeBeanDBA;
import model2.RelationshipBeanDBA;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "AddNodeController1")

//涓轰簡浣胯妭鐐规垨鑰呭叧绯荤殑灞炴�т笉鐢ㄧ敤鎴疯緭鍏ワ紝鎴戜滑瑙勫畾鍦ㄦ柊寤轰竴涓妭鐐� 绫诲埆锛屾垨鑰呭叧绯荤被鍒殑鏃跺��
//閮藉繀椤诲姞鍏ヤ竴涓睘鎬у悕涓猴紙鍚嶇О锛夛紝鍊间负锛坰du.zehuape@qq.com锛夛紝涓斿叾浠栧睘鎬у悕鐨勫�奸兘涓虹┖锛堜笉涓虹┖涔熷彲浠ワ紝鍙嶆闅忎究锛�;
//涓嶇鏄妭鐐圭被鍨嬭繕鏄叧绯荤被鍨嬶紝閮借繖鏍峰鐞�
//浠ュ悗锛佹瘡娆℃坊鍔犳柊鐨勪笢瑗匡紙鍏崇郴鎴栬�呰妭鐐癸級锛岄兘浜嬪厛鏌ュ嚭瀵瑰簲鐨勫睘鎬ч泦鍚�
//鑰� 鏈夋柊澧炲睘鎬х殑鏃跺�欙紝鍊间负锛坉u.zehuape@qq.com锛夌殑蹇呴』鍚屾鏇存柊
//鑰屽鏋滅敱鏂扮殑鑺傜偣绫诲瀷琚姞鍏ワ紝杩欒姹傚己鍒舵�ф敞鍐岋紙鍗筹紝鏇存柊AdminInfo锛夛紒锛�
public class AddNodeController1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String flag = request.getParameter("flag");
        HttpSession session = request.getSession();
        session.setAttribute("flag",flag);


        if(flag.equals("addNode")){
            NodeBeanDBA nodeBeanDBA = new NodeBeanDBA();

            String nodeType = request.getParameter("nodeType");
            //寰楀埌浜嗚妭鐐圭被鍨嬶紝鍘绘煡璇㈣鑺傜偣绫诲瀷涓紝鍚嶇О涓猴紙sdu.zehuape@qq.com锛夌殑鑺傜偣
            //寰楀埌灞炴�ч泦鍚�
            Map<String,String> node_AttrKey_AttrValue_Map =
                    nodeBeanDBA.getNodeAttrs(nodeType);
            //鍒╃敤session浼犻�掑璞�
            session.setAttribute("node_AttrKey_AttrValue_Map",node_AttrKey_AttrValue_Map);

            session.setAttribute("nodeType",nodeType);
            String welcome = "娆㈣繋鏉ュ埌娣诲姞 ("+nodeType+") 鑺傜偣鐨勭晫闈�";
            request.getRequestDispatcher("inputInfo.jsp?welcome="+welcome).forward(request,response);
        }
        else if(flag.equals("addRel")){
            RelationshipBeanDBA relationshipBeanDBA = new RelationshipBeanDBA();

            String fromNodeType = request.getParameter("fromNodeType");
            String relType = request.getParameter("relType");
            String toNodeType = request.getParameter("toNodeType");

            //寰楀埌浜嗗叧绯荤被鍨嬬殑鍚嶇О锛屽幓鏌ヨname涓猴紙鍦╯du.zehuape@qq.com锛夌殑鍏崇郴鐨勬墍鏈夊睘鎬�
            Map<String,String> relation_AttrKey_AttrValue_Map =
                    relationshipBeanDBA.getRelAttrs(relType);
            //鍒╃敤session浼犻�掑璞�
            session.setAttribute("relation_AttrKey_AttrValue_Map",relation_AttrKey_AttrValue_Map);

            session.setAttribute("fromNodeType",fromNodeType);
            session.setAttribute("relType",relType);
            session.setAttribute("toNodeType",toNodeType);

            String welcome = "娆㈣繋鏉ュ埌娣诲姞 ("+fromNodeType+")"+"-["+relType+"]-"+"("+toNodeType+") 鑺傜偣鐨勭晫闈�";
            request.getRequestDispatcher("inputInfo.jsp?welcome="+welcome).forward(request,response);
        }

    }
}
