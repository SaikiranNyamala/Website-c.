<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SelectBloodDonor.aspx.cs" Inherits="SelectBloodDonor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Blood Donors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .sb {
            margin-top:50px;
            margin-left:200px;
            
        }
        .gv1 td {
            padding:2px;
            text-align:center;
            width:150px;
            border: solid 1px #c1c1c1;
        }
        .gv1  {
           
            background-color:lime;
        }
        .gv1 th{

            padding:2px;
            text-align:center;
            width:150px;
            border: solid 1px #c1c1c1;
            background-color:blue;

        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="sb">

        <h2>Select Blood Group: </h2>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>(Select Blood Group)</asp:ListItem>
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>

        </asp:DropDownList>
        <div class="sb">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CssClass="gv1" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" >

                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />

                                    
                </Columns>


            


            </asp:GridView>

            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [Name],[Email],[Mobile],[Blood Group] AS Blood_Group, [Address] FROM [DonorRegistration]

                WHERE ([Blood Group] = @Blood_Group)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Blood_Group" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>

            </asp:SqlDataSource>


        </div>



    </div>
</asp:Content>

