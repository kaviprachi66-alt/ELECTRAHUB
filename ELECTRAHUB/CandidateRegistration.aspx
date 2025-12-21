
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateRegistration.aspx.cs" Inherits="ELECTRAHUB.CandidateRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
           body { 
               font-family: Arial; 
                  background: linear-gradient(to right, #a1c4fd, #c2e9fb);

           }
        .container {
            width: 480px;
            margin: 40px auto; 
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
            vertical-align: top;

        }
        input, select { 
            width: 100%;
            padding: 6px; 
            border: 1px solid #ccc;
            border-radius: 5px; 
        }
        .btn { 
            background: #0078D7;
            color: white; 
            border: none;
            padding: 8px 12px; 
            border-radius: 5px; 
            cursor: pointer; 
        }
        .btn:hover {
            background: #005ea6;
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
             <h2>👩🏻‍💼 Candidate Registration</h2>
            <table>
                <tr><td>Name:</td><td><asp:TextBox ID="txtName" runat="server" /></td></tr>
                <tr><td>Age:</td><td><asp:TextBox ID="txtAge" runat="server" TextMode="Number" /></td></tr>
                <tr>
                    <td>Gender:</td>
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
                         <td>Party Name:</td><td>
                         <asp:DropDownList ID="DropDownList1" runat="server">
                             <asp:ListItem Text="Select" Value="" />
                             <asp:ListItem>Bhartiya Janta Party(BJP)</asp:ListItem>
                             <asp:ListItem>Nationalist Congress Party(NCP)</asp:ListItem>
                             <asp:ListItem>Indian Nationalist Congress(INC)</asp:ListItem>
                             <asp:ListItem>Communist Party of India(CPI)</asp:ListItem>
                             <asp:ListItem>Rashtriya Janata Dal(RJD)</asp:ListItem>
                             <asp:ListItem>Aam Aadmi Party(AAP)</asp:ListItem>
                             <asp:ListItem>Janta Dal(JD(U))</asp:ListItem>
                             <asp:ListItem>Shivsena(SHS)</asp:ListItem>
                             <asp:ListItem>Samajwadi Party(SP)</asp:ListItem>
                             <asp:ListItem>Lok Jan Shakti Party(LGP)</asp:ListItem>
                         </asp:DropDownList>
                         </td></tr>
                <tr><td>Constituency:</td><td><asp:TextBox ID="txtConstituency" runat="server" /></td></tr>
                <tr><td>Contact:</td><td><asp:TextBox ID="txtContact" runat="server" TextMode="Phone" /></td></tr>
                <tr><td>Address:</td><td><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" /></td>
                </tr>
                       <tr>
                    <td>Party Symbol:</td>
                    <td><asp:FileUpload ID="fuPartySymbol" runat="server" /></td>
                </tr>
                <tr>
                    <td>Candidate Image:</td>
                    <td><asp:FileUpload ID="fuCandidateImage" runat="server" /></td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
                <tr>
                           <td colspan="2" align="center">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>

             <a href="AdminDashboard.aspx" class="backBtn" style="margin-left:140px;">🏠 Back to AdminDashboard</a>
        </div>
                <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
    </form>
</body>
</html>
