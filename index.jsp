<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: MADCAT
  Date: 25.6.2019
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <%@ page contentType="text/html;charset=UTF-8" language="java" %>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
      <link rel="stylesheet" type="text/css" href="assets/css/style.css">
      <link href="assets/css/bootstrap-colorpicker.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
      <title>$Title$</title>
  </head>
  <body>
  <%

  int den =3;

  if(den ==6 | den ==7){ %>
  <p>je vikend</p>
 <% }else{ %>
      <p>nie je vikend</p>
  <%
  }

  switch (den){
      case 1:  %> <p>pondelok </p> <%
      break;
          case 2: %> utorok<%
      break;
      case 3: %> <p>streda</p> <%
       break;
       default:%>  <p>je den</p><%
  }

    int velkost;

  for (velkost =1; velkost <=3; velkost++){
  out.println("ahoj");
  }

      java.util.Date date = new java.util.Date();
      out.println( String.valueOf( date ));


  %>
<table>
    <tr>
        <%
            for (int i =1; i <=10; i++){
                %>
                    <td>a</td>
                <%
            }
            %>
    </tr>
</table>

  <table>
      <%
          for (int i =1; i <5; i++){
      %>
      <tr>
          <% for (int x =1; x<4; x++){
          %> <td>a</td><%
          }%>


      </tr>
      <%
          }
      %>
  </table>
<%
    String[] pole_s = new String [4];
    for (int i =0; i<4; i++){
        pole_s[i] = String.valueOf(i);
        out.println(pole_s[i]);
    }

  %>
  <br>
  <%
int[] pole_o = new int[10];
    for (int o = 0; o<pole_o.length; o++){
        pole_o[o] = o;
        out.println(pole_o[o]);
    }
  %>
  <br>
  <%


 int[] pole_u = {10,20,30,40,50};
    for (int u =0; u< pole_u.length; u++){
        out.println(pole_u[u]);
    }
  %>
  <br>
  <%
      int[][] double_array = {{1,2,3},{4,5,6}};
      for (int i=0;i <double_array.length; i++){
          for (int j = 0; j< double_array[i].length; j++){
              out.println("<p>");
              out.println(double_array[i][j]);
              out.println("</p>");
          }
      }

  %>
  <br>
  <hr>
  <%
    int[][] double_array2 = new int[10][5];
    for (int i =0; i<double_array2.length; i++){
        out.println("<p>");
        for (int j =0; j<double_array2[i].length;j++){
            double_array2[i][j]=i+j;
            out.println(double_array2[i][j]);
        }
        out.println("</p>");
    }

  %>
  <br>
  <hr>
  <%
      ArrayList al = new ArrayList();

      al.add("A");
      al.add("B");
      al.add("C");
      al.add("1");

      out.println(al);
      out.println(al.get(1));
      out.println(al.indexOf("B"));
      al.remove(2);
      out.println(al);

      al.add(5);
      out.println(al);
      al.set(0,"AHOJ");
      out.print(al);

  %>
  <br>
  <hr>
  <%

      ArrayList<String> stringList = new ArrayList<String>();
      stringList.add("a");
      stringList.add("b");
      out.println(stringList);
  %>
  <br>
  <hr>
  <%
      HashMap hasmapa = new HashMap();
      hasmapa.put(1,"jedna");
      hasmapa.put(2, "dva");
      hasmapa.put(10,"desat");

      out.println("<p>"+ hasmapa.get(10)+"</p>");
      hasmapa.remove(2);
      out.println("<p>"+ hasmapa.get(2));
  %>
  <br>
  <hr>
  <%

      HashMap hm = new HashMap();
      hm.put(1,"jedna");
      hm.put(2,"dva");
      hm.put(5,"pat");

      Iterator iterator = hm.keySet().iterator();
      while (iterator.hasNext()) {
          Integer kluc = (Integer) iterator.next();
          out.println("<p> kluc je: " + kluc + " hodnota v hashmape je:" + hm.get(kluc) + "</p>");
      }
  %>
  <br>
  <hr>
  <%

      HashMap<String,String > string_hash = new HashMap<String, String>();
      string_hash.put("a","zaciatok");
      string_hash.put("z","koniec");
      Iterator i = string_hash.keySet().iterator();

      while (i.hasNext()){
          String kluc2 = (String)i.next();
          out.println("<p> kluc je "+ kluc2 + " hodnota je "+ string_hash.get(kluc2)+ "</p>");
      }

%>










  </body>
</html>
