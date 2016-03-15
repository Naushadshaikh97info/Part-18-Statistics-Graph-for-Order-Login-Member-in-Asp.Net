<%@ Page Title="" Language="C#" MasterPageFile="~/apanel/Admin_MasterPage.master"
    AutoEventWireup="true" CodeFile="member_statisctic.aspx.cs" Inherits="apanel_member_statisctic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <table width="980" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="220" valign="top" background="img/frame/bg_left.gif" style="padding: 15 15 30 15">
                <table width="190" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="15" height="23">
                            <img src="img/btn/ico_left_title.gif" width="7" height="7">
                        </td>
                        <td width="175" class="title_company">
                            <!--Company Name  -->
                            JAWELRY WHOLESALE CLUB
                        </td>
                    </tr>
                    <tr valign="top">
                        <td height="17" colspan="2">
                            <img src="img/frame/line_left_title.gif" width="190" height="2">
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="statics.aspx" class="left_menu">Order Statistics</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="login_log.aspx" class="left_menu">Login Statistics</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <img src="img/btn/ico_leftmenu.gif" width="9" height="9">
                        </td>
                        <td>
                            <a href="member_statisctic.aspx" class="left_menu">Member Statistics</a>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="760" valign="top" style="padding: 15 0 30 15">
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="23" height="23">
                            <img src="img/btn/ico_page_title.gif" width="16" height="13">
                        </td>
                        <td width="722" class="title_page">
                            LOGIN STATISTICS
                        </td>
                    </tr>
                    <tr valign="top">
                        <td height="17" colspan="2">
                            <img src="img/frame/line_page_title.gif" width="745" height="2">
                        </td>
                    </tr>
                </table>
                <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td colspan="2">
                            <div>
                                <table>
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <img src="img/btn/ico_table_title.gif" width="9" height="9">
                                                        List
                                                    </td>
                                                    <td align="right">
                                                        <asp:Label ID="lbl_totals" runat="server" Text="Total" Font-Bold="false"></asp:Label>
                                                        <asp:Label ID="lbl_total" runat="server" Text="" Font-Bold="false"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 750px;">
                                                        <asp:GridView ID="grid_member" runat="server" AllowPaging="true" AutoGenerateColumns="false"
                                                            OnRowDataBound="grid_member_RowDataBound" BackColor="#F7F7F7" BorderColor="Tan"
                                                            BorderWidth="1px" CellPadding="1" CellSpacing="1" GridLines="None" Width="750">
                                                            <Columns>
                                                                <asp:BoundField HeaderText="User Id" DataField="fk_memberid" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Font-Bold="false" />
                                                                <asp:BoundField HeaderText="User Email" DataField="mobileno" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Font-Bold="false" />
                                                                <asp:BoundField HeaderText="Money" DataField="total_amt" ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-Font-Bold="false" />
                                                                <asp:TemplateField HeaderText="Graph">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="ProgressImage" runat="server" ImageUrl="img/download.jpg" Width="100px"
                                                                            Height="20px" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <HeaderStyle BackColor="#F5E6DB" Height="30px" />
                                                            <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                            <RowStyle Height="25px" Font-Size="10px" />
                                                            <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite" />
                                                            <SortedAscendingCellStyle BackColor="#F5E6DB" />
                                                            <SortedAscendingHeaderStyle BackColor="#F5E6DB" />
                                                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
