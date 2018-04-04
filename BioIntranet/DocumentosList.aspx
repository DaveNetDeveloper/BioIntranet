﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DocumentosList.aspx.cs" Inherits="BioIntranet.DocumentosList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
    <style type="text/css"> 
        .gridClass th
            {  
                text-align: center;
                
            }
        .gridClass th
        {       
                background-image: linear-gradient(to bottom,#337ab7 0,#265a88 100%);
                color: #ffffff;
                font-weight: bold;
                text-transform: uppercase;
                height: 31px;
                font-size: 0.9em;
                cursor: pointer;
                border: none; 

                
        }
        .gridClass th:hover
        {       
                border-right: 2px solid #FFFFFF;
                color: #ffffff; 
                text-transform: uppercase;
                height: 31px;
                font-size: 0.9em; 
                font-weight: bold;
                border: none;
        }
        .gridClass td
        {
            font-size: 14px;
            border: none;
            font-weight: 100; 
             border-left: 2px solid #FFFFFF;    
        } 
        .gridClass tr
        {
                height: 40px;
                border: none;
                border: 1px solid #D8D8D8 !important;
        } 
        .gridClass tr:hover
        {
            /*background-color: #367fc3; 
            color: white;
            cursor: pointer;*/ 
            /* opacity: 0.8; */

            background-image: -webkit-linear-gradient(top,#fff 0,#F2F2F2  100%);
            background-image: -o-linear-gradient(top,#fff 0,#F2F2F2  100%);
            background-image: -webkit-gradient(linear,left top,left bottom,from(#fff),to(#F2F2F2 ));
            background-image: linear-gradient(to bottom,#fff 0,#F2F2F2  100%);

        } 
        .gridClass td:hover
        {
            /*background-color: #367fc3; 
            /*color: white;*/
            cursor: pointer; 
        } 

        .buttondisable
        { 
            background-image: -webkit-linear-gradient(top,#F5F5DC 0,#ffffff 100%);
            background-image: -o-linear-gradient(top,#F5F5DC 0,#ffffff 100%);
            background-image: -webkit-gradient(linear,left top,left bottom,from(#F5F5DC),to(#ffffff));
            background-image: linear-gradient(to bottom,#F5F5DC 0,#ffffff 100%); 
            background-repeat: repeat-x; 
            border-color: darkgray;

        } 
        .buttondisable:hover
        { 
            color:#337ab7;
        } 
        
        a:hover 
        {
            text-decoration: none;
        }
    </style>  
    
    <link rel="stylesheet" href="Content/vallenato.css" type="text/css" media="screen"> 
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> 
    <link href="Content/css3-buttons.css" rel="stylesheet" />
    <link href="Content/component.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="Content/resetBreadCrumbs.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="Content/styleBreadCrumbs.css"> <!-- Resource style -->
	<script src="Scripts/modernizr.js"></script> <!-- Modernizr -->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server" >   
<br> 
<div class="row" style="margin-right: 0px; margin-left: 20px;">  
        <div class="col-sm-12" >   
	        <nav>
		    <ol class="cd-breadcrumb custom-separator">
			    <li><a href="Inicio.aspx">Inicio</a></li>
			    <li><a href="#">Comité de Empresa</a></li>
			    <li class="current"><a href="#">Documentos</a></li> 
		    </ol>
	    </nav> 
    </div>  
</div>
<br> 
<div class="row" style="margin-right: 0px; margin-left: 20px;">
    <div class="col-sm-3">
        <div runat="server" id="accordion_container" style="margin-bottom: 30px; width:100%;"> 
            <h2 class="accordion-header active-header" style="margin-top:0px">COMITÉ DE EMPRESA</h2>  
            <div id="ContentSection_ComitéDeEmpresaContent" style="width: 100%; display: block;" class="accordion-content open-content">
                <p class="cat" runat="server" id="p10" width="auto">
                    <span></span>
                    <a title="Documentos" id="aDpto10" href="DocumentosList.aspx" runat="server">Documentos</a>
                </p>
                <p class="cat" runat="server" id="p11" width="auto">
                    <span></span>
                    <a title="Actas de reuniones" id="aDpto11" href="#" runat="server">Actas de reuniones</a>
                </p>
                <p class="cat" runat="server" id="p12" width="auto">
                    <span></span>
                    <a title="Servicios de empresa" id="aDpto12" href="#" runat="server">Servicios de empresa</a>
                </p>
                <p class="cat" runat="server" id="p13" width="auto">
                    <span></span>
                    <a title="Otra sección" id="a113" href="#" runat="server">Otra sección</a>
                </p>
                <p class="cat" runat="server" id="p14" width="auto">
                    <span></span>
                    <a title="Otra sección más" id="a14" href="#" runat="server">Otra sección más</a>
                </p>
                <p class="cat" runat="server" id="p16" width="auto">
                    <span></span>
                    <a title="Última sección" id="a16" href="#" runat="server">Última sección</a>
                </p>
            </div>  
        </div>     
    </div> 

    <div class="col-sm-9"> 
        <asp:GridView ID="gvDocumentos" Width="100%" runat="server" OnRowDataBound="gvDocumentos_RowDataBound" OnRowCommand="gvDocumentos_RowCommand" DataKeyNames="Id" AutoGenerateColumns="false" CssClass ="gridClass" EmptyDataText="No hay documentos.">
        <Columns> 
             <asp:TemplateField>
                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                <ItemStyle HorizontalAlign="Center" Width="50px" />
                <HeaderTemplate> 
                        <asp:CheckBox AutoPostBack="false" OnCheckedChanged="chkSelAll_Checked"  Enabled="true"  ID="chkSel" CssClass="chkSel" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox AutoPostBack="false" onClick="$('#buttonDonwload').addClass('btn-primary');$('#buttonDonwload').removeClass('buttondisable');" Enabled="true"  ID="chkSel" CssClass="chkSel" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="Tipo" ItemStyle-Width="75px" Visible="false" />

            <asp:BoundField DataField="Id" Visible="false" />

            <asp:BoundField DataField="Nombre" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left" HeaderText="Nombre" />

            <asp:BoundField DataField="Descripcion" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" HeaderText="Descripcion" />

            <asp:BoundField DataField="Ubicacion" Visible="false" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="175px" ItemStyle-HorizontalAlign="Left" HeaderText="Ubicacion" /> 
             
            <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderText="Tamaño" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px">
            <ItemTemplate>
                    <asp:Label runat="server" ID="lblTamañoDocumento" Text='<%# Eval("Tamaño") + " Mb" %>'></asp:Label> 
            </ItemTemplate>
            </asp:TemplateField>  
             
            <asp:BoundField DataField="FechaCreacion" DataFormatString="{0:dd/MM/yyyy}" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="125px" HeaderText="Fecha" />
             
            <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
            <ItemTemplate> 
                    <asp:ImageButton ImageAlign="Middle" CommandName='<%# Eval("Ubicacion") %>' Height="25px" ImageUrl='<%# Eval("Tipo").Equals("pdf") ? "~/Images/pdf.png" : "~/Images/doc.png" %>' ID="btnVerDocumento" 
                                     runat="server" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="IdSeccion" ItemStyle-Width="50px" HeaderText="IdSeccion" Visible="false" /> 
            <%-- <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="INFO" ItemStyle-Width="150">
            <ItemTemplate>
                    <asp:ImageButton Width="18px" ImageUrl="~/img/circle.png" ID="btnInfo" runat="server" 
                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Info" />
            </ItemTemplate>
            </asp:TemplateField> --%>
        </Columns>
        </asp:GridView>  
        
        <br>

        <p style="float: right;">
            <a id="buttonDonwload" class="btn btn buttondisable" href="#" role="button"> Descargar Seleccionados</a>
        </p> 

    </div> 
</div> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">  
 
</asp:Content>