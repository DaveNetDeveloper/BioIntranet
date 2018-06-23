using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BioIntranet
{
    public partial class Inicio : PageBase
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
            //if (!IsPostBack) CargarDepartamentos();
        }

        //private IEnumerable<AreaEntity> CargarAreas()
        //{
        //    try
        //    {
        //        AreaEntity areaEntity = new AreaEntity();
        //       return areaEntity.ObetenerAreas();
        //    }
        //    catch (Exception ex)
        //    {
        //        Session["error"] = ex;
        //        return null;
        //    }
        //}

        //private void CargarDepartamentos()
        //{
        //    try
        //    {
        //        DepartamentoEntity departamentoEntity = new DepartamentoEntity();

        //        IEnumerable<AreaEntity> listAreas = CargarAreas();//.Distinct(new AreaEntity().Id);
        //        foreach (AreaEntity area in listAreas)
        //        {
        //            foreach (DepartamentoEntity departamento in departamentoEntity.ObetenerDepartamentos(area.Id))
        //            {
        //                CrearListaDepartamentosPorArea(departamento.Id, departamento.Nombre, departamento.Descripcion, departamento.Responsable, area.Nombre);
        //            }
        //        }


        //        //Pruebas -> NO BORRAR
        //        //ContentPlaceHolder myPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentSection");
        //        //HtmlGenericControl h2Pruebas = (HtmlGenericControl)myPlaceHolder.FindControl("h2Pruebas");

        //        //IEnumerable<AreaEntity> list1 = CargarAreas();
        //        //AreaEntity primerArea = CargarAreas().Where(a => a.Id == 1).ElementAt(0);
        //        //h2Pruebas.InnerText = primerArea.Nombre;


        //    }
        //    catch (Exception ex)
        //    {
        //        Session["error"] = ex;
           
        //    }
        //}
        
        private void CrearListaDepartamentosPorArea(Int32 id, string nombre, string descripcion, string responsable, string areaName)
        {
            try {   
                ContentPlaceHolder myPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentSection");
                HtmlControl divContent = (HtmlControl)myPlaceHolder.FindControl(areaName.Replace(" ", string.Empty) + "Content");

                if(divContent != null) {
                    HtmlGenericControl pTituloDpto = new HtmlGenericControl("p");
                    pTituloDpto.Attributes.Add("class", "cat");
                    pTituloDpto.Attributes.Add("runat", "server");
                    pTituloDpto.Attributes.Add("id", "p" + id.ToString());
                    pTituloDpto.Attributes.Add("width", "auto");
                    pTituloDpto.InnerHtml = "<span></span>";

                    HtmlGenericControl aDpto = new HtmlGenericControl("a");
                    aDpto.Attributes.Add("title", nombre);
                    aDpto.Attributes.Add("id", "aDpto" + id.ToString()); 
                    aDpto.Attributes.Add("href", "DocumentosList.aspx?Id=" + id.ToString()); 
                    aDpto.Attributes.Add("runat", "server");
                    aDpto.InnerText = descripcion; //+ " - " + nombre; 

                    pTituloDpto.Controls.Add(aDpto);
                    divContent.Controls.Add(pTituloDpto);
                }
            }
            catch (Exception ex) {
                Session["error"] = ex;
            }
        }
    }
}