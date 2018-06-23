using System;
using System.Web.UI.WebControls;

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
                //CargarDocumentos();

                BussinesTypedObject typedBO = new BussinesTypedObject {
                    ModelLayerType = typeof(ModelUsuarioAlumno),
                    DataTableName = DaoBase.DataTableNames.User_Alumno
                };

                var docs = new Entity(typedBO).GetList();
                 
            }
        }

        //private void CargarDocumentos()
        //{
        //    try {
        //        DocumentoEntity departamentoEntity = new DocumentoEntity();
        //        IEnumerable<DocumentoEntity> listDocumentos = departamentoEntity.ObetenerDocumentos();
        //
        //        foreach (DocumentoEntity doc in listDocumentos)
        //        {
        //
        //        }
        //
        //        gvDocumentos.DataSource = listDocumentos;
        //        gvDocumentos.DataBind();
        //
        //    }
        //    catch (Exception ex) {
        //        Session["error"] = ex; 
        //    }
        //}

        protected void chkSel_Checked(object sender, System.EventArgs e)
        {
            //try
            //{
            //    Int32 rowSelectedRow = ((GridViewRow)((CheckBox)sender).Parent.Parent).RowIndex;
            //    Int32 idselected = Convert.ToInt32(gvTest.DataKeys[rowSelectedRow].Value);
            //    List<Int32> lst = controlSelectedCenter(Convert.ToInt32(gvTest.DataKeys[rowSelectedRow].Value));

            //    if (((CheckBox)sender).Checked)
            //    {
            //        gvTest.Rows[rowSelectedRow].BackColor = System.Drawing.ColorTranslator.FromHtml("lemonchiffon");
            //        Session["SelectedTest"] = (Int32)Session["SelectedTest"] + 1;
            //        Int32 SelectedRow = ((GridViewRow)(((CheckBox)sender).Parent.Parent)).RowIndex;

            //        dtTest.Rows[rowSelectedRow]["chkSelect"] = true;
            //    }
            //    else
            //    {
            //        gvTest.Rows[rowSelectedRow].BackColor = System.Drawing.Color.White;

            //        Session["SelectedTest"] = (Int32)Session["SelectedTest"] - 1;

            //        lst.Remove(idselected);
            //        Session["SelectedTestID"] = lst;
            //        dtTest.Rows[rowSelectedRow]["chkSelect"] = false;
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Session["error"] = ex;
            //}
        }
        protected void chkSelAll_Checked(object sender, System.EventArgs e)
        {
            try
            {
                //Dim rowSelectedRow As Integer = TryCast(TryCast(sender, CheckBox).Parent.Parent, GridViewRow).RowIndex

                //System.Drawing.Color color;
                //Boolean check;

                //if (((CheckBox)sender).Checked)
                //{
                //    check = true;
                //    color = System.Drawing.ColorTranslator.FromHtml("lemonchiffon");
                //    Session["SelectedTest"] = dtTest.Rows.Count;

                //    Int32 SelectedRow = ((GridViewRow)(((CheckBox)sender).Parent.Parent)).RowIndex;

                //}
                //else
                //{
                //    check = false;
                //    color = System.Drawing.Color.White;



                //}

                //Session["Checkall_selected"] = check;

                //foreach (GridViewRow row in gvTest.Rows)
                //{
                //    CheckBox cb = (CheckBox)(row.FindControl("chkSel"));
                //    cb.Checked = check;
                //    row.BackColor = color;

                //    Int32 idselected = Convert.ToInt32(gvTest.DataKeys[row.RowIndex].Value);
                //    if (check)
                //    {
                //        controlSelectedCenter(idselected);
                //    }
                //    else
                //    {
                //        controlSelectedCenter(idselected);
                //        //lo elimino aki fuera, pk no me va bien meter dentro el remove.
                //        ((List<Int32>)Session["SelectedTestID"]).Remove(idselected);
                //    }

                //}
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
            string idDocumento = gvDocumentos.DataKeys[rowIndex]["Id"].ToString();

            Response.Redirect(e.CommandName);
        } 
    } 
}