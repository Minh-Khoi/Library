<%-- 
    Document   : searchboard-deal
    Created on : Jun 17, 2019, 1:17:53 PM
    Author     : USER
--%>

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
           
            <!--Table for Deal-->
            <div class="deal_area">
                <h2>
                    Search Deal 
                </h2>

                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
                <table id="myTable">
                    <tr class="header">
                        <th style="width:10%;">Code</th>
                        <th style="width:10%;">User ID</th>
                        <th style="width:10%;">Book ID</th>
                        <th style="width:35%;">Date Of Borrowing</th>
                        <th style="width:35%;">Date Of Returning</th>
                    </tr>
                    
                    <c:forEach var="deal" items="${list}">
                        <tr>
                            <td>${deal.dealID}</td>
                            <td>${deal.userID} </td>
                            <td>${deal.bookID} </td>
                            <td>${deal.borrowDay} </td>
                            <td>${deal.returnDay} </td>
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
                    </tr>                -->
    
                </table>
                <a href=""><button style="display: ${display}">Add user</button></a>
                <a href=""><button style="display: ${display}">Update user</button></a>

            </div>

        </div>
        <script src="<%= request.getContextPath()%>/javascript/main.js"></script>
    </body>
</html>
