<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VotePage.aspx.cs" Inherits="ELECTRAHUB.VotePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ElectraHUB</title>
    <link rel="shortcut Icon" href="Images/V.png" type="Images/V.png" />
    <style>
           body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #a8edea, #fed6e3);
            height:100%;
            margin: 0;
            padding: 0;
        }

        /* Top Navbar/Header */
        .header {
            background: linear-gradient(90deg, #0D4C92, #FF9933);
            color: #fff;
            padding: 25px 0;
            text-align: center;
            font-size: 36px;
            
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 2px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
        }

        /* Dashboard container */
        .dashboard {
            position:relative;
            background-image:url('Images/voteHome.jpg');
            background-size:cover;
            background-position:center;
            background-repeat:no-repeat;
            min-height:100vh;
            width:100%;
            display: flex;
            flex-direction:column;
            justify-content: center;
            align-items: flex-start;
            flex-wrap: wrap;
            gap: 30px;
            padding-left: 100px;
            box-sizing:border-box;
        }
        /* Each card */
        .card {
            width: 160px;
            height: 95px;
            background: #00B8D4;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.25);
            text-align: center;
            padding: 30px 20px;
            margin-bottom:30px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.35);
            border:4px solid #001F3F;
            background-color:deepskyblue;
        }

        .card h3 {
            color: #001F3F;
            font-size: 20px;
            margin-top: 15px;
        }

        .card-icon {
            font-size: 40px;
            color: #4e4376;
        }
          /* Admin Login Section */
        .login-section {
            margin: 50px auto;
            width: 400px;
            background: rgba(255,255,255,0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            text-align: center;
            display: none; /* Hidden until click */
        }

        .login-section.active {
            display: block;
        }

        .login-section h2 {
            color: #001F3F;
            margin-bottom: 20px;
        }

        .login-input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .btn {
            background: #4e4376;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #2b5876;
        }

        .footer {
            background: #001F3F;
            text-align: center;
            padding: 26px;
            color: white;
            font-size: 14px;
            
        }

        @media(max-width: 768px) {
            .dashboard {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
         ⚡ Electra Hub
         <p style="font-size:20px">Empowering Smart And Secure Voting</p>
        </div>
        <!-- 🧭 Dashboard Menu -->
        <div class="dashboard">
            <a href="AdminLogin.aspx" style="text-decoration:none;">
            <div class="card" onclick="showLogin()">
                <div class="card-icon">🔐</div>
                <h3>Admin Login</h3>
                <a href="AdminLogin.aspx"></a>
            </div>
            </a>



            <a href="VotingPanel.aspx" style="text-decoration:none;">
                <div class="card">
                    <div class="card-icon">🗳️</div>
                    <h3>Vote Now</h3>

                </div>
            </a>
           

        </div>
        <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>

    </form>
</body>
</html>
