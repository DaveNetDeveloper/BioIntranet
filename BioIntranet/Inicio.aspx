<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="BioIntranet.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
    <link rel="stylesheet" href="Content/vallenato.css" type="text/css" media="screen"> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">  
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
</asp:Content>