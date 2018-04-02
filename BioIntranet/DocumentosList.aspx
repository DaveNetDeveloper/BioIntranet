<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DocumentosList.aspx.cs" Inherits="BioIntranet.DocumentosList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">  
      
      <style type="text/css"> 
            .gridClass th
            {       
                    background: #5091cd;
                    border-right: 2px solid #FFFFFF;
                    color: #ffffff;
                    font-weight: bold;
                    text-transform: uppercase;
                    height: 31px;
                    font-size: 0.9em;
                    text-align: center;
                    cursor: pointer;
            }
             
            .gridClass th:hover
            {       
                    border-right: 2px solid #FFFFFF;
                    color: #ffffff; 
                    text-transform: uppercase;
                    height: 31px;
                    font-size: 0.9em;
                    text-align: center;
                    font-weight: bold;
            }
             
            .gridClass td
            {
                font-size: 14px;
                border-right: 2px solid #FFFFFF;
                font-weight: 100;
                /*text-align: center;*/

                /*background-color: white; */
                /* border-left: 2px solid #FFFFFF; */
                /* color: #024b94;
                opacity: 0.8; */
            } 
               
            .gridClass tr
            {
                 height: 40px;
            } 
                 
            .gridClass tr:hover
            {
                /*background-color: #367fc3; 
                color: white;
                cursor: pointer;*/ 
               /* opacity: 0.8; */

                background-image: -webkit-linear-gradient(top,#fff 0,#F5F5DC 100%);
                background-image: -o-linear-gradient(top,#fff 0,#F5F5DC 100%);
                background-image: -webkit-gradient(linear,left top,left bottom,from(#fff),to(#F5F5DC));
                background-image: linear-gradient(to bottom,#fff 0,#F5F5DC 100%);

            } 
                 
            .gridClass td:hover
            {
                /*background-color: #367fc3; 
                /*color: white;*/
                cursor: pointer; 
            } 
  
        </style>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">   

     
    <div class="row" style="margin-right: 0px; margin-left: 0px;">

    <div class="col-sm-12"> 
        
        <asp:GridView ID="gvDocumentos" Width="100%" runat="server" OnRowDataBound="gvDocumentos_RowDataBound" OnRowCommand="gvDocumentos_RowCommand" DataKeyNames="Id" AutoGenerateColumns="false" CssClass ="gridClass" EmptyDataText="No hay documentos.">
        <Columns> 
             
            <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
            <ItemTemplate> 
                    <asp:ImageButton ImageAlign="Middle" CommandName='<%# Eval("Ubicacion") %>' Height="25px" ImageUrl='<%# Eval("Tipo").Equals("pdf") ? "~/Images/pdf.png" : "~/Images/doc.png" %>' ID="btnVerDocumento" 
                                     runat="server" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
            </ItemTemplate>
            </asp:TemplateField> 

            <asp:BoundField DataField="Tipo" ItemStyle-Width="50px" Visible="false" />

            <asp:BoundField DataField="Id" ItemStyle-Width="50px" HeaderText="Id" Visible="false" />

            <asp:BoundField DataField="Nombre" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left" HeaderText="Nombre" />

            <asp:BoundField DataField="Descripcion" ItemStyle-Width="125px" ItemStyle-HorizontalAlign="Left" HeaderText="Descripcion" />

            <asp:BoundField DataField="Ubicacion" ItemStyle-Width="175px" ItemStyle-HorizontalAlign="Left" HeaderText="Ubicacion" /> 

            <asp:TemplateField ItemStyle-VerticalAlign="Middle" HeaderStyle-VerticalAlign="Middle" HeaderText="Tamaño" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="75px">
            <ItemTemplate>
                    <asp:Label runat="server" ID="lblTamañoDocumento" Text='<%# Eval("Tamaño") + " Mb" %>'></asp:Label> 
            </ItemTemplate>
            </asp:TemplateField>  
             
            <asp:BoundField DataField="FechaCreacion" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="100px" HeaderText="Fecha" />
             
            <asp:BoundField DataField="IdSeccion" ItemStyle-Width="50px" HeaderText="IdSeccion" Visible="false" />

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