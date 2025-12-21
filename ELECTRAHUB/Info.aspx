<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="ELECTRAHUB.Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          body {
      font-family: 'Poppins', sans-serif;
     background: linear-gradient(135deg, #a8edea, #fed6e3);
     margin: 0;
     padding: 0;
            }
          .grid{
             background: linear-gradient(90deg, #001F3F, #00B8D4);
   color: #fff;
   padding: 20px 0;
   text-align: center;
   font-size: 30px;
   font-weight: 500;
   text-transform: uppercase;
   letter-spacing: 2px;
   box-shadow: 0 4px 12px rgba(0,0,0,0.3);  
          }
          .gridview-container{
                width: 480px;
            margin: 40px auto; 
            background: #fff;
            padding: 20px;
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
          }
           .footer {
     background: #001F3F;
     text-align: center;
     padding: 26px;
     color: white;
     font-size: 14px;
     
 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            
            <h2 style="text-align:center;"> 📇Candidate List for Voting</h2>
            
            </div>
         <div>
             
         </div>
        <div class="gridview-container">
            <asp:Label ID="L1" Text="Voter Card No:" runat="server"></asp:Label>
            <asp:Label ID="L2" runat="server" ForeColor="#3333CC"></asp:Label>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Candidate Name" />
        <asp:ImageField DataAlternateTextFormatString="cand" DataImageUrlField="CandidateImage" HeaderText="Candidate Image">
            <ControlStyle Height="50px" Width="50px" />
            <ItemStyle Height="50px" Width="50px" />
        </asp:ImageField>
        <asp:BoundField DataField="PartyName" HeaderText="Party Name" />
        <asp:ImageField DataImageUrlField="PartySymbol" HeaderText="Symbol">
            <ControlStyle Height="50px" Width="50px" />
            <ItemStyle Height="50px" Width="50px" />
        </asp:ImageField>
    </Columns>
</asp:GridView>
        </div>
                <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
    </form>
</body>
</html>


