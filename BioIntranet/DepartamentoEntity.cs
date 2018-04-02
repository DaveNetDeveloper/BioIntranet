using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data; 

namespace BioIntranet
{
    public class DepartamentoEntity : DbAccess
    {
        //private properties
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Responsable { get; set; }
        public int IdArea { get; set; }

        //private properties
        private DbAccess dbAccess { get; set; }
        MySqlDataReader drDepartamentos = null;

        //constructors
        public DepartamentoEntity(int id, string nombre, string descripcion, string responsable, int idArea)
        {
            InicilizarDbAcess();

            Id = id;
            Nombre = nombre;
            Descripcion = descripcion;
            Responsable = responsable;
            IdArea = idArea;
        }
        public DepartamentoEntity()
        {
            InicilizarDbAcess();
        }

        //private methods
        private void InicilizarDbAcess()
        {
            dbAccess = new DbAccess();
        } 

        //public methods
        public List<DepartamentoEntity> ObetenerDepartamentos(int idArea)
        {
            DepartamentoEntity dptoEntity;
            List<DepartamentoEntity> departamentossList = new List<DepartamentoEntity>();

            string consultaSql = String.Format("SELECT * FROM DEPARTAMENTO WHERE IDAREA = {0} ORDER BY ID", idArea);
            
            MySqlConnection mySqlConnection = dbAccess.ExecuteDataReader(consultaSql, ref drDepartamentos); 
             
            if (!drDepartamentos.IsClosed)
            {
                while (drDepartamentos.Read())
                {
                    dptoEntity = new DepartamentoEntity(drDepartamentos.GetInt32(0), drDepartamentos.GetString(1), (drDepartamentos.IsDBNull(2)) ? string.Empty : drDepartamentos.GetString(2), drDepartamentos.GetString(3), drDepartamentos.GetInt32(4));
                    departamentossList.Add(dptoEntity); 
                }
            } 
            mySqlConnection.Close();
            return departamentossList;
        }  
    }
} 