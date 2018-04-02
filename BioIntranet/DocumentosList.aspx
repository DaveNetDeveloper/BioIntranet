<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DocumentosList.aspx.cs" Inherits="BioIntranet.DocumentosList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
      
      <style type="text/css"> 
            .gridClass th
            {   background: #024b94;
                border-right: 2px solid #FFFFFF;
                color: #ffffff;
                font-weight: 100;
                text-transform: uppercase;
                height: 31px;
                /*font-size: 14px;*/
                font-size: 0.75em;font-size: 0.75em;
            } 
            .gridClass td
            {
                font-size: 14px;
                border-right: 2px solid #FFFFFF;
                font-weight: 100;
                text-align: center;
                background-color: white;
                /* border-left: 2px solid #FFFFFF; */
                color: #024b94;
                 opacity: 0.8; 
            } 

            .imageButtonCentro:hover 
            {
                background-image: url('/img/circle.png');

            } 
            .imageButtonCentro:hover 
            {
                background-image: url('/img/circle.png');

            } 
            .linkLINKS:hover
            { 
                text-decoration: underline;
                color:white; 
            } 
            .linkLINKS
            { 
                color:white;
            } 
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">   

    <div class="row" style="margin-right: 0px; margin-left: 0px;">

    <div class="col-sm-12"> 
        
        <asp:GridView ID="gvDocumentos" runat="server" OnRowCommand="gvDocumentos_RowCommand" DataKeyNames="Id" AutoGenerateColumns="false" CssClass ="gridClass" EmptyDataText="No hay documentos.">
        <Columns> 

            <asp:BoundField DataField="Id" ItemStyle-Width="150px" HeaderText="Id" Visible="false" />

            <asp:BoundField DataField="Nombre" ItemStyle-Width="175px" HeaderText="Nombre" />

            <asp:BoundField DataField="Descripcion" ItemStyle-Width="120px" HeaderText="Descripcion" />

            <asp:BoundField DataField="Ubicacion" ItemStyle-Width="100px" HeaderText="Ubicacion" />
                            
            <asp:BoundField DataField="Tamaño" ItemStyle-Width="100px" HeaderText="Tamaño" />

            <asp:BoundField DataField="FechaCreacion" ItemStyle-Width="100px" HeaderText="FechaCreacion" />
             
            <asp:BoundField DataField="IdSeccion" ItemStyle-Width="100px" HeaderText="IdSeccion" Visible="false" />

            <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="Tipo" ItemStyle-Width="150">
            <ItemTemplate>
                    <asp:Label runat="server" ID="lblTipoDocumento" Text='<%# Eval("Tipo")%>'></asp:Label>
                    <asp:ImageButton CommandName='<%# Eval("Ubicacion")%>' Height="15px" Width="18px" ImageUrl="~/images/ping.png" ID="btnCentro" runat="server" 
                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            </ItemTemplate>
            </asp:TemplateField> 
                            
           <%-- <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="INFO" ItemStyle-Width="150">
            <ItemTemplate>
                    <asp:ImageButton Width="18px" ImageUrl="~/img/circle.png" ID="btnInfo" runat="server" 
                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Info" />
            </ItemTemplate>
            </asp:TemplateField> --%>

        </Columns>
        </asp:GridView>
         
    </div> 
</div> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">  
 
</asp:Content>