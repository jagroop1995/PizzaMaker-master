<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PizzaMaker.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
	<div class="row">
		<div class="col-md-12">
	        <h1>Wel come to the Admin Zone </h1>		

            <a href="PlaceOrder.aspx" class="btn btn-danger">Place Order </a> <br />
            <a href="FeedBack.aspx" class="btn btn-danger">View Query  </a> <br />
            <a href="Employee.aspx" class="btn btn-danger">All Employee </a> <br />

		</div>
	</div>
</div>

</asp:Content>
