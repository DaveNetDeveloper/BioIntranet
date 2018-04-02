using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data; 

namespace BioIntranet
{
    public partial class DocumentosList : PageBase
    {
        //public DataTable dtAreas
        //{
        //    get
        //    {
        //        return Session["dtAreas"] as DataTable;
        //    }
        //    set
        //    {
        //        Session["dtAreas"] = (DataTable)value;
        //    }
        //}

        //public DataTable dtDepartamentos
        //{
        //    get
        //    {
        //        return Session["dtDepartamentos"] as DataTable;
        //    }
        //    set
        //    {
        //        Session["dtDepartamentos"] = (DataTable)value;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDocumentos();
            }
        }

        private void CargarDocumentos()
        {
            try
            {
                DocumentoEntity departamentoEntity = new DocumentoEntity(); 
                IEnumerable<DocumentoEntity> listDocumentos = departamentoEntity.ObetenerDocumentos();
                foreach (DocumentoEntity doc in listDocumentos)
                {
                      
                }
                 
                gvDocumentos.DataSource = listDocumentos;
                gvDocumentos.DataBind();
                 
            }
            catch (Exception ex)
            {
                Session["error"] = ex; 
            }
        }

        protected void gvDocumentos_RowDataBound(object sender, GridViewRowEventArgs e) 
        { 
            if (e.Row.RowType == DataControlRowType.DataRow)
            { 
                e.Row.Cells[1].Text = "<i>" + e.Row.Cells[1].Text + "</i>"; 
            } 
        }

        protected void gvDocumentos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "Ver")
            //{ 
            //}
            //else if (e.CommandName == "Descargar")
            //{ 
            //} 

            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string idDocumento = this.gvDocumentos.DataKeys[rowIndex]["Id"].ToString();

            Response.Redirect(e.CommandName);
        } 
    } 
}