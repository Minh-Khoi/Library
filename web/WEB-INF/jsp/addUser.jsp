<%-- 
    Document   : AddUser
    Created on : Jun 17, 2019, 1:19:01 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
            <link rel="stylesheet" href="./css/add/small.css">

<body>

    <form action="" style="border:1px solid #ccc">
        <div class="container">
            <h1>ADD USER</h1>
            <hr>

            <label ><b>NAME</b></label>
            <input type="text" placeholder="Enter "  required>

            <label ><b>FAMILY 'S NAME</b></label>
            <input type="text" placeholder="Enter "  required>

            <label ><b>Birthday</b></label>
            <input type="text" placeholder="Enter "  required>

            <label ><b>phoneNumber</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>Citizen ID or Passport</b></label>
            <input type="number" placeholder="Enter "  required>

            <label ><b>Andress</b></label>
            <input type="text" placeholder="Enter "  required>
            
            <label ><b>Password</b></label>
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
    </form>

</body>
</html>
