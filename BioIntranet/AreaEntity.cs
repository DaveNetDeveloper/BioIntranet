using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data; 

namespace BioIntranet
{
    public class AreaEntity : DbAccess
    {
        //private properties
        private int Id { get; set; }
        private string Nombre { get; set; }
        private string Descripcion { get; set; }
        private string Responsable { get; set; }

        //private properties
        private DbAccess dbAccess { get; set; }

        //constructors
        public AreaEntity(int id, string nombre, string descripcion, string responsable)
        {
            InicilizarDbAcess();

            Id = id;
            Nombre = nombre;
            Descripcion = descripcion;
            Responsable = responsable; 
        }
        public AreaEntity()
        {
            InicilizarDbAcess();
        }

        //private methods
        private void InicilizarDbAcess()
        {
            dbAccess = new DbAccess();
        } 

        //public methods
        public List<AreaEntity> ObetenerAreas()
        {
            AreaEntity areaEntity;
            List<AreaEntity> areasList = new List<AreaEntity>();
             
            string consultaSql = " SELECT * FROM AREA ORDER BY ID";
            MySqlDataReader drAreas = null;
            MySqlConnection mySqlConnection = dbAccess.ExecuteDataReader(consultaSql, ref drAreas); 
             
            string areaName = string.Empty; 

            if (!drAreas.IsClosed)
            {
                while (drAreas.Read())
                {
                    areaEntity = new AreaEntity(drAreas.GetInt32(0), drAreas.GetString(1), (drAreas.IsDBNull(2)) ? string.Empty : drAreas.GetString(2), drAreas.GetString(3));
                    areasList.Add(areaEntity); 
                }
            } 
            mySqlConnection.Close();
            return areasList;
        }

        public AreaEntity ObetenerAreas(int idArea)
        {
            AreaEntity areaEntity = null;
            string consultaSql = String.Format("SELECT * FROM AREA WHERE ID = {0}", idArea);
            MySqlDataReader drAreas = null;
            MySqlConnection mySqlConnection = dbAccess.ExecuteDataReader(consultaSql, ref drAreas);

            string areaName = string.Empty;

            if (!drAreas.IsClosed)
            {
                while (drAreas.Read())
                {
                    areaEntity = new AreaEntity(drAreas.GetInt32(0), drAreas.GetString(1), (drAreas.IsDBNull(2)) ? string.Empty : drAreas.GetString(2), drAreas.GetString(3));
                }
            }
            mySqlConnection.Close();

            Id = areaEntity.Id;
            Nombre = areaEntity.Nombre;
            Descripcion = areaEntity.Descripcion;
            Responsable = areaEntity.Responsable; 

            return areaEntity;
        } 
    }
} 