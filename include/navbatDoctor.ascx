<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbatDoctor.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

    <link href="../admin/style/bootstrap.bundle.min.js" rel="stylesheet"/>
    <link href="../admin/style/DataTable.css" rel="stylesheet"/>
    <link href="../style/css/custom.css" rel="stylesheet"/>
	
	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>


</head>
<body>
    
    <div>
      
    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-drak" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">
                                
                                
                           <!-- FEEDBACK Start -->
                            

                             <div class="sb-sidenav-menu-heading">FEEDBACK</div>
                            <a class="nav-link" href="../doctor/ViewFeedback.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                View Feedback</a
                            >

                            <!-- FEEDBACK End -->

                            <!-- PROFILE Start -->

                            <div class="sb-sidenav-menu-heading">PROFILE</div>
                            <a class="nav-link" href="../doctor/ManageDoctorsProfile.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                View</a
                            >
                            <!-- PROFILE End -->

                                <!-- Edit Start -->

                            <div class="sb-sidenav-menu-heading">PROFILE EDIT</div>
                            <a class="nav-link" href="../doctor/ManageDoctor.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Edit</a
                            >
                            <!-- Edit End -->
                                <br />
                                <br />

                                <br />

                                <br />

                                <br />
                                <br />



                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click"></asp:Button>
                        <div class="small">DOCTOR PANEL</div>
                        ROYAL HOSPITAL
                    </div>
                </nav>
            </div>
    </div>
  
</body>
</html>
