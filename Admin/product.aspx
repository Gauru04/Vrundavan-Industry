<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 78px;
        }
        .auto-style2 {
            width: 291px;
        }
        .auto-style7 {
            width: 291px;
            height: 62px;
        }
        .auto-style8 {
            height: 62px;
        }
        .auto-style13 {
            width: 291px;
            height: 82px;
        }
        .auto-style14 {
            height: 82px;
        }
        .auto-style15 {
            width: 291px;
            height: 63px;
        }
        .auto-style16 {
            height: 63px;
        }
        .auto-style17 {
            height: 61px;
        }
        .auto-style18 {
            width: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="pro" style="font-family: 'Modern No. 20'; font-size: xx-large; text-align: center;">

    &nbsp; <asp:Label ID="Label1" runat="server" Text="Product" Font-Names="Modern No. 20" Font-Size="36pt"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp;</td>
                <td style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp; Product ID</td>
                <td class="auto-style8" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">
                    <asp:TextBox ID="txt_id" runat="server" Height="40px" Width="180px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp; Product Name</td>
                <td class="auto-style16" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">
                    <asp:TextBox ID="txt_name" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp; Product Description</td>
                <td class="auto-style16" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">
                    <asp:TextBox ID="txt_des" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp; Product Price</td>
                <td class="auto-style14" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">
                    <asp:TextBox ID="txt_price" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">&nbsp; Stock</td>
                <td class="auto-style17" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left">
                    <asp:TextBox ID="txt_st" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style18" style="font-size: 23px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">Image</td>
                <td style="font-size: 23px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
                    <asp:Image ID="Image2" runat="server" Height="175px" Width="278px" />
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_im" runat="server" Text="Upload" Width="130px" OnClick="Button1_Click" />

        <br />
        <br />
&nbsp;
        <asp:Button ID="btn_add" runat="server" Height="40px" Text="ADD" Width="118px" OnClick="btn_add_Click" />
&nbsp;<asp:Button ID="btn_del" runat="server" Height="40px" Text="Delete" Width="118px" OnClick="btn_del_Click" />
&nbsp;<br />
        <br />
        <asp:Button ID="btn_save" runat="server" Height="40px" Text="SAVE" Width="118px" OnClick="btn_save_Click" />
&nbsp;<asp:Button ID="btn_can" runat="server" Height="40px" Text="Cancel" Width="118px" OnClick="btn_can_Click" />

    </div>
  
    <div class="p_tbl">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdminConnectionString %>" SelectCommand="SELECT * FROM [tbl_pro]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" Height="400px" Width="761px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="P_id" HeaderText="P_id" SortExpression="P_id" />
                <asp:BoundField DataField="P_name" HeaderText="P_name" SortExpression="P_name" />
                <asp:BoundField DataField="P_dis" HeaderText="P_dis" SortExpression="P_dis" />
                <asp:BoundField DataField="P_price" HeaderText="P_price" SortExpression="P_price" />
                <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    </div>
</asp:Content>

