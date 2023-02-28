<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="User_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
            width: 95px;
        }
        .auto-style7 {
            height: 40px;
            }
        .auto-style8 {
            height: 87px;
            width: 95px;
        }
        .auto-style9 {
            height: 87px;
        }
        .auto-style13 {
            height: 47px;
        }
        .auto-style14 {
            height: 68px;
            width: 95px;
        }
        .auto-style15 {
            height: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="log">

       <div class="log1">


       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="20pt" ForeColor="Black" Text="Login"></asp:Label>
           <br />
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <table class="auto-style1">
               <tr>
                   <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Image ID="Image11" runat="server" Height="28px" ImageUrl="~/Images/user.png" Width="28px" />
                   </td>
                   <td class="auto-style2">
                       <asp:TextBox ID="txt_name" runat="server" Height="30px" Width="200px" placeholder="User Name" Font-Size="10pt" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Image ID="Image12" runat="server" Height="28px" ImageUrl="~/Images/password.png" Width="28px" />
                       <br />
                   </td>
                   <td class="auto-style9">
                       <asp:TextBox ID="txt_pass" runat="server" Height="30px" TextMode="Password" Width="200px" placeholder="Password" Font-Size="10pt" ></asp:TextBox>
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </td>
               </tr>
               <tr>
                   <td class="auto-style13" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="btn_log" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="15pt" Height="32px" Text="LOG IN " Width="100px" OnClick="btn_log_Click" />
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </td>
               </tr>
               <tr>
                   <td class="auto-style14"></td>
                   <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Image ID="Image13" runat="server" Height="30px" ImageUrl="~/Images/fb.png" Width="30px" />
&nbsp;&nbsp;
                       <asp:Image ID="Image14" runat="server" Height="30px" ImageUrl="~/Images/tw.png" Width="30px" />
&nbsp;&nbsp;
                       <asp:Image ID="Image15" runat="server" Height="30px" ImageUrl="~/Images/in.png" Width="30px" />
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:HyperLink ID="HyperLink8" runat="server" Font-Names="Arial" Font-Size="9pt" Font-Underline="False" ForeColor="Black" NavigateUrl="~/User/register.aspx">Create New Account</asp:HyperLink>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style7" colspan="2">&nbsp;</td>
               </tr>
           </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


       </div>
   </div>
</asp:Content>

