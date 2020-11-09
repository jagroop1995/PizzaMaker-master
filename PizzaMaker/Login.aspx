<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PizzaMaker.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="login.png"  class="img img-thumbnail"/>


            </div>
            <div class="col-md-6">
                
                <div class="form-group">
                    <label>Enter Email </label>
                    <asp:TextBox ID="txtEmail" TextMode="Email" Class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" runat="server" ErrorMessage="Must fill the Value"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label>Enter Password </label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" Class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtPassword" runat="server" ErrorMessage="Must fill the Value"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="BtnMessage" CssClass="btn btn-primary" runat="server" Text="Sign In" OnClick="BtnMessage_Click" />

                <h1 id="reslt" runat="server"> </h1>
            </div>
        </div>
    </div>

</asp:Content>
