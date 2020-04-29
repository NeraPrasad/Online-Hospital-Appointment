<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewDoctor.aspx.cs" Inherits="admin_CheckAppointment" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Add New Doctor</title>

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
                
                    <div class="container-fluid">
                        <h1 class="mt-4">Doctor/Add New Doctor</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Personal Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" width="100%" height="40"></canvas>

                                        <span><p>Doctor Name: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtName" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="* Doctor Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>
                                      
                                        <span><p>Speciality: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtSpeciality" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSpeciality" ErrorMessage="* Doctor Speciality is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                        <span><p>Hospital: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtHospital" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHospital" ErrorMessage="* Doctor Hospital is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        <span><p>Fees: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtFees" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFees" ErrorMessage="* Doctor Fees is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Main Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                        <span><p> Image </p>
                                            <asp:FileUpload ID="FUImeage" runat="server" CssClass="form-control"></asp:FileUpload>
                                        </span>

                                        <span><p> Gender </p>
                                            <asp:DropDownList ID="DDLGender" runat="server" CssClass="form-control">
                                                <asp:ListItem>Select Gender</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                                <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                                        </span>

                                        

                                        <span ><p>Doctor ID: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtDoctorID" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDoctorID" ErrorMessage="* Doctor ID is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblalreademsg" runat="server" Text=""></asp:Label>
                                        </span>

                                        <span><p>Password: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtDoctorPass" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDoctorPass" ErrorMessage="* Doctor Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        

                                        


                                       <asp:Button ID="btnAddNew" runat="server" Text="Insert" CssClass="btn" OnClick="btnAddNew_Click" />

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Doctor List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <asp:GridView ID="GVAddDocNew" runat="server" AutoGenerateColumns="False" DataKeyNames="idDoctor" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%">
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="idDoctor" HeaderText="Doctor ID" />
                                                    <asp:BoundField DataField="DoctorName" HeaderText="Name" />
                                                    <asp:BoundField DataField="DoctorSpeciality" HeaderText="Speciality" />
                                                    
                                                    <asp:BoundField DataField="DoctorHospital" HeaderText="Hospital" />
                                                    <asp:BoundField DataField="DoctorFees" HeaderText="Fees" />
                                                    <asp:BoundField DataField="DoctorImage" HeaderText="Image" NullDisplayText="Image" />
                                                    <asp:BoundField DataField="DoctorGender" HeaderText="Gender" />
                                                    <asp:BoundField DataField="DoctorUserID" HeaderText="User ID" />
                                                    <asp:BoundField DataField="DoctorPassword" HeaderText="Password" />

                                                   
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
                
                
            </div>
    </div>
    </div>


        



        <div>
           
        </div>

    </form>
</body>
</html>
