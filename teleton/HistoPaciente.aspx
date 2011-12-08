﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HistoPaciente.aspx.cs" Inherits="HistoPaciente" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<script runat="server">
    
</script>
<div id = "content">
    <div id="navcenter">
        <div id="titulo">
            <h1>
                Historial Médico
            </h1>
        </div>
        <div>
            <fieldset>
                <ul class="list">
                    <li class="field" >
                       &nbsp;<asp:Label ID="lb_Expediente" runat="server" Text="Expediente :" Font-Size="Medium"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_buscar"
                            runat="server" TabIndex="1" Width="165px" Height="19px" Font-Size="Medium"></asp:TextBox>
                       &nbsp;&nbsp;
                        <asp:Button ID="btn_Buscar"  CssClass="boton" runat="server" Text="Buscar" 
                            onclick="Button1_Click" />
                    </li>
                </ul>
            </fieldset>
        </div>
        <div class="cajas"> 
            <fieldset>          
                <ul>
                    <li>
                        &nbsp;&nbsp;
                        <asp:Label ID="lb_Paciente" runat="server" Font-Bold="True" ForeColor="Red"  ></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lb_Expe" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_historial" runat="server" Height="83px" 
                            TextMode="MultiLine" Width="100%" BorderStyle="Outset"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_guardar"  CssClass="boton" runat="server" Text="Guardar" 
                            onclick="btn_guardar_Click" />
                    </li>
                </ul>            
            </fieldset> 
        </div>
        <div>
            <fieldset>



                <asp:GridView ID="grd_Historial" CssClass="Grid" runat="server" Width="100%" 
                    AutoGenerateColumns="False" DataKeyNames="Fecha" AllowPaging="True" 
                    Height="200px" PageSize="6" 
                    onpageindexchanging="grd_Historial_PageIndexChanging" > 
                    <HeaderStyle Height="18px" />
                    <pagerstyle backcolor="ControlLight"/>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="Ver" runat="server" CausesValidation="False" 
                                CommandName="View" ImageUrl="~/imagenes/view.png" Text="" Onclick="Ver_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" ReadOnly="true" SortExpression="Fecha"/>
                        <asp:BoundField HeaderText="Expediente" DataField="n_expediente" ReadOnly="true" SortExpression="Expediente"/>
                        <asp:BoundField HeaderText="Usuario" DataField="username" ReadOnly="true" SortExpression="Usuario"/>
                        <asp:BoundField HeaderText="Historial" DataField="historial" ReadOnly="true" Visible="false" SortExpression="historial" />
                    </Columns>
                    <RowStyle Height="20px" />
                    <SelectedRowStyle ForeColor="Red" />
                </asp:GridView>
                <br />
            </fieldset>
        </div>

    </div>
</div>
</asp:Content>

