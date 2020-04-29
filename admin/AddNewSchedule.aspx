<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewSchedule.aspx.cs" Inherits="admin_CheckAppointment" %>

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
                        <h1 class="mt-4">Schedule/Add Schedule</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myAreaChart" width="100%" height="40"></canvas>

                                        <span><p>Doctor Name: </p>
                                       <asp:DropDownList ID="DDLDOC" runat="server" CssClass="form-control">
                                           <asp:ListItem >Select Doctor</asp:ListItem>
                                           
                                       </asp:DropDownList>
                                        </span>
                                      
                                        <span><p>Sunday: </p>
                                        <asp:TextBox  ID="txtsunday" runat="server"  CssClass="form-control"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsunday" ErrorMessage="* Sunday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                        <span><p>Monday: </p>
                                        <asp:TextBox ID="txtmonday" runat="server"  CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmonday" ErrorMessage="* Monday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                        <span><p>Tuesday: </p>
                                        <asp:TextBox ID="txttuesday" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttuesday" ErrorMessage="* Tuesday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                        <span><p>Wedneday: </p>
                                        <asp:TextBox ID="txtwedneday" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtwedneday" ErrorMessage="* Wedneday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                    


                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    
                                    <div class="card-body" style="margin-top:-50px;"><canvas id="myBarChart" width="100%" height="40"></canvas>

                                        <span><p>Thursday: </p>
                                        <asp:TextBox ID="txtthursday" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtthursday" ErrorMessage="* Thursday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                        <span ><p>Friday: </p>
                                        <asp:TextBox ID="txtfriday" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtfriday" ErrorMessage="* Friday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                        </span>

                                        <span ><p>Saturday: </p>
                                        <asp:TextBox ID="txtsaturday" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsaturday" ErrorMessage="* Saturday is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
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

                                        <asp:GridView ID="GVAddSchedule" runat="server"  DataKeyNames="idSchedule" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" Width="100%"  >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns> 
                                                    <asp:BoundField DataField="idSchedule" HeaderText="ID" />
                                                    <asp:BoundField DataField="doctorName" HeaderText="Doctor Name" />
                                                    <asp:BoundField DataField="monday" HeaderText="monday" />
                                                    <asp:BoundField DataField="tuesday" HeaderText="tuesday" />
                                                    <asp:BoundField DataField="wedneday" HeaderText="wedneday" />
                                                    <asp:BoundField DataField="thursday" HeaderText="thursday" />
                                                    <asp:BoundField DataField="friday" HeaderText="friday" />
                                                    <asp:BoundField DataField="saturday" HeaderText="saturday" />
                                                    <asp:BoundField DataField="sunday" HeaderText="sunday" /> 
                                                    
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
