﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="admin_Dashboard" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Dashboard - Admin Royal Hospital</title>

    <link href="style/dashboard.css" rel="stylesheet"/>
    <link href="style/DataTable.css" rel="stylesheet"/>
	
	<script src="style/bootstrap.bundle.min.js"></script>
    <script src="style/Chart.min.js"></script>
    <script src="style/font.js"></script>
    <script src="style/jquery-3.4.1.min.js"></script>
    <script src="style/scripts.js"></script>
   
	
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="layoutSidenav">
            <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">
                                        <asp:Label ID="lblCountUser" runat="server" Font-Size="20pt" CssClass="textcount" Font-Bold="True"></asp:Label>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <p>Total User</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">
                                        <asp:Label ID="lblCountDoc" runat="server" Font-Size="20pt" CssClass="textcount" Font-Bold="True"></asp:Label>
                                    </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <p>Total Doctor</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">
                                         <asp:Label ID="lblcountApp" runat="server" Font-Size="20pt" CssClass="textcount" Font-Bold="True"></asp:Label>
                                    </div>
                                   
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                         <p>Total Appoinement</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">
                                         <asp:Label ID="lblCountFeed" runat="server" Font-Size="20pt" CssClass="textcount" Font-Bold="True"></asp:Label>
                                    </div>
                                   
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                         <p>Total Feedback</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        
                    </div>
                </main>
                
            </div>
        </div>
    </div>
    </form>
</body>
</html>
