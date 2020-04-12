<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">User Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        input[type=text], input[type=password], input[type=number] {
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
        }
        .imgu {
            width:200px;
            height:200px;
        }
        #uimg {
            margin-left:25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="container1">
        <div id="uimg">
            <asp:Image ID="Image1" runat="server" class="imgu" />
            </div>
            Name:
            <asp:TextBox ID="txtName" runat="server" Enabled="false"></asp:TextBox>
            <br /><br />
             Email:
            <asp:TextBox ID="txtEmail" runat="server" Enabled="false" ></asp:TextBox>
            <br /><br />
            Mobile:
            <asp:TextBox ID="txtMobile" runat="server" Enabled="false"></asp:TextBox>
            <br /><br />
             Gender:
            <asp:TextBox ID="txtGender" runat="server" Enabled="false" ></asp:TextBox>
            <br /><br />
            Age:
            <asp:TextBox ID="txtAge" runat="server" Enabled="false"></asp:TextBox>
            <br /><br />
             Blood Group:
             <asp:TextBox ID="txtBg" runat="server" Enabled="false" ></asp:TextBox>
            <br /><br />
            Weight(in Kg):
            <asp:TextBox ID="txtWeight" runat="server" Enabled="false"></asp:TextBox>
            <br /><br />
             Height(in CM):
            <asp:TextBox ID="txtHeight" runat="server" Enabled="false"></asp:TextBox>
            <br /><br />
             Address:
            <asp:TextBox ID="txtAddress" runat="server" Enabled="false" TextMode="MultiLine"></asp:TextBox>
            

        
    </div>
</asp:Content>

