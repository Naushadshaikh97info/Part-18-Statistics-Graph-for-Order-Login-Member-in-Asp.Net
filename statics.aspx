<%@ Page Title="" Language="C#" MasterPageFile="~/apanel/Admin_MasterPage.master"
    AutoEventWireup="true" CodeFile="statics.aspx.cs" Inherits="apanel_statics" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
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
                            ORDER STATISTICS
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
                        <td>
                        <table width="745" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                        <td colspan="3"><img src="img/frame/search_01.gif" width="745" height="25"></td> 
                        </tr>
                         <tr> 
          <td width="15"><img src="img/frame/search_03.gif" width="15" height="25"></td>
          <td width="715" valign="bottom" bgcolor="F5F5F5"><table width="715" border="0" cellspacing="0" cellpadding="0">
		  
              <tr> 
                <td width="50">
                     <asp:Label ID="lbl_ddl_month" runat="server" Text=" Month" Font-Bold="false"></asp:Label>
                            <asp:DropDownList ID="ddl_month" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
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
					&nbsp; 
					
					                     
                             <asp:Label ID="lbl_ddl_year" runat="server" Text="Year" Font-Bold="false"></asp:Label>
                            <asp:DropDownList ID="ddl_year" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
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
                    </tr>
                    <tr>
                    <td>
                     <table width="745" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="15" height="24">
                            <img src="img/btn/ico_table_title.gif" width="9" height="9">
                        </td>
                        <td width="730" class="title">
                            List
                        </td>
                    </tr>
                    </table>
                    </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <div>
                                <table>
                                    <tr>
                                      
                                        <td align="right">
                                        <asp:Label ID="lbl_static_total" runat="server" Text="Total Order :" Font-Bold="false"></asp:Label>
                                            <asp:Label ID="lbl_total" runat="server" Text="" Font-Bold="false"></asp:Label>
                                            <asp:GridView ID="grid_member" runat="server" AllowPaging="true" AutoGenerateColumns="false"
                                                OnRowDataBound="grid_member_RowDataBound" 
                                                onpageindexchanging="grid_member_PageIndexChanging" BackColor="#F7F7F7" BorderColor="Tan" 
                    BorderWidth="1px" CellPadding="1" CellSpacing="1"  GridLines="None" Width="750">
                                                <Columns>
                                                    <asp:BoundField HeaderText="Date" DataField="date" ItemStyle-Font-Bold="false" ItemStyle-HorizontalAlign="Left" />
                                                    <asp:BoundField HeaderText="Amount(in $) " DataField="amount" ItemStyle-Font-Bold="false" ItemStyle-HorizontalAlign="Center" />
                                                    <%--  <asp:BoundField HeaderText="%" DataField="per" />--%>
                                                    <asp:TemplateField HeaderText="Percentage" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Bold="false" >
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_per" runat="server" Text=""></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Graph" ItemStyle-Font-Bold="false" ItemStyle-HorizontalAlign="Left" >
                                                        <ItemTemplate>
                                                            <asp:Image ID="ProgressImage" runat="server" ImageUrl="img/download.jpg" Width="100px"
                                                                Height="20px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="#F5E6DB" Height="30px" />
                    <PagerStyle BackColor="#FFFFFF" ForeColor="DarkSlateBlue" HorizontalAlign="Center"/>
                    <RowStyle Height="25px" Font-Size="10px"/>
                    <SelectedRowStyle BackColor="#F7F7F7" ForeColor="GhostWhite"/>
                    <SortedAscendingCellStyle BackColor="#F5E6DB" />
                    <SortedAscendingHeaderStyle BackColor="#F5E6DB"/>
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                            </asp:GridView>
                                            <%-- <asp:Chart ID="cTestChart" runat="server" Height="400px" Width="800px">
                                                    <Series>
                                                        <asp:Series Name="date" ChartType="Bar" XValueMember="data" YValueMembers="rs">
                                                        </asp:Series>
                                                        <asp:Series Name="rs" ChartType="Bar">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                            <Area3DStyle />
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>--%>
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
