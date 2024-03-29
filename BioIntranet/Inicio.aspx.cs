﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data; 

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
            if (!IsPostBack)
            { 
                CargarDepartamentos();
            }
            else
            {
                if (Request["__EVENTTARGET"] != null && Request["__EVENTTARGET"].Equals("FiltrarListado"))
                {
                    HtmlInputText txtSearch = (HtmlInputText)Master.FindControl("txtSearch");

                    if (txtSearch.Value.Trim() != string.Empty)
                    {
                        //gvCenter.DataSource = CargarDepartamentos(txtSearch.Value);
                        //gvCenter.DataSource = dtCenter;
                        //gvCenter.DataBind();
                    }
                    else
                    {
                        //gvCenter.DataSource = CargarGridView(string.Empty);
                        //gvCenter.DataSource = dtCenter;
                        //gvCenter.DataBind();
                    }
                }
            }
        } 

        protected void CargarDepartamentos()
        {
            try
            {  
                DepartamentoEntity departamentoEntity = new DepartamentoEntity();
                for (int idArea = 1; idArea <= 5; idArea++)
                {
                    foreach (DepartamentoEntity departamento in departamentoEntity.ObetenerDepartamentos(idArea))
                    {
                        AreaEntity areaEntity = new AreaEntity();
                        areaEntity.ObetenerAreas(departamento.IdArea);

                        CrearListaDepartamentosPorArea(departamento.Id, departamento.Nombre, departamento.Descripcion, departamento.Responsable, areaEntity.Nombre);
                    }
                } 
            }
            catch (Exception ex)
            {
                Session["error"] = ex;
            }
        }

        protected void CargarDepartamentos(string filter)
        {
            try
            {
                //DepartamentoEntity departamentoEntity = new DepartamentoEntity();
                //for (int idArea = 1; idArea <= 5; idArea++)
                //{
                //    foreach (DepartamentoEntity departamento in departamentoEntity.ObetenerDepartamentos(idArea))
                //    {
                //        AreaEntity areaEntity = new AreaEntity();
                //        areaEntity.ObetenerAreas(departamento.IdArea);

                //        CrearListaDepartamentosPorArea(departamento.Id, departamento.Nombre, departamento.Descripcion, departamento.Responsable, areaEntity.Nombre);
                //    }
                //}
            }
            catch (Exception ex)
            {
                Session["error"] = ex;
            }
        }
         
        private void CrearListaDepartamentosPorArea(Int32 id, string nombre, string descripcion, string responsable, string areaName)
        {
            try
            {   
                ContentPlaceHolder myPlaceHolder = (ContentPlaceHolder)Master.FindControl("ContentSection");
                HtmlControl divContent = (HtmlControl)myPlaceHolder.FindControl(areaName.Replace(" ", string.Empty) + "Content");

                if(divContent != null) 
                {
                    HtmlGenericControl pTituloDpto = new HtmlGenericControl("p");
                    pTituloDpto.Attributes.Add("class", "cat");
                    pTituloDpto.Attributes.Add("runat", "server");
                    pTituloDpto.Attributes.Add("id", "p" + id.ToString());
                    pTituloDpto.Attributes.Add("width", "auto");
                    pTituloDpto.InnerHtml = "<span></span>";

                    HtmlGenericControl aDpto = new HtmlGenericControl("a");
                    aDpto.Attributes.Add("title", nombre);
                    aDpto.Attributes.Add("id", "aDpto" + id.ToString());
                    aDpto.Attributes.Add("href", "InicioDpto.aspx?Id=" + id.ToString());
                    aDpto.Attributes.Add("runat", "server");
                    aDpto.InnerText = descripcion; //+ " - " + nombre;
                
                    pTituloDpto.Controls.Add(aDpto);
                    divContent.Controls.Add(pTituloDpto);
                }
            }
            catch (Exception ex)
            {
                Session["error"] = ex;
            }
        }
    }
}