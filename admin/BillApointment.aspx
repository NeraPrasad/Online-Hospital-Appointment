<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BillApointment.aspx.cs" Inherits="admin_CheckAppointment" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Add New User - Admin Royal Hospital</title>

    <link href="style/dashboard.css" rel="stylesheet"/>
    <link href="style/DataTable.css" rel="stylesheet"/>
    <link href="style/btn.css" rel="stylesheet"/>
	
	<script src="style/bootstrap.bundle.min.js"></script>
    <script src="style/Chart.min.js"></script>
    <script src="style/font.js"></script>
    <script src="style/jquery-3.4.1.min.js"></script>
    <script src="style/scripts.js"></script>

    <style>
        .btn{
            margin-top:40px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    <div id="layoutSidenav">
        <uc1:navbarvAdmin runat="server" ID="navbarvAdmin" />
        <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Bill/Bill Appointment</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Personal Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" width="100%" height="40"></canvas>

                                        <span><p>Patient Name: </p>
                                        <asp:TextBox ID="txtPName" runat="server"  CssClass="form-control"></asp:TextBox>
   
                                        </span>
                                      
                                        <span><p>Mobile: </p>
                                        <asp:TextBox ID="txtMobile" runat="server"  CssClass="form-control"></asp:TextBox>
                                            
                                        </span>

                                        <span><p>Email: </p>
                                        <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                                        </span>

                                        <span><p>Additonal Charge: </p>
                                        <asp:TextBox ID="txtaddCharge" runat="server"  CssClass="form-control"></asp:TextBox>
                                            
                                        </span>

                                        <span><p>Hospital Charge: </p>
                                        <asp:TextBox ID="txtHospitalCharge" runat="server"  CssClass="form-control"></asp:TextBox>
                                        </span>

           
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Main Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                        <span><p>Doctor: </p>
                                        <asp:DropDownList ID="ddlDoctor" runat="server" CssClass="form-control">
                                            <asp:ListItem >-- Select Doctor --</asp:ListItem>
                                        </asp:DropDownList>
                                        </span>

                                        <span><p>Bill Type: </p>
                                        <asp:DropDownList ID="ddlbilltype" runat="server" CssClass="form-control">
                                            <asp:ListItem >-- Select Bill Type --</asp:ListItem>
                                        <asp:ListItem Value="750">Normal Doctor</asp:ListItem>
                                        <asp:ListItem Value="1000">Special Doctor</asp:ListItem>
                                        </asp:DropDownList>
                                        </span>

                                        
                                        <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn" OnClick="btnInsert_Click" />
                                        

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>User List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <asp:GridView ID="GVBill" runat="server"  DataKeyNames="ID" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" Width="100%"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns> 
                                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                                                    <asp:BoundField DataField="PatientMobile" HeaderText="Mobile" />
                                                    <asp:BoundField DataField="PatientEmail" HeaderText="Email" />
                                                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                                                    <asp:BoundField DataField="BillType" HeaderText="Bill Type" />
                                                    <asp:BoundField DataField="AdditonalBill" HeaderText="Add Charge" />
                                                    <asp:BoundField DataField="HopitalCharg" HeaderText="Hospital Charge" />

                                                </Columns>

                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
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
