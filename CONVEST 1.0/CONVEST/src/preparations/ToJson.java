package preparations;

import java.io.FileNotFoundException;

import java.io.FileOutputStream;

import java.io.IOException;



public class ToJson {



    private String json = "";



    //����ʽ���ڵ����ݺ͹�ϵ����ƴ�ճ�������json����

    public ToJson(StringBuffer relationNodesBuffer, StringBuffer relationBuffer){

        StringBuffer result = new StringBuffer("");

        result.append("{");

        result.append(relationNodesBuffer);

        result.append(",");

        result.append("\n");//����

        result.append(relationBuffer);

        result.append("}");



        json = result.toString();



    }



    //��json����д���ļ�

    public void writeJson(){

        try {

            FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\61988\\CONVEST\\CONVEST\\CONVEST 1.0\\CONVEST\\WebContent\\data1.json");

            fileOutputStream.write(json.getBytes());

            fileOutputStream.close();

        } catch (FileNotFoundException e) {

            e.printStackTrace();

        } catch (IOException e) {

            e.printStackTrace();

        }

    }



    //����������json����

    public String getJson(){

        return json;

    }



}
