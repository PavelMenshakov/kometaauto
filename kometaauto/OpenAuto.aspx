<%@ Page Title="Открыть заказ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OpenAuto.aspx.cs" Inherits="kometaauto.OpenAuto" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="maininf" style="width:1280px; position:relative; left:-170px;">
    <div style="width:50%; margin:0 auto;">
        <asp:Table runat="server" ID="part1" CellPadding="0" CellSpacing="0">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5">Заявка-заказ № </asp:TableCell><asp:TableCell><asp:Label runat="server" ID="numzakaza" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Исполнитель</asp:TableCell>
                        <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="Ispoln11" Text='"Комета авто", г. Гомель, ул. Лепешинского, 2б к.1 '></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6"><asp:Label runat="server" ID="Ispoln12" Text='УНП 490859920 р/счет 3012267170016 в Ф/ле ОАО«БАПБ» ГОУ,  МФО 151501912'></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell ColumnSpan="2">Заказчик</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" OnTextChanged="Zakazchik_TextChanged" ID="Zakazchik" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Адрес</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="Adress" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Контактные телефоны:</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="Phone" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="4">Номер кузова</asp:TableCell>
                <asp:TableCell ColumnSpan="2"><asp:Label runat="server" ID="KuzNamb" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="6">
                            <asp:Table runat="server" CellPadding="0" CellSpacing="0" ID="auto"  BorderStyle="Solid" BorderWidth="1">
                                <asp:TableRow>
                                    <asp:TableCell rowspan="2" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Label1" Text="Транспортное средство"></asp:Label> 
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Модель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Год выпуска
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Двигатель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Пробег
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Номерной знак
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Model" Height="7px" Width="70px" OnTextChanged="Model_TextChanged" ></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Godv" Height="7px" Width="70px" OnTextChanged="Godv_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Dvig" Height="7px" Width="70px" OnTextChanged="Dvig_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Probeg"  Height="7px" Width="70px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Nomernz"  Height="7px" Width="70px" OnTextChanged="Nomernz_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6">
             <asp:Table runat="server"  CellSpacing="0" CellPadding="0" Width="543px">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center"><span>Заявленные работы <br />(описание неисправностей):</span></asp:TableCell><asp:TableCell ColumnSpan="2" HorizontalAlign="Center">Перечень работ к выполнению:<br /> (или причина отказа)</asp:TableCell>
                            
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >1</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Zrab0" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell BorderStyle="Solid" BorderWidth="1" >1</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Vrab0" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                                                <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >2</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Zrab1" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >2</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px" runat="server"  ID="Vrab1" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >3</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Zrab2" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >3</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Vrab2" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >4</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Zrab3" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >4</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Vrab3" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >5</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px"  runat="server" ID="Zrab4" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >5</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px"  runat="server" ID="Vrab4" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >6</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Zrab5" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >6</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Vrab5" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >7</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Zrab6" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >7</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Vrab6" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >8</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label  Width="200px" runat="server" ID="Zrab7" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >8</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Vrab7" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >9</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Zrab8" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >9</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Vrab8" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>                        <asp:TableRow>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >10</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Zrab9" Height="9px"></asp:Label></asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" >10</asp:TableCell>
                            <asp:TableCell  BorderStyle="Solid" BorderWidth="1" ><asp:Label Width="200px" runat="server" ID="Vrab9" Height="9px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        
                    </asp:Table>
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
               <asp:TableCell ColumnSpan="6">
                   <asp:Table runat ="server" Width="525px">
            <asp:TableRow>
                <asp:TableCell RowSpan="4"><p style="font-size:8pt;"> Дополнительные работы, необходимость в которых может возникнуть в процессе исполнения заказа, их стоимость и сроки выполнения исполнитель согласовывает с заказчиком   (устно/ письменно)   с последующим отражением в акте выполненных работ</p></asp:TableCell>
                <asp:TableCell ColumnSpan="2"></asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell><asp:CheckBox runat="server" ID="ustno" /> </asp:TableCell>
                            <asp:TableCell> Устно</asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2"></asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell><asp:CheckBox runat="server" ID="pism" /> </asp:TableCell>
                            <asp:TableCell> Письменно</asp:TableCell>
            </asp:TableRow>
                       </asp:Table>
                   </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6"><table><tr><td>Планируемый срок исполнения заказа</td><td> <asp:Label Width="1px" Height="7px" runat="server" ID="srok" Visible="false"></asp:Label><b>   __________________</b></td><td> рабочих дней</td></tr></table></asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                    <asp:TableCell ColumnSpan="6">
                        <table>
                            <tr>
                                <td rowspan="2" style="padding-right:10px">Заказ-заявка<br />оформлена</td>
                                <td ><asp:Label runat="server" ID="date" Width="1px" Height="7px" Visible="false"></asp:Label>"__"____________ 2014 г</td>
                                <td>.     ____________________</td>
                                <td><asp:Label runat="server" ID="username" Width="1px" Height="7px" Visible="false"></asp:Label>__________________________</td>
                            </tr>
                            <tr>
                                <td><p style="text-align:center;font-size:xx-small">(дата)</p></td>
                                <td><p style="text-align:center;font-size:xx-small">(подпись)</p></td>
                                <td><p style="text-align:center;font-size:xx-small">(ФИО)</p></td>
                            </tr>
                        </table>
                    </asp:TableCell>                         
            </asp:TableRow>
                        
                        <asp:TableRow>
                        <asp:TableCell ColumnSpan="6">
                            <table>
                                <tr>
                                    <td style="padding-right:20px">
                                        Дата предоставления ТС
                                    </td>
                                    <td>
                                        <asp:Label Height="7px" runat="server" ID="dateotd" Visible="false"></asp:Label>"__"____________ 2014 г
                                    </td>
                                </tr>
                            </table>
                        </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <table>
                                    <tr>
                                        <td rowspan="3" style="text-align:center;">С объемом работ, стоимостью и порядком<br />согласования дополнительных работ согласен</td>
                                        <td rowspan="2"> ____________________ </td>
                                        <td rowspan="2"><asp:Label runat="server" ID="clientn" Width="100px" Height="7px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                    <tr>
                                        <td><p  style="text-align:center;font-size:xx-small">(подпись)</p></td>
                                        <td><p style="text-align:center;font-size:xx-small">(ФИО)</p></td>
                                    </tr>
                                </table>
                            </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <div style="float:right">
                                <table >
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="datezz" Width="100px" Height="7px" Visible="false" ></asp:Label>"__"____________ 2014 г
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p  style="text-align:center;font-size:xx-small">(Дата)</p>
                                        </td>
                                    </tr>
                                </table>
                                    </div>
                            </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
    </div>
    <div style="width:49%; margin:0 auto;">
    <asp:Table runat="server" ID="part2" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2"> 
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="marka" Text="Марка"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="markaval"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="gossnum" Text="гос №"></asp:Label>    
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="gossnumval"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="Volumee" Text="Объем"></asp:Label>    
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="Volumevall"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:TableCell>
                        <asp:TableCell ColumnSpan="2"> 
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="datela" Text="Дата "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="Dateval"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                            <br />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                            <asp:Table runat="server" ID="zapch2" Width="100%" CellPadding="0" CellSpacing="0" BorderStyle="Solid" BorderWidth="1">
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                      <asp:Label runat="server" ID="Label2" Text="З/ч"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label3" Text="1"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch1" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                    <asp:Label runat="server" ID="Label5" Text="5"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                    <asp:Label runat="server" ID="zch5" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                   <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label7" Text="9"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch9" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                      <asp:Label runat="server" ID="Label9" Text=""></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label10" Text="2"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch2" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                    <asp:Label runat="server" ID="Label12" Text="6"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                    <asp:Label runat="server" ID="zch6" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                   <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label14" Text="10"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch10" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                      <asp:Label runat="server" ID="Label16" Text=""></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label17" Text="3"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch3" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                    <asp:Label runat="server" ID="Label19" Text="7"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                    <asp:Label runat="server" ID="zch7" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                   <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label21" Text="11"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch11" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                      <asp:Label runat="server" ID="Label23" Text=""></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label24" Text="4"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch4" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                    <asp:Label runat="server" ID="Label26" Text="8"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                    <asp:Label runat="server" ID="zch8" Height="7px" Width="160px"></asp:Label>
                                    </asp:TableCell>
                                   <asp:TableCell BorderStyle="Solid" BorderWidth="1" Width="10px">
                                        <asp:Label runat="server" ID="Label28" Height="7px" Text="12"></asp:Label>  
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                      <asp:Label runat="server" ID="zch12"  Height="7px"  Width="160px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                                    <asp:Table runat="server" ID="SPRabot" Width="100%">
                                
                            </asp:Table>
                            <asp:Label runat="server" ID="summnorm" Text="Итого по работе "></asp:Label><br />
                            <asp:Label runat="server" ID="summzap" Text="Итого по з.ч. "></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>            



                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                            <asp:Table runat="server" ID="zchnew" Width="100%">
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew1" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew1date" Height="7px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval1" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew6" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew6date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval6" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew2" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew2date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval2" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew7" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew7date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval7" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew3" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew3date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval3" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew8" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew8date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval8" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew4" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew4date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval4" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew9" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew9date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval9" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew5" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew5date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval5" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew10" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnew10date" Height="7px"></asp:Label>
                                    </asp:TableCell>

                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zchnewval10" Height="7px" Width="40px"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="4">
                                        <asp:Label runat="server" ID="zamm" Text="Замечания"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="4">
                                    <asp:Table runat="server" ID="Zamechaniat" Width="100%">

                                    </asp:Table>
                                        <asp:Button runat="server" ID="addZamec" Text="Добавить замечание по запчастям" OnClick="addZamec_Click" />
                                        <asp:Button runat="server" ID="addZamec1" Text="Добавить замечание по ремонту" OnClick="addZamec1_Click" />

                                        <asp:Label runat="server" ID="zamecc" Width="100%" Rows="5" TextMode="MultiLine" Height="40"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                        
                    </asp:TableRow>
        </asp:Table>

    </div>
    
     <div style="margin:0 auto; width:50%">

        <asp:Table ID="part3" runat="server" CellPadding="0" CellSpacing="0">
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="PSA" runat="server" Text="Приемо-сдаточный акт"></asp:Label> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Исполнитель</asp:TableCell>
                        <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="Ispoln21" Text='ООО "Комета авто", г. Гомель, ул. Лепешинского, 2б к.1 '></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6"><asp:Label runat="server" ID="Ispoln22" Text='УНП 490859920 р/счет 3012267170016 в Ф/ле ОАО«БАПБ» ГОУ,  МФО 151501912'></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell ColumnSpan="2">Заказчик</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="ZakazchikA" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Адрес</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="AdressA" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Контактные телефоны:</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="PhoneA" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
              <asp:TableRow>
                <asp:TableCell ColumnSpan="2">Номер кузова</asp:TableCell>
                <asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="KuzNambA" Height="7px"></asp:Label></asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="6">
                            <asp:Table runat="server" CellPadding="0" CellSpacing="0" ID="Table1"  BorderStyle="Solid" BorderWidth="1">
                                <asp:TableRow>
                                    <asp:TableCell rowspan="2" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Label4" Text="Транспортное средство"></asp:Label> 
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Модель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Год выпуска
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Двигатель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Пробег
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Номерной знак
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="ModelA" Height="7px" Width="70px" OnTextChanged="Model_TextChanged" ></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="GodvA" Height="7px" Width="70px" OnTextChanged="Godv_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="DvigA" Height="7px" Width="70px" OnTextChanged="Dvig_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="ProbegA"  Height="7px" Width="70px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="NomernzA"  Height="7px" Width="70px" OnTextChanged="Nomernz_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
            <asp:TableRow>
                        <asp:TableCell ColumnSpan="4">
                            <asp:Table runat="server" ID="Table2" Width="100%">
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="LabelBox2" Height="15px" Width="230px" Text="З/ч и материалы заказчика"></asp:Label>
                                    </asp:TableCell>
                                   
                                   
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1" >
                                        <asp:Label runat="server" ID="Label6" Height="15px" Width="230px" Text="Карта внешнего вида"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp31" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell Width="40%" BorderStyle="Solid" BorderWidth="1"  RowSpan="13">
                                        
                                        <asp:Image runat="server" ID="AutoImg" ImageUrl="~/Images/123.png" Width="230px" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp32" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                    
                                    </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp33" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                    
                                    </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp34" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp35" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp36" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp37" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="zapvlsp38" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                         <asp:Label runat="server" ID="Label8" Height="15px" Width="230px" Text="Комплектность автомобиля"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="TextBox7" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="TextBox9" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="TextBox11" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                                                                <asp:TableRow>
                                    <asp:TableCell Width="40%"  BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="TextBox12" Height="7px" Width="230px"></asp:Label>
                                    </asp:TableCell>
                                   
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                        
                    </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="4">
                    <table style="margin-top:30px">
                        <tr>
                            <td>
                                <div style="width:100px;text-align:center; height:50px;float:left;">Автомобиль<br />сдал Заказчик</div>
                                <div style="width:179px; text-align:center; height:50px;float:right;">________________________<br />(подпись)</div>
                            </td>
                            <td>
                                <div style="width:100px; text-align:center; height:50px;float:left;">Автомобиль<br />принял мастер-<br />приемщик</div>
                                <div style="width:179px; text-align:center; height:50px;float:right;">________________________<br />(подпись)</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="width:100px;text-align:center; height:50px;float:left;">Автомобиль<br />сдал мастер-<br />приемщик</div>
                                <div style="width:179px; text-align:center; height:50px;float:right;">________________________<br />(подпись)</div>
                            </td>
                            <td>
                                <div style="width:100px; text-align:center; height:50px;float:left;">Автомобиль<br />принял Заказчик</div>
                               <div style="width:179px; text-align:center; height:50px;float:right;">________________________<br />(подпись)</div>
                            </td>
                        </tr>
                    </table>
                    </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                    
                

    </div>
         <div style="margin:0 auto; width:595px; font-family:Calibri; font-size:8pt;">

        <asp:Table ID="part4" runat="server" CellPadding="0" CellSpacing="0">

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" RowSpan="2"> <asp:Image runat="server" ID="logo" ImageUrl="~/Images/logo.png" /></asp:TableCell>
                <asp:TableCell ColumnSpan="1"></asp:TableCell>
                        <asp:TableCell ColumnSpan="2"><span style="text-align:right; float:right;"><asp:Label runat="server" ID="Ispoln31" Text='Общество с ограниченой ответственностью "Комета авто"</br> г. Гомель, ул. Лепешинского, 2б к.1 '></asp:Label></span> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="4"><span style="text-align:right; float:right;"><asp:Label runat="server" ID="Ispoln32" Text='УНП 490859920, МФО 151501912</br> р/счет 3012267170016 в филиале ОАО«БАПБ» ГОУ</br> МФО 151501912'></asp:Label></span> </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell ColumnSpan="5"><span style="font-family:Cambria; font-weight:bold; font-size:10pt"><asp:Label ID="Label11" runat="server" Text="Акт выполненных работ №___________ &nbsp&nbsp&nbsp&nbsp&nbsp&nbspот&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp г."></asp:Label></span> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell ColumnSpan="1"><span style="font-family:Calibri;font-size:9pt;font-weight:bold;">Заказчик</span></asp:TableCell>
                <asp:TableCell ColumnSpan="4"><span style="font-family:Calibri;font-size:9pt;font-weight:bold;"><asp:Label runat="server" ID="ZakazchikB" Height="7px"></asp:Label></span></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ><span style="font-family:Calibri;font-size:9pt;font-weight:bold;">Адрес</span></asp:TableCell>
                <asp:TableCell ColumnSpan="2"><span style="font-family:Calibri;font-size:9pt;font-weight:bold;"><asp:Label runat="server" ID="AdressB" Height="7px"></asp:Label></span></asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" ><span style="font-family:Calibri;font-size:9pt;font-weight:bold;">VIN</span></asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" ><span style="font-family:Calibri;font-size:9pt;font-weight:bold;"><asp:Label runat="server" ID="KuzNambB" Height="7px"></asp:Label></span></asp:TableCell>
            </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="5">
                            <asp:Table Width="100%" runat="server" CellPadding="0" CellSpacing="0" ID="Table4"  BorderStyle="Solid" BorderWidth="1">
                                <asp:TableRow>
                                    <asp:TableCell rowspan="2" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="Label18" Text="Транспортное средство"></asp:Label> 
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Модель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Год выпуска
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Двигатель
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Пробег
                                    </asp:TableCell>
                                     <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                         Номерной знак
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="ModelB" Height="7px" Width="70px" OnTextChanged="Model_TextChanged" ></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="GodvB" Height="7px" Width="70px" OnTextChanged="Godv_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="DvigB" Height="7px" Width="70px" OnTextChanged="Dvig_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="ProbegB"  Height="7px" Width="70px"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label runat="server" ID="NomernzB"  Height="7px" Width="70px" OnTextChanged="Nomernz_TextChanged"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5">Выполненные работы:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                        <asp:TableCell ColumnSpan="5">
                            <asp:Table runat="server" Width="100%">
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">№ пп</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Наименование работ</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Нормо-час</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Стоимость услуг</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">1</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName1" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabNorm1" OnTextChanged="SPrabNorm1_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice1" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">2</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName2" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabNorm2" OnTextChanged="SPrabNorm2_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice2" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">3</asp:TableCell>
                                    
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName3" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabNorm3" OnTextChanged="SPrabNorm3_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice3" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">4</asp:TableCell>
                                    
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName4" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" OnTextChanged="SPrabNorm4_TextChanged" ID="SPrabNorm4" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice4" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">5</asp:TableCell>
                                    
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName5" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" OnTextChanged="SPrabNorm5_TextChanged" ID="SPrabNorm5" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice5" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">6</asp:TableCell>
                                    
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabName6" Width="270px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabNorm6" OnTextChanged="SPrabNorm6_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPrice6" OnTextChanged="SPrabPrice_TextChanged" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="2">Гарантия на работы: 30 дней при пробеге не более 2000км</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="LabelIt" Width="100px" Height="7px" Text="Итого:"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPrabPriceItog" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                        
                    </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell ColumnSpan="5">Запасные части и материалы, оплачиваемые заказчиком:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                        <asp:TableCell ColumnSpan="5">
                            <asp:Table ID="Table5" runat="server"  Width="100%">
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">№ пп</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Наименование запчастей и <br />материалов</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Ед.изм</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Кол-во</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Цена</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Сумма</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">1</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox36" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="edizm1"></asp:Label></asp:TableCell>
                                    
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox56" Width="50px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox57" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox58" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">2</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox59" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="edizm2"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox38" Width="50px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox60" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox61" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="4"></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="Label15" Width="100px" Height="7px" Text="Итого:"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="TextBox74" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                        
                    </asp:TableRow>
            <asp:TableRow>
                 <asp:TableCell ColumnSpan="6"> Запасные части и материалы, принятые от заказчика:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                        <asp:TableCell ColumnSpan="5">
                            <asp:Table ID="Table3" runat="server"  Width="100%">
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">№ пп</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Наименование запчастей и <br />материалов</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Ед.изм</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Кол-во</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">Состояние</asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">1</asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName1" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED1" Width="50px"  runat="server"></asp:Label></asp:TableCell><asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount1" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost1" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">2</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName2" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED2" Width="50px" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount2" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost2" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">3</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName3" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED3" Width="50px" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount3" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost3" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">4</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName4" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED4" Width="50px" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount4" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost4" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">5</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName5" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED5" Width="50px" runat="server"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount5" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost5" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1">6</asp:TableCell>
                                   
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapName6" Width="170px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label ID="SPzapED6" Width="50px" runat="server"></asp:Label></asp:TableCell><asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapCount6" Width="100px" Height="7px"></asp:Label></asp:TableCell>
                                    <asp:TableCell BorderStyle="Solid" BorderWidth="1"><asp:Label runat="server" ID="SPzapSost6" Width="100px" Height="7px"></asp:Label></asp:TableCell>

                                </asp:TableRow>

                          
                            </asp:Table>
                        </asp:TableCell>
                        
                    </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5">
                    Всего оказанно услуг на сумму: <asp:Label ID="itogpp" runat="server"></asp:Label><br />
                     <p style="font-family: 'Times New Roman', Times, serif; font-style: italic; "><asp:Label runat="server" ID="itogvtext"></asp:Label>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5">
                    Объем и стоимость работ по настоящему Акту сторонами согласованна.
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell ColumnSpan="5">
                ___________________________________________________________________________________________________</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5">
                    <table style="margin-top:30px">
                        <tr>
                            <td>
                                <div style="width:300px; text-align:left; float:left;">Заказ оформил</div>
                                
                            </td>
                            <td>
                                <div style="width:250px; text-align:right; float:right; text-decoration:underline;">бухгалтер Письменная И.С.</div>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <div style="width:300px; text-align:left; float:left;">Объем и качество выполненных<br /> работ проверил</div>
                                
                            </td>
                            <td>
                                <div style="width:250px; text-align:right; height:50px;float:right;text-decoration:underline;line-height: 43px;">мастер Макаров А.Г.</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="width:300px;text-align:center; height:50px;float:left;">Притензий к выполненным работам не имею<br />
                                    <br />
                                    Заказ получил(а)</div>
                                
                            </td>
                            <td>
                                     <div style="width:250px; text-align:center; height:50px;float:right;">"___"_______________2014 г.</div>
                            </td>
                        </tr>
                    </table>
                    </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
                    
                

    </div>
            
    </div>
    <div style="width:100%; float:left;">
        <div>
                <input type="submit" style="visibility:hidden;" />
            <table ><tr>    
            <td><asp:CheckBox runat="server"  Text="Заявка заказ" ID="zz" Checked="true" OnCheckedChanged="zz_CheckedChanged" AutoPostBack="True" /></td>
            <td>    <asp:CheckBox runat="server" Text="Список работ" ID="sr" Checked="true" OnCheckedChanged="sr_CheckedChanged" AutoPostBack="True" /></td>
                <td><asp:CheckBox runat="server" Text="Акт приемки-передачи" ID="app" Checked="true" OnCheckedChanged="app_CheckedChanged" AutoPostBack="True" /></td>
                <td><asp:CheckBox runat="server" Text="Акт выполненных работ" ID="avr" Checked="true" OnCheckedChanged="avr_CheckedChanged" AutoPostBack="True" /></td>
                </tr></table>
    </div>
         <table>
            <tr>
                <td><asp:Button runat="server" ID="zakazstr" Text="Заявка-заказ" OnClick="zakazstr_Click" /></td>
                <td><asp:Button runat="server" ID="raboti" Text="Список работ" OnClick="raboti_Click" /></td>
                <td><asp:Button runat="server" ID="aktstr" Text="Акт приемки-передачи" OnClick="aktstr_Click" /></td>
                <td><asp:Button runat="server" ID="aktvrab" Text="Акт выполненных работ" OnClick="aktvrab_Click" /></td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="IP" Text="ИП"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox runat="server" ID="IPCh" OnCheckedChanged="IPCh_CheckedChanged" AutoPostBack="True"/>
                            </td>
                        </tr>
                    </table>
                    </td>
            </tr>
        </table>
        <asp:Button runat="server" ID="newautoSave" Text="Сохранить" OnClick="newautoSave_Click" Visible="false"/>
            <asp:Button runat="server" ID="newautoIns" Text="Создать" OnClick="newautoIns_Click" Visible="false" />
        
        <asp:SqlDataSource runat="server" ID="newautosur" ConnectionString="<%$ ConnectionStrings:autorepConnectionString %>" SelectCommand="SELECT [Sotrudnik] FROM [sotrudniki] WHERE ([Type] = @Type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Механик" Name="Type" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
        </div>
    <br />
    <br />

        <div style="float:left;">
            <asp:Button Visible="false" runat="server" ID="Dellet" Text="Удалить" OnClick="Dellet_Click" />
            <asp:Button  Visible="false" runat="server" ID="Finish" Text="Готово" OnClick="Finish_Click" />
            <asp:Label Visible="false" runat="server" ID="normhourss"></asp:Label> <asp:Button Visible="false" runat="server" ID="NormhUpdate" Text="OK" OnClick="NormhUpdate_Click" />
        </div>
</asp:Content>
