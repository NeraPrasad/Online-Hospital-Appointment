<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPostNews.aspx.cs" Inherits="admin_CheckAppointment" %>

<%@ Register Src="~/include/navbarvAdmin.ascx" TagPrefix="uc1" TagName="navbarvAdmin" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Add New News</title>

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
                        <h1 class="mt-4">News/Add New News</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Royal Admin Dashboard</li>
                        </ol>
                        
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Doctor List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        
                                    <span ><p>Title: </p>
                                        <asp:TextBox AutoCompleteType="Disabled" ID="txttitle" runat="server"  CssClass="form-control" Width="100%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txttitle" ErrorMessage="* Title is Empty" ForeColor="Red"></asp:RequiredFieldValidator>  
                                    </span>

                                        

                                    <br />
                                     <asp:Button ID="btnAddNew" runat="server" Text="Insert" CssClass="btn" OnClick="btnAddNew_Click" />
                                </div>
                            </div>
                        </div>

                        <!-- Add Post End -->
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>News List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                        <asp:GridView ID="GVnewsPost" runat="server" AutoGenerateColumns="False" DataKeyNames="idnews" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" >
                                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                                <Columns> 
                                                    <asp:BoundField DataField="idnews" HeaderText="ID" />
                                                    <asp:BoundField DataField="newsTitle" HeaderText="Title" />                                           
                                                    

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
    </form>
</body>
</html>
