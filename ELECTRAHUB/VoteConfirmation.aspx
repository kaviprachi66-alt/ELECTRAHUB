<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VoteConfirmation.aspx.cs" Inherits="ELECTRAHUB.VoteConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    background: linear-gradient(to right, #a1c4fd, #c2e9fb);
    color: #003366;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.thank-box {
    background: white;
    padding: 40px 50px;
    border-radius: 15px;
    text-align: center;
    backdrop-filter: blur(10px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.4);
    animation: fadeIn 1s ease-in;
}

.thank-box h1 {
    font-size: 38px;
    margin-bottom: 15px;
    font-weight: 700;
}


.btn {
    display: inline-block;
    padding: 12px 25px;
    background: #ffcc00;
    color: #000;
    text-decoration: none;
    font-weight: bold;
    border-radius: 8px;
    transition: 0.3s;
}
h1{
    text-decoration:underline;
}
/* Animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
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
        
        <div class="thank-box">
    <h1>✅ Thank You!</h1>
    <p>Your vote has been successfully recorded.<br>
       Your participation makes democracy stronger!</p>

    <a href="VotingPanel.aspx" class="btn">🏠 Back to Voter Verification</a>
</div>
         
    </form>
                    <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
</body>
</html>
