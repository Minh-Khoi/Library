<%-- 
    Document   : AddBook
    Created on : Jun 17, 2019, 1:19:39 PM
    Author     : USER
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/css/add/small.css">
</head>
    
<body>
    
    <form:form cssStyle="border:1px solid #ccc" action="" method="POST" commandName="">
        <div class="container">
            <h1>ADD BOOK</h1>
            <hr>

            <label  ><b>NAME</b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b> AUTHOR </b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b>PUBLISHER</b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label  ><b>DAY OF PUBLISH</b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->

            <label ><b>QUANTITY</b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="number" placeholder="Enter "  required>-->

            <label ><b>POSITION</b></label>
            <form:input placeholder="Enter " path="" required="true"/>
            <!--<input type="text" placeholder="Enter "  required>-->
            
            
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
            <button type="reset" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">ADD</button>
            </div>
        </div>
        
    </form:form>
    
    
    <!--<form action="" style="border:1px solid #ccc">
        <div class="container">
            <h1>ADD BOOK</h1>
            <hr>

            <label  ><b>NAME</b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b> AUTHOR </b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b>PUBLISHER</b></label>
            <input type="text" placeholder="Enter "  required>

            <label  ><b>DAY OF PUBLISH</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>QUANTITY</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>POSITION</b></label>
            <input type="text" placeholder="Enter "  required>
            
            <label>
            <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
            </label>
            
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
            <button type="button" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">ADD</button>
            </div>
        </div>
    </form>-->

</body>

</html>
