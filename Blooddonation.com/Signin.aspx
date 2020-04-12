<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Sign In
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container2 {
            border:outset;
            width:400px;
            height:400px;
            padding:7px;
            margin-left:35%;
            margin-top:15%;
            background-color:coral;
            margin-top:40px;

        }
        input[type=text], input[type=password] {
            width:100%;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;

        }
        .btn1
         {
            float:left;
            width:20%;
            height:100%;
            background-color:#4CAF50;
            color:white;
            margin-top:10px;
            border:none;
            cursor:pointer;

        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="container2">
        Email:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /> <br />
        Password:
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <a href="SineUp.aspx">
            <h4 style="color:red;">New 

                User?</h4>

        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn1" OnClick="Button1_Click"></asp:Button>

        </a>
        <br />

    </div>
</asp:Content>

