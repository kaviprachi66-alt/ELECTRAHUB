<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidatelist.aspx.cs" Inherits="ELECTRAHUB.Candidatelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb);
            margin: 0;
            padding: 0;
        }

        .header {
            background: linear-gradient(90deg, #2b5876, #4e4376);
            color: white;
            text-align: center;
            padding: 25px;
            font-size: 32px;
            letter-spacing: 1px;
            font-weight: 600;
            text-transform: uppercase;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }
        .header p{
            color:white;
        }

        .main-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 40px;
            margin-top:100px
        }
        
        .candidate-card {
            background: white;
            width: 280px;
            border-radius: 18px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.25);
            overflow: hidden;
            text-align: center;
            padding-bottom: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .candidate-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.35);
        }

        .candidate-card img.candidate-photo {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .symbol {
            width: 60px;
            height: 60px;
            margin-top: 10px;
        }
          h3 {
            color: #333;
            font-size: 20px;
            margin: 10px 0 5px 0;
        }

        p {
            color: #555;
            font-size: 15px;
            margin: 5px 0;
        }

        .vote-section {
            text-align: center;
            margin-top: 30px;
            margin-bottom:30px
        }
                .btn-vote {
            background: #4e4376;
            color: white;
            font-size: 18px;
            padding: 12px 30px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-vote:hover {
            background: #2b5876;
            transform: scale(1.05);
        }

        .footer {
             background: #001F3F;
             text-align: center;
             padding: 15px;
             color: white;
             font-size: 14px;
        }

        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
                align-items: center;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
           🗳️ Electra Hub  
            <p style="margin-left:50px;">Vote Your Leader</p>
        </div>
       <div class="main-container">

            <!-- 🧾 Candidate 1 -->
            <div class="candidate-card">
                <img src="Images/candidate1.jpeg" alt="Candidate 1" class="candidate-photo" />
                <h3>Rajesh Kumar Singh</h3>
                <p>Party: Bhartiya Janta Party</p>
                <img src="Images/symbol1.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate1" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 2 -->
            <div class="candidate-card">
                <img src="Images/candidate2.jpeg" alt="Candidate 2" class="candidate-photo" />
                <h3>Ajit Pawar</h3>
                <p>Party: Nationalist Congress Party</p>
                <img src="Images/S2.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate2" runat="server" GroupName="Candidates" />
            </div>
            <!-- 🧾 Candidate 3 -->
            <div class="candidate-card">
                <img src="Images/candidate3.jpeg" alt="Candidate 3" class="candidate-photo" />
                <h3>Rahul Gandhi</h3>
                <p>Party: Indian National Congresss</p>
                <img src="Images/S3.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate3" runat="server" GroupName="Candidates" />
            </div>
            <!-- 🧾 Candidate 4 -->
            <div class="candidate-card">
                <img src="Images/candidate4.jpeg" alt="Candidate 4" class="candidate-photo" />
                <h3>Suresh Menon</h3>
                <p>Party: Communist Party of India</p>
                <img src="Images/symbol4.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate4" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 5 -->
            <div class="candidate-card">
                <img src="Images/candidate5.jpeg" alt="Candidate 5" class="candidate-photo" />
                <h3>Mayawati Prabhu Das</h3>
                <p>Party: Bahujan Samaj Party</p>
                <img src="Images/symbol5.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate5" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 6 -->
            <div class="candidate-card">
                <img src="Images/candidate6.jpeg" alt="Candidate 6" class="candidate-photo" />
                <h3>Raghav Chadha</h3>
                <p>Party: Aam Aadmi Party</p>
                <img src="Images/symbol6.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate6" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 7 -->
            <div class="candidate-card">
                <img src="Images/candidate7.jpeg" alt="Candidate 7" class="candidate-photo" />
                <h3>Nitish Kumar</h3>
                <p>Party: Janta Dal</p>
                <img src="Images/symbol7.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate7" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 8 -->
            <div class="candidate-card">
                <img src="Images/candidate8.jpeg" alt="Candidate 8" class="candidate-photo" />
                <h3>Amit Deshmukh</h3>
                <p>Party: Shivsena</p>
                <img src="Images/symbol8.png" alt="Party Symbol" class="symbol" />
                <br />
                <asp:RadioButton ID="rbCandidate8" runat="server" GroupName="Candidates" />
            </div>

            <!-- 🧾 Candidate 9 -->
             <div class="candidate-card">
            <img src="Images/candidate9.jpeg" alt="Candidate 9" class="candidate-photo" />
            <h3>Dimple Yadav</h3>
            <p>Part: Samajwadi Party</p>
           <img src="Images/symbol9.png" alt="Party Symbol" class="symbol" />
           <br />
          <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Candidates" />
         </div>

            <!-- 🧾 Candidate 10 -->
          <div class="candidate-card">
         <img src="Images/candidate10.jpeg" alt="Candidate 10" class="candidate-photo" />
         <h3>Chirag Paswan</h3>
         <p>Party: Lok Jan Shakti Party</p>
         <img src="Images/symbol10.jpg" alt="Party Symbol" class="symbol" />
         <br />
         <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Candidates" />
         </div>
        </div>

        <!-- Vote Now Button -->
        <div class="vote-section">
            <asp:Button ID="btnVote" runat="server" Text="🗳 Vote Now" CssClass="btn-vote" OnClick="btnVote_Click" />
        </div>

        <div class="footer">
            © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
        </div>


    </form>
</body>
</html>
