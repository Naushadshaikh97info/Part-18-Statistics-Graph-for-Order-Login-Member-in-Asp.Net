<%@ Page Title="" Language="C#" MasterPageFile="~/apanel/Admin_MasterPage.master"
    AutoEventWireup="true" CodeFile="login_log.aspx.cs" Inherits="apanel_login_log" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
                                    <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                        <table width="745" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                        <td colspan="3"><img src="img/frame/search_01.gif" width="745" height="25"></td> 
                        </tr>
                         <tr> 
          <td width="15"><img src="img/frame/search_03.gif" width="15" height="25"></td>
          <td width="715" valign="bottom" bgcolor="F5F5F5"><table width="715" border="0" cellspacing="0" cellpadding="0">
		  
              <tr> 
                <td width="50" style="background-color:#DBEAF5">
                     <asp:Label ID="Label4" runat="server" Text=" Month" Font-Bold="false"></asp:Label>
                             <asp:DropDownList ID="ddl_month" runat="server">
                                                <asp:ListItem>Month</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddl_year" runat="server">
                                            <asp:ListItem>Year</asp:ListItem>
                                            <asp:ListItem>2007</asp:ListItem>
                                            <asp:ListItem>2008</asp:ListItem>
                                            <asp:ListItem>2009</asp:ListItem>
                                            <asp:ListItem>2010</asp:ListItem>
                                            <asp:ListItem>2011</asp:ListItem>
                                            <asp:ListItem>2013</asp:ListItem>
                                            <asp:ListItem>2014</asp:ListItem>
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            </asp:DropDownList>
                                            
                                            
                  &nbsp; 
                  
                </td>
                <td width="66" align="right">
                    <asp:ImageButton ID="img_search" runat="server" ImageUrl="img/btn/search.gif" 
                        width="52" height="19" onclick="img_search_Click"/>
                </td>
              </tr>
			
            </table></td>
          <td width="15"><img src="img/frame/search_04.gif" width="15" height="25"></td>
        </tr>
        <tr> 
          <td colspan="3"><img src="img/frame/search_02.gif" width="745" height="20"><br /><br /></td></tr>
        </tr>
                        </table>
                                    </td>
                                        <%--<td>
                                           
                                        </td>--%>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" DataKeyNames="short_date" AllowPaging="true"
                                                CellPadding="1" CellSpacing="1" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound"
                                                OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="#F7F7F7" BorderColor="Tan" BorderWidth="1px"  GridLines="None" Width="750">
                                                <Columns>
                                                    <asp:BoundField HeaderText="Date" DataField="short_date" ItemStyle-Font-Bold="false"/>
                                                    <asp:BoundField HeaderText="Count" DataField="count" ItemStyle-Font-Bold="false" ItemStyle-HorizontalAlign="Center"/>
                                                    <asp:TemplateField HeaderText="Graph" ItemStyle-Font-Bold="false">
                                                        <ItemTemplate>
                                                            <asp:Image ID="ProgressImage" runat="server" ImageUrl="img/download.jpg" Width="100px"
                                                                Height="20px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Detail" ItemStyle-Font-Bold="false" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnk_view" runat="server" CommandArgument='<%#Eval("short_date") %>'
                                                                Text="View Login Member" OnClick="lnk_view_click" ></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                 <HeaderStyle BackColor="#F5E6DB" Height="30px" />
                    <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center"/>
                    <RowStyle Height="25px" Font-Size="10px"/>
                    <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite"/>
                    <SortedAscendingCellStyle BackColor="#F5E6DB" />
                    <SortedAscendingHeaderStyle BackColor="#F5E6DB"/>
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" Visible="false" OnClick="LinkButton1_Click">Back</asp:LinkButton>
                                            <asp:GridView ID="GridView2" runat="server" Visible="false" AutoGenerateColumns="false" BackColor="#F7F7F7" BorderColor="Tan" BorderWidth="1px"
                                            CellPadding="1" CellSpacing="1">
                                                <Columns>
                                                    <asp:BoundField HeaderText="Phone No" DataField="phone" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false"/>
                                                    <asp:BoundField HeaderText="Company" DataField="company" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false"/>
                                                    <asp:BoundField HeaderText="User Id" DataField="user" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false"/>
                                                    <asp:BoundField HeaderText="Username" DataField="username" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false"/>
                                                    <asp:BoundField HeaderText="Date" DataField="date" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false"/>
                                                </Columns>
                    <HeaderStyle BackColor="#F5E6DB" Height="30px" />
                    <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center"/>
                    <RowStyle Height="25px" Font-Size="10px"/>
                    <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite"/>
                    <SortedAscendingCellStyle BackColor="#F5E6DB" />
                    <SortedAscendingHeaderStyle BackColor="#F5E6DB"/>
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                            </asp:GridView>
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
