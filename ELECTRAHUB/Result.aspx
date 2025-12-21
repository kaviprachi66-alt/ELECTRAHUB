<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="ELECTRAHUB.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voting Result</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 20px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }
          h2 {
            text-align: center;
            color: #333;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .table th {
            background: #4d4dff;
            color: white;
            padding: 12px;
            font-size: 18px;
        }
         .table td {
            padding: 10px;
            text-align: center;
            font-size: 16px;
            color: #333;
            border-bottom: 1px solid #ddd;
        }

        .table tr:hover {
            background: #f2f2ff;
        }

        .symbol-img {
            height: 50px;
            width: 50px;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>📊 Election Voting Result</h2>

            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" >
                <Columns>

                    <asp:BoundField DataField="CandidateName" HeaderText="Candidate Name" />

                    <asp:BoundField DataField="PartyName" HeaderText="Party Name" />

                    <asp:BoundField DataField="TotalVotes" HeaderText="Total Votes" />

                </Columns>
            </asp:GridView>
            <a href="AdminDashboard.aspx" class="backBtn" style="margin-left:350px; margin-top:16px;">🏠 Back to AdminDashboard</a>
        </div>
    </form>
</body>
</html>
