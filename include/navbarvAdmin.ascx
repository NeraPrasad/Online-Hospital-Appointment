<%@ Control Language="C#" AutoEventWireup="true" CodeFile="navbarvAdmin.ascx.cs" Inherits="include_navbar" %>

<html >
<head>
    <title></title>

    <link href="../admin/style/bootstrap.bundle.min.js" rel="stylesheet"/>
    <link href="../admin/style/DataTable.css" rel="stylesheet"/>

	<script src="../admin/style/bootstrap.bundle.min.js"></script>
    <script src="../admin/style/Chart.min.js"></script>
    <script src="../admin/style/font.js"></script>
    <script src="../admin/style/jquery-3.4.1.min.js"></script>
    <script src="../admin/style/scripts.js"></script>

    <style>
        .btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 5px 15px;
  font-size: 15px;
  cursor: pointer;
}
/* Red */
.btn {
  border-color: #680000;
  color: #680000;
  
}

.btn:hover {
  background: #680000;
  color: white;
}

.Name{
    border: 2px solid white;
}

    </style>
</head>
<body>
    <asp:Panel ID="pnlNav" runat="server"><div>
    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">
                                
                                 <asp:Label ID="lblHello" runat="server" Text="" CssClass="Name"></asp:Label></div>
                            
                            <a class="nav-link" href="Dashboard.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a>

                            <!-- APPOINTMENT Start -->
                            

                             <div class="sb-sidenav-menu-heading">APPOINTMENT</div>
                            <a class="nav-link" href="CheckAppointment.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Check</a
                            >

                            <!-- APPOINTMENT End -->

                            <!-- USER Start -->
                            <div class="sb-sidenav-menu-heading">USER</div>
                            <a class="nav-link" href="AddNewUser.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Add New User</a
                            ><a class="nav-link" href="ManageUser.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Manage</a
                            >
                            <!-- USER End -->

                            <!-- DOCTOR Start -->

                            <div class="sb-sidenav-menu-heading">DOCTOR</div>
                            <a class="nav-link" href="AddNewDoctor.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Add New Doctor</a
                            ><a class="nav-link" href="ManageDoctor.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Manage</a
                            >
                            <!-- DOCTOR End -->
                            <!-- SHEDULE Start -->
                            <div class="sb-sidenav-menu-heading">SHEDULE</div>
                            <a class="nav-link" href="../admin/AddNewSchedule.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Add New Shedule</a
                            ><a class="nav-link" href="../admin/ManageSchedule.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Manage</a
                            >
                            <!-- SHEDULE End -->

                            <!-- News Start -->
                            <div class="sb-sidenav-menu-heading">NEWS</div>
                            <a class="nav-link" href="../admin/AddPostNews.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Add New News</a
                            ><a class="nav-link" href="../admin/ManageNews.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Manage</a
                            >
                            <!-- News End -->

                            <!-- Feedback Start -->
                            <div class="sb-sidenav-menu-heading">Feedback</div>
                            <a class="nav-link" href="../admin/ManageFeedback.aspx"
                                ><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Manage</a
                            >
                            <!-- Feedback End -->

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <asp:Button ID="btnlogout" runat="server" Text="Log Out" CssClass="btn" OnClick="btnlogout_Click" ></asp:Button>
                        <div class="small">ADMIN PANEL</div>
                        ROYAL HOSPITAL
                    </div>
                </nav>
            </div>
    </div></asp:Panel>
    
  
</body>
</html>
