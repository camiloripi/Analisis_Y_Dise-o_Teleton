﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Paciente.aspx.cs" Inherits="Crear_Paciente" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">
        function validateForm() {
            var x = document.getElementById("MainContent_txtCedula");
            var pattx = new RegExp("[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9]");
            var boolx = pattx.test(x.value);

            var y = document.getElementById("MainContent_txtFechaNacimiento");
            var patty = new RegExp("[1-9][0-9][0-9][0-9]-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])");
            var booly = patty.test(y.value);

            var z = document.getElementById("MainContent_txtFechaIngreso");
            var boolz = patty.test(z.value);            

            if (!boolx) {
                alert("Numero de cedula invalido");
            }

            if (!booly) {
                alert("Fecha de nacimiento invalida");
            }

            if (!boolz) {
                alert("Fecha de ingreso invalida");
            }

            return boolx && booly && boolz;
        }

        function printInfo() {
            var text1 = document.getElementById("MainContent_txtExp");
            var text2 = document.getElementById("MainContent_txtCedula");
            var text3 = document.getElementById("MainContent_txtNombres");
            var text4 = document.getElementById("MainContent_txtPrimerApellido");
            var text5 = document.getElementById("MainContent_txtSegundoApellido");
            var text6 = document.getElementById("MainContent_txtDireccion");
            var radio1 = document.getElementById("MainContent_rdSexo_0");
            var radio2 = document.getElementById("MainContent_rdSexo_1");
            var text7 = document.getElementById("MainContent_ddEstado");
            var text7options = document.getElementById("MainContent_ddEstado").options;
            var text8 = document.getElementById("MainContent_txtLugarNacimiento");
            var text9 = document.getElementById("MainContent_txtFechaNacimiento");
            var text10 = document.getElementById("MainContent_txtFechaIngreso");

            var printWindow = window.open(document.URL, window.name, 'left=50000,top=50000,width=0,height=0');

            printWindow.document.write("Nº de Expediente: " + text1.value + "<br />");
            printWindow.document.write("Nº de Cédula: " + text2.value + "<br />");
            printWindow.document.write("Nombres: " + text3.value + "<br />");
            printWindow.document.write("Primer Apellido: " + text4.value + "<br />");
            printWindow.document.write("Segundo Apellido: " + text5.value + "<br />");
            printWindow.document.write("Dirección:" + text6.value + "<br />");
            if (radio1.checked) {
                printWindow.document.write("Sexo: Masculino" + "<br />");
            }
            if (radio2.checked) {
                printWindow.document.write("Sexo: Femenino" + "<br />");
            }
            printWindow.document.write("Estado Civil: " + text7options[text7.selectedIndex].text + "<br />");
            printWindow.document.write("Lugar de Nacimiento: " + text8.value + "<br />");
            printWindow.document.write("Fecha de Nacimiento: " + text9.value + "<br />");
            printWindow.document.write("Fecha de Ingreso: " + text10.value + "<br />");
            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
            printWindow.close();

            return false;
        }
    </script>

    <div id="content">
        <div id = "titulo">
            <h1>Registro de Pacientes</h1> 
            <h2>Información General</h2>
        </div>

        <div id="navcenter">
        <fieldset>
            <legend>Datos Generales</legend>
                <ul class = "list">
                    <li class="field">
                        <asp:Label ID="Label11" CssClass="label" runat="server" Text="Nº de Expediente:"></asp:Label>
                        <asp:TextBox ID="txtExp" runat="server" CssClass="tb_Permiso"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtExp" ErrorMessage="*Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label2" CssClass="label" runat="server" Text="Nº de Cédula:"></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="tb_Permiso" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtCedula" ></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label3" CssClass="label" runat="server" Text="Nombres:"></asp:Label>
                        <asp:TextBox ID="txtNombres" runat="server" CssClass="tb_Permiso"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*Nombre Requerido" ForeColor="Red" 
                                ControlToValidate="txtNombres"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label4" CssClass="label" runat="server" Text="Primer Apellido:"></asp:Label>
                        <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="tb_Permiso"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ErrorMessage="*Apellido Requerido" ForeColor="Red" 
                             ControlToValidate="txtPrimerApellido"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label1" CssClass="label" runat="server" Text="Segundo Apellido:"></asp:Label>
                        <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="tb_Permiso"></asp:TextBox>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label5" CssClass="label" runat="server" Text="Dirección:"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="tb_Permiso" 
                            TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                             ErrorMessage="*Direccion Requerida" ForeColor="Red" 
                             ControlToValidate="txtDireccion"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label6" CssClass="label" runat="server" Text="Sexo:"></asp:Label>
                        <asp:radiobuttonlist id="rdSexo" runat="server" RepeatDirection="Horizontal">
                          <asp:listitem id="rdMasculino" Selected="true" runat="server" value="Masculino" />
                          <asp:listitem id="rdFemenino" runat="server" value="Femenino" />
                        </asp:radiobuttonlist>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label7" CssClass="label" runat="server" Text="Estado Civil:"></asp:Label>
                        <asp:DropDownList ID="ddEstado" runat="server" CssClass="tb_Permiso">
                            <asp:ListItem Selected="True" Value="0">Soltero</asp:ListItem>
                            <asp:ListItem Value="1">Casado</asp:ListItem>
                            <asp:ListItem Value="2">Divorciado</asp:ListItem>
                            <asp:ListItem Value="3">Viudo</asp:ListItem>
                            <asp:ListItem Value="4">Unión libre</asp:ListItem>
                        </asp:DropDownList>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label8" CssClass="label" runat="server" Text="Lugar de Nacimiento:"></asp:Label>
                        <asp:TextBox ID="txtLugarNacimiento" runat="server" CssClass="tb_Permiso"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtLugarNacimiento"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label9" CssClass="label" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" ></asp:TextBox>
                        <img alt="Icon" src="images/calendar_icon.jpg" id="img_fecha_nacimiento" width="24px"/>
                        <asp:CalendarExtender ID="FechaNacimientoExtender" runat="server" TargetControlID="txtFechaNacimiento" Format="yyyy-MM-dd" PopupButtonID="img_fecha_nacimiento">
                        </asp:CalendarExtender>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="*Fecha de Nacimiento Requerida" ForeColor="Red" 
                            ControlToValidate="txtFechaNacimiento"></asp:RequiredFieldValidator>
                    </li>
                    <li class="field">
                        <asp:Label ID="Label10" CssClass="label" runat="server" Text="Fecha de Ingreso:"></asp:Label>
                        <asp:TextBox ID="txtFechaIngreso" runat="server" ></asp:TextBox>
                        <img alt="Icon" src="images/calendar_icon.jpg" id="img1" width="24px" />


                        <asp:CalendarExtender ID="FechaIngresoExtender" runat="server" 
                            TargetControlID="txtFechaIngreso" Format="yyyy-MM-dd" PopupButtonID="img1">
                        </asp:CalendarExtender>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="*Fecha de Ingreso Requerida" ForeColor="Red" 
                            ControlToValidate="txtFechaIngreso"></asp:RequiredFieldValidator>
                    </li>

                    <li class="field">
                        <asp:Label ID="Label12" CssClass="label" runat="server" 
                            Text="Foto:"></asp:Label>
                        <asp:FileUpload ID="FileUpload_Foto" runat="server" />
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label13" CssClass="label">Telefono:</asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server" MaxLength="8" 
                            ToolTip="Telefono sin guion"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ErrorMessage="*Vacio no permitido" ForeColor="Red"
                            ControlToValidate="txtTelefono">
                        </asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Formato no valido"
                            ForeColor="Red" ControlToValidate="txtTelefono" Type="Integer" Operator="DataTypeCheck">
                        </asp:CompareValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label14" CssClass="label">Celular:</asp:Label>
                        <asp:TextBox runat="server" ID="txtCelular" MaxLength="8" 
                            ToolTip="Celular sin guion"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ErrorMessage="*Vacio no permitido" ForeColor="Red"
                            ControlToValidate="txtCelular">
                        </asp:RequiredFieldValidator>
                        
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Formato no valido"
                            ForeColor="Red" ControlToValidate="txtCelular" Type="Integer" Operator="DataTypeCheck">
                        </asp:CompareValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label30" CssClass="label">Escolaridad:</asp:Label>
                        <asp:DropDownList runat="server" ID="ddlEscolaridad" CssClass="tb_Permiso">
                        </asp:DropDownList>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label15" CssClass="label">Profesión:</asp:Label>
                        <asp:DropDownList ID="ddlProfesion" runat="server" CssClass="tb_Permiso">
                        </asp:DropDownList>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label16" CssClass="label">Lugar De Trabajo:</asp:Label>
                        <asp:TextBox runat="server" ID="txtLugarTrabajo" CssClass="tb_Permiso">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtLugarTrabajo"></asp:RequiredFieldValidator>

                    </li>
                </ul>
            </fieldset>                    
        </div>

        <div class="navcenter">
            <fieldset>
                <legend>Datos Familiares</legend>

                <ul class = "list">
                    <li class="field">
                        <asp:Label runat="server" ID="Label17" CssClass="label">Nombre Madre:</asp:Label>
                        <asp:TextBox runat="server" ID="txtMadre" CssClass="tb_Permiso" MaxLength="45"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtMadre"></asp:RequiredFieldValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label18" CssClass="label">Padre:</asp:Label>
                        <asp:TextBox runat="server" ID="txtPadre" CssClass="tb_Permiso" MaxLength="45"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtPadre"></asp:RequiredFieldValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label19" CssClass="label">Estructura Familiar:</asp:Label>
                        <asp:TextBox runat="server" ID="txtEstructuraFamiliar" CssClass="tb_Permiso" 
                            MaxLength="45"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtEstructuraFamiliar"></asp:RequiredFieldValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label20" CssClass="label">Condición del hogar:</asp:Label>
                        <asp:TextBox runat="server" ID="txtCondicionHogar" CssClass="tb_Permiso" 
                            MaxLength="20"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtCondicionHogar"></asp:RequiredFieldValidator>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label22" CssClass="label">Expectativa rehabilitante:</asp:Label>
                        <asp:TextBox runat="server" ID="txtExpectativa" CssClass="tb_Permiso" MaxLength="20"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ErrorMessage="*Campo Requerido" ForeColor="Red" 
                                ControlToValidate="txtExpectativa"></asp:RequiredFieldValidator>
                    </li>
                    
                    <li class="field">
                        <asp:Label runat="server" ID="Label21" CssClass="label">Ingreso Familiar L.:</asp:Label>
                        <asp:TextBox runat="server" ID="txtIngreso" MaxLength="8"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ErrorMessage="*Campo Requerido" ForeColor="Red"
                            ControlToValidate="txtTelefono">
                        </asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="*Valores no validos."
                            ForeColor="Red" ControlToValidate="txtIngreso" Type="Double" Operator="DataTypeCheck">
                        </asp:CompareValidator>
                    </li>
                </ul>
            </fieldset>
        </div>

        <div class="navcenter">
            <fieldset>
                <legend>Datos Medicos</legend>
                <ul class="list">
                    <li class="field">
                        <asp:Label runat="server" ID="Label24" ForeColor="Black">¿Ha recibido rehabilitación antes?</asp:Label>
                        <br />
                        <asp:RadioButtonList runat="server" ID="rblRehabilitacion" RepeatDirection="Horizontal" CssClass="tb_Permiso">
                            <asp:listitem Selected="true" value="Sí"/>
                            <asp:listitem value="No"/>
                        </asp:RadioButtonList>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label25" ForeColor="Black">Candidato a Transporte:</asp:Label>
                        <br />
                        <asp:RadioButtonList runat="server" ID="rblCandidato" RepeatDirection="Horizontal" CssClass="tb_Permiso">
                            <asp:ListItem Selected="true" value="Sí" />
                            <asp:listitem value="No" />
                        </asp:RadioButtonList>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label23" ForeColor="Black">¿Cómo se entero de Fundación Teletón?</asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtReferencia" CssClass="tb_Permiso" TextMode="MultiLine">
                        </asp:TextBox>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label26" ForeColor="Black">Documentos que trae el paciente:</asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtDocumentos" CssClass="tb_Permiso" TextMode="MultiLine">
                        </asp:TextBox>
                    </li>

                    <li class="field">
                        <asp:Label runat="server" ID="Label27" ForeColor="Black">Observaciones:</asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="txtObservaciones" CssClass="tb_Permiso" TextMode="MultiLine">
                        </asp:TextBox>
                    </li>
                </ul>
            </fieldset>
        </div>
        
        <div id="navBotones">
            <asp:Button ID="btIngresar" CssClass="boton" runat="server" Text="Ingresar Paciente" 
                        OnClientClick="return validateForm()"  onclick="btIngresar_Click" />
                        
            <asp:Button ID="btnClean" CssClass="boton" runat="server" Text="Limpiar" 
                CausesValidation="False" onclick="btnClean_Click"/>
                <asp:Button ID="btnPrint" CssClass="boton" runat="server" Text="Imprimir" 
                onclick="btnPrint_Click" />
        </div>        
    </div>
</asp:Content>

