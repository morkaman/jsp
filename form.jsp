<%--
  Created by IntelliJ IDEA.
  User: MADCAT
  Date: 25.6.2019
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link href="assets/css/bootstrap-colorpicker.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
    <title>formular</title>
</head>
<body>
<div class="container">
    <form role="form" method="post" action="spracuj.jsp" id="formular">
        <div class="form-group">
            <label for="name">meno:</label>
            <input type="text" class="form-control" name="name" id="name">
        </div>
        <div class="form-group">
            <label for="iban">IBAN:</label>
            <input type="text" class="form-control" name="iban" id="iban">
        </div>
        <div class="form-group">
            <label for="suma">cena:</label>
            <input type="number" class="form-control" name="suma" id="suma">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>

<script>
   $("#formular").validate({
       rules:{
           name:{
               required: true,
               rangelength:[1,20]
           },
           iban:{
               required: true,
               rangelength:[20,20]
           },
           suma:{
               required: true,
               rangelenght:[1,20]
           }
       },
       messages:{
           name:{
               required:"ahoj",
               rangelength:"dlzka 20"
           },
           iban:{
               required:"iban 20",
               rangelength:"dlzka presne 20"
           },
           suma:{
               required:"zadaj sumu",
               rangelenght:"min 1 max 20"
           }
       }
   });

</script>

</body>
</html>
