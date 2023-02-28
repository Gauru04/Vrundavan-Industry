<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 447px;
        }
        .auto-style3 {
            width: 375px;
        }
        .auto-style4 {
            width: 340px;
        }
        .auto-style5 {
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Names="Modern No. 20" Font-Size="30pt" ForeColor="White" Text="DASHBOARD"></asp:Label>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">

                <div class="user">
                <asp:Label ID="lbl_us" runat="server" Font-Names="Modern No. 20" Font-Size="36pt"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="25pt" Text="USER'S"></asp:Label>
                    </div>
            </td>
            <td class="auto-style4">
                <div class="purchase">
                    <asp:Label ID="lbl_pur" runat="server" Font-Names="Modern No. 20" Font-Size="36pt"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="25pt" Text="PURCHASE"></asp:Label>
                </div> 
                     </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <div class="product">
                <asp:Label ID="lbl_pro" runat="server" Font-Names="Modern No. 20" Font-Size="36pt"></asp:Label>
                    <br />
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="25pt" Text="PRODUCT'S"></asp:Label>
           </div>
                     </td>
            <td class="auto-style4">
                <div class="supplier">
                <asp:Label ID="lbl_sup" runat="server" Font-Names="Modern No. 20" Font-Size="36pt"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="25pt" Text="SUPPLIER'S"></asp:Label>
                    </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
 
</asp:Content>

