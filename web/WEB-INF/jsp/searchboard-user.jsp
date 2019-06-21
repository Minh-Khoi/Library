<%-- 
    Document   : searchboard-user
    Created on : Jun 16, 2019, 10:05:37 PM
    Author     : USER
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Library</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/mobile.css">
    </head>
    <body>
        <div class="menu-img">
            <img src="image/wooden.png" alt="" >
            
        </div>
        <div class="logo-bgr">
            <h1>Welcome to Library</h1>
            <hr>
        </div>
        <div class="main">

            <!--Table for User-->
            <div class="user_area">
                <h2>
                    Search User 
                </h2>

                <input type="text" id="myInput" onkeyup="myFunction2()" placeholder="Search for names..">
                <table id="myTable">
                    <tr class="header">
                        <th style="width:10%;">Code</th>
                        <th style="width:90%;">User</th>
                    </tr>
                    
                    <c:forEach var="us" items="${list}">
                        <tr>
                            <td>${us.userID}</td>
                            <td>${us.userSirName} &nbsp; ${us.userName}</td>
                        </tr>
                    </c:forEach>
                    
                    <!--<tr>
                        <td>2</td>
                        <td>Minh Khoi Is AWESOME</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Hiuy Phong Is AWESOME</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Minh Khoi Is AWESOME</td>
                    </tr>            -->    
                </table>
                
                <a href=""><button style="display: ${display}">Add user</button></a>
                <a href=""><button style="display: ${display}" >Update user</button></a>
                <a href="<%= request.getContextPath()%>/listbook/${usingUser.userID}.html">
                    <button  type="button" >Board of books</button>
                </a>
            </div>

        </div>
    <script src="<%= request.getContextPath()%>/javascript/main.js"></script>
    </body>
</html>
