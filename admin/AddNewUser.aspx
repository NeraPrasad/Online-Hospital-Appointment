<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="admin_CheckAppointment" %>

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
                        <h1 class="mt-4">User/Add New User</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>Personal Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" width="100%" height="40"></canvas>

                                        <span><p>User Name: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtName" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="* User Name is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>
                                      
                                        <span><p>Mobile: (+94 717302199) </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtMobile" runat="server"  CssClass="form-control" Text="+94"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="* Mobile is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="  * Mobile Number is Invalied" ForeColor="#66FF33" ValidationExpression="@&quot;^7|0|(?:\+94)[0-9]{9,10}$"></asp:RegularExpressionValidator>
                                        </span>

                                        <span><p>Email: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="  * Email is Invalied" ForeColor="#66FF33" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:Label ID="lblalreademsg" runat="server" Text=""></asp:Label>
                                        </span>

           
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>Main Infromation</div>
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                        <span><p>Home Town: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtHomeTown" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtHomeTown" ErrorMessage="* Home Town is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>

                                        <span ><p>Password: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txtPassword" runat="server" TextMode="Password"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                        <asp:GridView ID="GVAddUserNew" runat="server"  DataKeyNames="idUser" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" Width="100%"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns>
                                                    <asp:BoundField DataField="idUser" HeaderText="Doctor ID" />
                                                    <asp:BoundField DataField="UserName" HeaderText="Name" />
                                                    <asp:BoundField DataField="UserMobile" HeaderText="Mobile" />
                                                    <asp:BoundField DataField="UserEmail" HeaderText="Email" />
                                                    <asp:BoundField DataField="UserHomeTown" HeaderText="Home Town" />
                                                    <asp:BoundField DataField="UserPassword" HeaderText="Password" />

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
