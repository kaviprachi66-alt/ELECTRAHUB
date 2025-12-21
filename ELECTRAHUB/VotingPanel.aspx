<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VotingPanel.aspx.cs" Inherits="ELECTRAHUB.VotingPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .verify-box {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 0px 25px rgba(0,0,0,0.2);
            text-align: center;
            width: 350px;
        }

        .verify-box h2 {
            color: #003366;
            margin-bottom: 25px;
            text-decoration:underline;
        }
           .verify-box input[type="text"],
        .verify-box input[type="number"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
        }

        .verify-box .btn {
            background-color: #0066ff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .verify-box .btn:hover {
            background-color: #004bcc;
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
        <div class="verify-box">
            <h2>🪪 Voter Verification Portal</h2>

            <asp:Label ID="lblVoterNo" runat="server" Text="Enter Voter Card Number:"></asp:Label><br />
            <asp:TextBox ID="txtVoterNo" runat="server" Placeholder="VoterCardNumber"></asp:TextBox><br />


            <asp:Label ID="lblVoterID" runat="server" Text="Voter ID:"></asp:Label><br />
            <asp:TextBox ID="txtVoterID" runat="server" TextMode="Number" Placeholder="Enter Voter ID"></asp:TextBox><br />

            <asp:Button ID="btnVerify" runat="server" Text="Verify & Proceed" CssClass="btn" OnClick="btnVerify_Click" /><br />
            <a href="VotePage.aspx" class="backBtn"> 🏠 Back to Home</a>
        </div>
               
    </form>
                    <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
</body>
</html>
