<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeadSelect.ascx.cs" Inherits="EUGameSite.uc.HeadSelect" %>
       <div> 
       <table style="width: 100px;height:120px">
            <tr>
                <td colspan="3" style="text-align: center; height: 106px;">
                    <asp:Image ID="Image1" runat="server" BorderStyle="Groove" BorderWidth="3px" /></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Width="96px">
                        <asp:ListItem Value="~/images/headpic/01.gif" Selected="True">用户头像01</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/02.gif">用户头像02</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/03.gif">用户头像03</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/04.gif">用户头像04</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/05.gif">用户头像05</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/06.gif">用户头像06</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/07.gif">用户头像07</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/08.gif">用户头像08</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/09.gif">用户头像09</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/10.gif">用户头像10</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/11.gif">用户头像11</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/12.gif">用户头像12</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/13.gif">用户头像13</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/14.gif">用户头像14</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/15.gif">用户头像15</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/16.gif">用户头像16</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/17.gif">用户头像17</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/18.gif">用户头像18</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/19.gif">用户头像19</asp:ListItem>
                        <asp:ListItem Value="~/images/headpic/20.gif">用户头像20</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
        </div>

