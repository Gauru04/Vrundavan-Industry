<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="supplier.aspx.cs" Inherits="Admin_supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 231px;
            height: 62px;
        }
        .auto-style4 {
            height: 62px;
        }
        .auto-style7 {
            width: 231px;
            height: 61px;
        }
        .auto-style8 {
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sup" style="text-align: center; font-family: 'Modern No. 20'; font-size: xx-large;">

        <asp:Label ID="Label1" runat="server" Font-Names="Modern No. 20" Font-Size="36pt" Text="&nbsp;Supplier"></asp:Label>
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp; </td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; Supplier ID</td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txt_id" runat="server" Height="35px" Width="190px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; Supplier Name</td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style8">
                    <asp:TextBox ID="txt_name" runat="server" Height="35px" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; Supplier Address</td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txt_add" runat="server" Height="35px" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; Supplier Contact</td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style8">
                    <asp:TextBox ID="txt_cont" runat="server" Height="35px" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Balance</td>
                <td style="font-family: Arial; font-size: x-large; text-align: left;" class="auto-style8">
                    <asp:TextBox ID="txt_bal" runat="server" Height="35px" Width="190px"></asp:TextBox>
                </td>
            </tr>
        </table>

        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_add" runat="server" Height="40px" Text="ADD" Width="118px" OnClick="btn_add_Click1" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_del" runat="server" Height="40px" Text="Delete" Width="118px" OnClick="btn_del_Click1" />
        <br />
&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_save" runat="server" Height="40px" Text="SAVE" Width="118px" OnClick="btn_save_Click1" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_can" runat="server" Height="40px" Text="Cancel" Width="118px" OnClick="btn_can_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>

    <div class="s_tbl">

        <asp:GridView ID="GridView1" runat="server" Height="399px" Width="789px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" style="margin-bottom: 0px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="S_id" HeaderText="S_id" SortExpression="S_id" />
                <asp:BoundField DataField="S_name" HeaderText="S_name" SortExpression="S_name" />
                <asp:BoundField DataField="S_add" HeaderText="S_add" SortExpression="S_add" />
                <asp:BoundField DataField="S_con" HeaderText="S_con" SortExpression="S_con" />
                <asp:BoundField DataField="Bal" HeaderText="Bal" SortExpression="Bal" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdminConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_sup]"></asp:SqlDataSource>

    </div>
</asp:Content>

