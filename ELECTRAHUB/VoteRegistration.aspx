<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VoteRegistration.aspx.cs" Inherits="ELECTRAHUB.VoteRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vote Registration</title>
    <style>
        body { 
            font-family: Arial;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb); 

        }
        .container {
            width: 450px; 
            margin: 70px auto;
            background: #fff; 
            padding: 20px;
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }
        h2 { 
            text-align: center;
            color: #003366;
            text-decoration:underline;
        }
        table {
            width: 100%;
        }
        td {
            padding: 8px; 
        }
        input, select { 
            width: 100%;
            padding: 6px;
        }
        .btn { 
            background: #0078D7; 
            color: white; 
            border: none; 
            padding: 8px;
            border-radius: 5px;
        }
         .footer {
     background: #001F3F;
     text-align: center;
     padding: 26px;
     color: white;
     font-size: 14px;
     width:100%;
 }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>📩 Voter Registration</h2>
            <table>
                <tr>
                    <td>Electror's Name:</td><td ><asp:TextBox ID="txtElectorName" runat="server" /></td></tr>
                <tr><td>Date Of Birth:</td><td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" /></td></tr>
                <tr><td>Gender:</td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Text="Select" Value="" />
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female" />
                            <asp:ListItem Text="Other" />
                        </asp:DropDownList>
                    </td>
                </tr>
                        <tr>
                            <td>Father's Name:</td><td><asp:TextBox ID="txtFather" runat="server" /></td></tr>
                <tr><td>Nationality:</td><td>
                    <asp:DropDownList ID="ddlNationality" runat="server">
                        <asp:ListItem Text="Select" Value="" />
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>Nom-Resident Indian(NRI)</asp:ListItem>
                        <asp:ListItem>Overseas Citizen Of India(OCI)</asp:ListItem>
                        <asp:ListItem>Foreign National</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    </td></tr>
                <tr><td>Contact:</td><td><asp:TextBox ID="txtContact" runat="server" TextMode="Phone" /></td></tr>
                <tr><td>State:</td><td>
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem Text="Select" Value="" />
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Chhattishgarh</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Maharasthra</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Jammu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>Himachal</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                    </asp:DropDownList>
                    </td>

                </tr>
                <tr><td>Address:</td><td><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" /></td></tr>
                <tr>
               <td colspan="2" align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label></td>
                </tr>
            </table>
            <a href="AdminDashboard.aspx" class="backBtn" style="margin-left:130px;">🏠 Back to AdminDashboard</a>
        </div>
                <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
    </form>
</body>
</html>
