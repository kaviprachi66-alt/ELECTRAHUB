<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ELECTRAHUB.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="icon" href="Images/A.png" type="Images/A.png" />
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: white;
            padding: 40px 35px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
            width: 380px;
        }

        h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 25px;
            text-decoration:underline;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            outline: none;
        }

        input[type=text]:focus, input[type=password]:focus {
            border-color: #007bff;
        }

        .btn {
            width: 100%;
            background: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }
         .msg {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        .back {
            text-align: center;
            margin-top: 15px;
        }

        .back a {
            text-decoration: none;
            color: #0052D4;
        }

        .back a:hover {
            text-decoration: underline;
        }
         .footer {
     background: #001F3F;
     text-align: center;
     position:fixed;
     bottom: 0px;
     width:100%;
     padding: 26px;
     color: white;
     font-size: 14px;
     
 }

  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
           <h2>🔐 Admin Login</h2>
            <label>Username</label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username"></asp:TextBox>
           <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
              <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Login" OnClick="btnLogin_Click"  />       
            <asp:Label ID="Lblmsg" runat="server" CssClass="msg"></asp:Label>
            <div class="back">
              <a href="VotePage.aspx" style="text-decoration:underline;">🏠 Back to Home</a>
            </div>

        </div>
             
    </form>
                    <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
</body>
</html>
