using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data; 

namespace BioIntranet
{
    public class DocumentoEntity : DbAccess
    {
        //private properties
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Ubicacion { get; set; }
        public int Tamaño { get; set; }
        public int IdSeccion { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string Tipo { get; set; }

        //private properties
        private DbAccess dbAccess { get; set; }

        //constructors
        public DocumentoEntity(int id, string nombre, string descripcion, string ubicacion, int tamaño, int idSeccion, DateTime fechaCreacion)
        {
            InicilizarDbAcess();

            Id = id;
            Nombre = nombre;
            Descripcion = descripcion;
            Ubicacion = ubicacion;
            Tamaño = tamaño;
            IdSeccion = idSeccion;
            FechaCreacion = fechaCreacion;
            Tipo = VirtualPathUtility.GetExtension(nombre);
        }
        public DocumentoEntity()
        {
            InicilizarDbAcess();
        }

        //private methods
        private void InicilizarDbAcess()
        {
            dbAccess = new DbAccess();
        } 

        //public methods
        public List<DocumentoEntity> ObetenerDocumentos()
        {
            DocumentoEntity documentoEntity;
            List<DocumentoEntity> documentosList = new List<DocumentoEntity>();

            string consultaSql = "SELECT * FROM DOCUMENTO ORDER BY ID";
            MySqlDataReader drDocumentos = null;
            MySqlConnection mySqlConnection = dbAccess.ExecuteDataReader(consultaSql, ref drDocumentos); 
              
            if (!drDocumentos.IsClosed)
            {
                while (drDocumentos.Read())
                {

                    documentoEntity = new DocumentoEntity(drDocumentos.GetInt32(0), drDocumentos.GetString(1),(drDocumentos.IsDBNull(3)) ? string.Empty : drDocumentos.GetString(3),  drDocumentos.GetString(2), drDocumentos.GetInt32(4), (drDocumentos.IsDBNull(5)) ? 0 : drDocumentos.GetInt32(5), drDocumentos.GetDateTime(6));
                    documentosList.Add(documentoEntity); 
                }
            } 
            mySqlConnection.Close();
            return documentosList;
        }  
    }
}