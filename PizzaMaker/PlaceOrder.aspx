<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="PizzaMaker.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
	<div class="row">
		<div class="col-md-12">
			<h1>Place Customer Order </h1>

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderTypeLabel" runat="server" Text='<%# Eval("OrderType") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PizzaNameLabel" runat="server" Text='<%# Eval("PizzaName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BillLabel" runat="server" Text='<%# Eval("Bill") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="OrderTypeTextBox" runat="server" Text='<%# Bind("OrderType") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PizzaNameTextBox" runat="server" Text='<%# Bind("PizzaName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BillTextBox" runat="server" Text='<%# Bind("Bill") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="OrderTypeTextBox" runat="server" Text='<%# Bind("OrderType") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PizzaNameTextBox" runat="server" Text='<%# Bind("PizzaName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BillTextBox" runat="server" Text='<%# Bind("Bill") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderTypeLabel" runat="server" Text='<%# Eval("OrderType") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PizzaNameLabel" runat="server" Text='<%# Eval("PizzaName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BillLabel" runat="server" Text='<%# Eval("Bill") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">id</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">Contact</th>
                                        <th runat="server">OrderType</th>
                                        <th runat="server">PizzaName</th>
                                        <th runat="server">Qty</th>
                                        <th runat="server">Bill</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="OrderTypeLabel" runat="server" Text='<%# Eval("OrderType") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PizzaNameLabel" runat="server" Text='<%# Eval("PizzaName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BillLabel" runat="server" Text='<%# Eval("Bill") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaMakerConnectionString %>" DeleteCommand="DELETE FROM [DataOrder] WHERE [id] = @id" InsertCommand="INSERT INTO [DataOrder] ([Name], [Contact], [OrderType], [PizzaName], [Qty], [Bill]) VALUES (@Name, @Contact, @OrderType, @PizzaName, @Qty, @Bill)" SelectCommand="SELECT * FROM [DataOrder] ORDER BY [id] DESC" UpdateCommand="UPDATE [DataOrder] SET [Name] = @Name, [Contact] = @Contact, [OrderType] = @OrderType, [PizzaName] = @PizzaName, [Qty] = @Qty, [Bill] = @Bill WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="OrderType" Type="String" />
                    <asp:Parameter Name="PizzaName" Type="String" />
                    <asp:Parameter Name="Qty" Type="String" />
                    <asp:Parameter Name="Bill" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="OrderType" Type="String" />
                    <asp:Parameter Name="PizzaName" Type="String" />
                    <asp:Parameter Name="Qty" Type="String" />
                    <asp:Parameter Name="Bill" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

		</div>
	</div>
</div>
</asp:Content>
