<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="ELECTRAHUB.AdminDashboard" %>

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

/* Top Navbar/Header */
.header {
    background: linear-gradient(90deg, #001F3F, #00B8D4);
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
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 30px;
    padding: 60px 40px;
    }
/* Each card */
.card {
    width: 160px;
    height: 95px;
    background: white;
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.25);
    text-align: center;
    padding: 30px 20px;
    margin-top:150px;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 12px 30px rgba(0,0,0,0.35);
}

.card h3 {
    color: #333;
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
    color: #4e4376;
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
      background:#001F3F;
      text-align: center;
      padding: 25px;
      color: #fff;
      font-size: 14px;
      margin-top: 180px;
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
  📋 ELECTION ADMINISTRATION PORTAL
  <p style="font-size:20px">Manage Candidate,Voters & Election Data Seamlessly</p>
 </div>
                <div class="dashboard">
              <a href="CandidateRegistration.aspx" style="text-decoration:none;">
       <div class="card">
           <div class="card-icon">🧾</div>
           <h3>Candidate Registration</h3> 
           <a href="CandidateRegistration.aspx">
       </div>
        </a>
   
   <a href="VoteRegistration.aspx" style="text-decoration:none;">
       <div class="card">
           <div class="card-icon">🗂️</div>
           <h3>Voter Registration</h3> 
           <a href="VoteRegistration.aspx">
       </div>
       </a>
        <a href="Result.aspx" style="text-decoration:none;">
        <div class="card">
                <div class="card-icon">📊</div>
                <h3>View Voting Result </h3>
            <a href="Result.aspx">
            </div>
            </a>
        
        </div>
                <div class="footer">
    © 2025 Electra Hub | Developed by <b>Prachi Kumari</b>
</div>
    </form>
</body>
</html>
