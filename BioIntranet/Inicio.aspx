<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="BioIntranet.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
     <style  type="text/css">
            .searchInput {
                background: no-repeat 10px 6px #fcfcfc;
                border: 1px solid #d1d1d1;
                font: bold 12px Arial,Helvetica,Sans-serif;
                color: #bebebe;
                width: 150px;
                padding: 6px 15px 6px 15px;
                text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
                -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset;
                -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.15) inset;
                -webkit-transition: all 0.7s ease 0s;
                -moz-transition: all 0.7s ease 0s;
                -o-transition: all 0.7s ease 0s;
                transition: all 0.7s ease 0s;
                height: 29px;
                }

            .searchInput:focus {
                width: 225px;
            } 
        </style>

        <link rel="stylesheet" href="Content/vallenato.css" type="text/css" media="screen"> 
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> 
        <link href="Content/css3-buttons.css" rel="stylesheet" />
        <link href="Content/component.css" rel="stylesheet" />


  

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">  
    
     <br> 

    <div class="row" style="margin-right: 0px; margin-left: 20px;"> 
         
         <%-- <div class="col-sm-6">  
	            <nav>
		        <ol class="cd-breadcrumb custom-separator">
			        <li><a href="#0">Inicio</a></li>
			        <li><a href="#0">Comité de Empresa</a></li>
			        <li class="current"><a href="#0">Documentos</a></li> 
		        </ol>
	        </nav> 
        </div> 
         --%>
        <div class="col-sm-6"> 
                <input name="txtSearch" style="float: left" runat="server" id="txtSearch" class="searchInput" value="" type="text" size="40" placeholder="..." />
                  &nbsp; &nbsp; &nbsp;
                <button runat="server" id="btnBuscar" style="margin-left: 10px; float: left;" class="action"> <%--onclick="javascript:FiltrarListado();"--%>
                    <span style="margin-left: 20px;height: 16px;" class="label">
                    </span> 
                </button>    
        </div>  
  
         
    </div>
     
    <br> 

    <div class="row" style="margin-right: 0px; margin-left: 0px;">
    <div class="col-sm-3"> 

        <%--<h2 id="h2Pruebas" runat="server"> pruebas </h2> --%> 

        <div runat="server" id="accordion_container" style="width:100%; margin-left: 20px;"> 
            <h2 class="accordion-header" style="margin-top:0px">COMITÉ DE EMPRESA</h2>  
            <div runat="server" style="width:100%" id="ComitéDeEmpresaContent" class="accordion-content"></div>  
            
            <h2 class="accordion-header">RECURSOS HUMANOS</h2> 
            <div id="RecursosHumanosContent" style="width:100%" runat="server" class="accordion-content"></div>  
            
            <h2 class="accordion-header">INVESTIGACIÓN + DESARROLLO</h2>  
            <div id="InvestigaciónyDesarrolloContent" style="width:100%" runat="server" class="accordion-content"></div>
            
            <h2 class="accordion-header">MÁRKETING</h2> 
            <div id="MarketingContent" style="width:100%" runat="server" class="accordion-content"></div>  
            
            <h2 class="accordion-header">PRODUCCIÓN</h2> 
            <div id="ProducciónContent" style="width:100%" runat="server" class="accordion-content"></div> 

           <br> 

        </div>   
    </div>
    <div class="col-sm-9"> 
    <div class="jumbotron" style="padding-left: 30px;margin-left: 20px;margin-right: 25px;padding-right: 30px;padding-top: 15px;padding-bottom: 20px;border: 1px solid #D8D8D8 !important;    background: #F2F2F2;    background: -webkit-linear-gradient(top, #F5F5F5, #F1F1F1);    background: -moz-linear-gradient(top, #F5F5F5, #F1F1F1);   background: -ms-linear-gradient(top, #F5F5F5, #F1F1F1);    background: -o-linear-gradient(top, #F5F5F5, #F1F1F1);    -webkit-transition: border .20s;    -moz-transition: border .20s;    -o-transition: border .20s;    transition: border .20s;">
        <h2 style="color: #E74C3C; margin-bottom: 20px;font-weight:bold;">Título de una noticía</h2> 
        <p>
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 
        </p>
        <p style="text-align: right;">
            <a class="btn btn-lg btn-primary" href="#" role="button">Leer más &raquo;</a>
        </p>
    </div> 
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">  
    <script src="Scripts/vallenato.js" type="text/javascript"></script>  
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript"> 
        //function FiltrarListado() {

        //    //alert("Do PostBack ?");
        //   //__doPostBack('FiltrarListado', 'FiltrarListado');
        //} 
    </script>
</asp:Content>