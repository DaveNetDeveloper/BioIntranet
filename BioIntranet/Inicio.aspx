<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="BioIntranet.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
    <link rel="stylesheet" href="Content/vallenato.css" type="text/css" media="screen"> 

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
                width: 200px;
            } 
        </style>  

        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> 
        <link href="Content/css3-buttons.css" rel="stylesheet" />
        <link href="Content/component.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">  
      
    <div class="row">
        <div class="col-sm-8"> 
            &nbsp;&nbsp;&nbsp;
        </div>
        <div class="col-sm-4" style="margin-bottom:10px; float:right;"> 
            <input name="txtSearch" runat="server" id="txtSearch" class="searchInput" value="" type="text" size="40" placeholder="..." />
            <button runat="server" onclick="javascript:FiltrarListado();" id="btnBuscar" style="float: right;" class="action">
                <span style="background-image: url(http://up2web.es/EscuelaNauticaSantalo_ContentManager/Images/png/lupa.png);background-repeat: no-repeat;background-size: contain;margin-left: 20px;height: 16px;" class="label">
                </span> 
            </button>                   
        </div>
    </div>
            
    <div class="row">
    <div class="col-sm-3"> 
        <div runat="server" id="accordion_container" style="width:100%"> 
            <h2 class="accordion-header" style="margin-top:0px">COMITE DE EMPRESA</h2>  
            <div runat="server" style="width:100%" id="ComitedeEmpresaContent" class="accordion-content"></div>  
            
            <h2 class="accordion-header">RECURSOS HUMANOS</h2> 
            <div id="RecursosHumanosContent" style="width:100%" runat="server" class="accordion-content"></div>  
            
            <h2 class="accordion-header">INVESTIGACIÓN + DESARROLLO</h2>  
            <div id="InvestigaciónyDesarrolloContent" style="width:100%" runat="server" class="accordion-content"></div>
            
            <h2 class="accordion-header">MÁRKETING</h2> 
            <div id="MarketingContent" style="width:100%" runat="server" class="accordion-content"></div>  
            
            <h2 class="accordion-header">PRODUCCIÓN</h2> 
            <div id="ProducciónContent" style="width:100%" runat="server" class="accordion-content"></div> 
        </div>   
    </div>
    <div class="col-sm-9"> 
    <div class="jumbotron">
        <h1>Navbar example</h1>
        <p>
            This example is a quick exercise to illustrate how the default, static navbar and
            fixed to top navbar work. It includes the responsive CSS and HTML, so it also adapts
            to your viewport and device.
        </p>
        <p>
            <a class="btn btn-lg btn-primary" href="#" role="button">View navbar docs &raquo;</a>
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
        function FiltrarListado() {
            alert("ahhh ahhh ahhh");
            __doPostBack('FiltrarListado', 'FiltrarListado');
        } 
    </script>

</asp:Content>