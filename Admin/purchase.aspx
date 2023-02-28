<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Admin_purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 63px;
        }
        .auto-style3 {
            height: 62px;
        }
        .auto-style5 {
            height: 63px;
            width: 224px;
        }
        .auto-style6 {
            height: 62px;
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="pur">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="Modern No. 20" Font-Size="36pt" Text="Purchase"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Purchase ID</td>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:TextBox ID="txt_id" runat="server" Height="40px" Width="180px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Supplier Name</td>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:DropDownList ID="ddl1" runat="server" Height="40px" Width="180px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Product Name</td>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:DropDownList ID="dd2" runat="server" Height="40px" Width="180px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Quantity</td>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:TextBox ID="txt_q" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Rate</td>
                <td class="auto-style3" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:TextBox ID="txt_rate" runat="server" Height="40px" Width="180px" OnTextChanged="txt_rate_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">&nbsp;&nbsp;&nbsp; Total</td>
                <td class="auto-style2" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: 23px">
                    <asp:TextBox ID="txt_tot" runat="server" Height="40px" Width="180px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_add" runat="server" Height="40px" Text="ADD" Width="118px" OnClick="btn_add_Click" />
&nbsp;&nbsp;
        <asp:Button ID="btn_del" runat="server" Height="40px" Text="Delete" Width="118px" OnClick="btn_del_Click" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_save" runat="server" Height="40px" Text="SAVE" Width="118px" OnClick="btn_save_Click" />
&nbsp;&nbsp;
        <asp:Button ID="btn_can" runat="server" Height="40px" Text="Cancel" Width="118px" OnClick="btn_can_Click" />

    </div>
  <div class="tbl">

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:AdminConnectionString4 %>" SelectCommand="SELECT * FROM [tbl_pur]"></asp:SqlDataSource>
      <asp:GridView ID="GridView1" runat="server" Height="374px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="789px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="P_id" HeaderText="P_id" SortExpression="P_id" />
              <asp:BoundField DataField="S_name" HeaderText="S_name" SortExpression="S_name" />
              <asp:BoundField DataField="P_name" HeaderText="P_name" SortExpression="P_name" />
              <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
              <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
              <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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

