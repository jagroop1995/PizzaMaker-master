<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PizzaMaker.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3185.4918700853354!2d174.8925131150331!3d-37.02191689691929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d53629f03cea3%3A0xe1472eb99f648687!2sPizza%20Store!5e0!3m2!1sen!2sin!4v1596549080327!5m2!1sen!2sin" width="550" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Enter Name </label>
                    <asp:TextBox ID="txtName" Class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Must fill the Value"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label>Enter Email </label>
                    <asp:TextBox ID="txtEmail" TextMode="Email" Class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" runat="server" ErrorMessage="Must fill the Value"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label>Enter Message </label>
                    <asp:TextBox ID="txtMessg" TextMode="MultiLine" Class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtMessg" runat="server" ErrorMessage="Must fill the Value"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="BtnMessage" CssClass="btn btn-primary" runat="server" Text="Send Message" OnClick="BtnMessage_Click" />
                <h1 id="reslt" runat="server"></h1>
            </div>
        </div>
    </div>

</asp:Content>
