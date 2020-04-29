<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="admin_bill_bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="style/stylebill.css" rel="stylesheet"/>

	
	<script src="style/stylebill.css"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header>
			<h1>Invoice - ROAYAL HOSPITAL (PVT)</h1>
			<address class="contenteditable">
				<p>Royal Hospital (PVT)</p>
				<p>101 A. Anuradhapura<br>Police Town, CA 92866</p>
				<p>(+94) 225-6598</p>
			</address>
			
		</header>
		<article>
			<h1>Recipient</h1>
			
			<table class="meta">
				<tr>
					<th><span class="contenteditable">Invoice #</span></th>
					<td><span class="contenteditable"><asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label></span></td>
				</tr>
				<tr>
					<th><span class="contenteditable">Date</span></th>
					<td><span class="contenteditable">
                        <asp:Label ID="lblToday" runat="server" Text=""></asp:Label></span></td>
				</tr>
				<tr>
					<th><span class="contenteditable">Amount Due</span></th>
					<td><span id="prefix" class="contenteditable">Rs.</span><span><asp:Label ID="lblTotalPrice" runat="server"></asp:Label></span></td>
				</tr>
			</table>
			<table class="inventory">
				<thead>
					<tr>
						<th><span class="contenteditable">Charge</span></th>
						<th><span class="contenteditable">Description</span></th>
						<th><span class="contenteditable">Rate</span></th>
						<th><span class="contenteditable">Quantity</span></th>
						<th><span class="contenteditable">Price</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="cut">-</a><span class="contenteditable"><asp:Label ID="lblItem" runat="server" Text='<%# Eval("ID") %>'></asp:Label></span></td>
						<td><span class="contenteditable">Experience Review</span></td>
						<td><span class="data-prefix">$</span><span class="contenteditable">150.00</span></td>
						<td><span class="contenteditable">4</span></td>
						<td><span class="data-prefix">$</span><span>600.00</span></td>
					</tr>
				</tbody>
			</table>
			
			<table class="balance">
				<tr>
					<th><span class="contenteditable">Total</span></th>
					<td><span class="data-prefix">$</span><span>600.00</span></td>
				</tr>
				<tr>
					<th><span class="contenteditable">Amount Paid</span></th>
					<td><span class="data-prefix">$</span><span class="contenteditable">0.00</span></td>
				</tr>
				<tr>
					<th><span class="contenteditable">Balance Due</span></th>
					<td><span class="data-prefix" >$</span><span>600.00</span></td>
				</tr>
			</table>
		</article>
		<aside>
			<h1><span class="contenteditable">Additional Notes</span></h1>
			<div class="contenteditable">
				<p>A finance charge of 1.5% will be made on unpaid balances after 30 days.</p>
			</div>
		</aside>
    </div>
    </form>
</body>
</html>
