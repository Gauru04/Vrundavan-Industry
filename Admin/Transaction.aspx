<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Admin_Transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 44px;
        }
        .auto-style4 {
            height: 45px;
        }
        .auto-style5 {
            height: 47px;
        }
        .auto-style6 {
            height: 41px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 42px;
        }
        .auto-style9 {
            height: 44px;
            width: 267px;
        }
        .auto-style10 {
            height: 45px;
            width: 267px;
        }
        .auto-style11 {
            height: 47px;
            width: 267px;
        }
        .auto-style12 {
            height: 41px;
            width: 267px;
        }
        .auto-style13 {
            height: 40px;
            width: 267px;
        }
        .auto-style14 {
            height: 42px;
            width: 267px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="trans1">

        <div class="trans2">

        &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="20pt" Text="Transaction"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Transaction ID  : "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbl_id" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Text="Customer Name  :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_name" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label6" runat="server" Text="Customer Address  :"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_add" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label8" runat="server" Text="Total  :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_tot" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style8"></td>
                </tr>
            </table>

        </div>

    </div>
</asp:Content>

