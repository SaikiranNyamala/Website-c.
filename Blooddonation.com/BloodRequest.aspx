<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BloodRequest.aspx.cs" Inherits="BloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Request For Blood
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        input[type=text] {
            width:100%;
            padding:12px 20px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;

        }
        .container1 {

            padding:20px;
            border:outset;
            width:35%;
            height:100%;
            margin-left: 35%;
            margin-top:10px;
        }
         .btn1 {
            float:left;
            width:20%;
            background-color:green;
            color:white;
            margin:8px 0;
            border:none;
            cursor:pointer;
            margin-top:-10px;
        }
        .i1 {
           

            margin-left:110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <h2>Check The Following Details:</h2>
        <div class="container1">
            <div>
                <asp:Image ID="Image1" runat="server" CssClass="i1" />
            </div>

             Name:<asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            <br />
             Blood Group: <asp:TextBox ID="txtBG" runat="server" ></asp:TextBox>
            <br />
             Email:<asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
            <br />
            Mobile:<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <br />
            Address:<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn1" OnClick="Button1_Click"/>

        </div>
    </div>
</asp:Content>

