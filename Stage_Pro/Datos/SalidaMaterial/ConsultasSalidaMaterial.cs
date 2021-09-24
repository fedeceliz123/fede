﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Datos.SalidaMaterial
{
    public class ConsultasSalidaMaterial:ConexionDB
    {

        public void cargarSalidaMaterial(Entidades.SalidaMaterial sal)
        {
            string consulta = "insert into salida_material (id_evento,codigo_material,cantidad)values(@eve,@cod,@cant)";
            SqlCommand cmd = new SqlCommand(consulta, Conetar());

            cmd.Parameters.AddWithValue("@eve",sal.id_evento );
            cmd.Parameters.AddWithValue("@cod", sal.codigo_material);
            cmd.Parameters.AddWithValue("@cant", sal.cantidad);
            cmd.ExecuteNonQuery();

        }

        public DataTable LiastarSalidas(int id)
        {
            DataTable dt = new DataTable();
            string consulta = "select s.id,s.id_evento,s.codigo_material as 'Codigo',t.Tipo+' '+mo.modelo+' '+me.medida+' '+fr.formato as 'Material' ,s.cantidad as 'Cantidad' from salida_material s,material m,tipo_material t,modelo_material mo,medida_material me,formato_material fr where m.formato=fr.id and m.medida=me.id and m.tipo=t.Id and m.modelo=mo.id and m.codigo=s.codigo_material and id_evento=" + id ;
            SqlDataAdapter da = new SqlDataAdapter(consulta, Conetar());
            DataSet ds = new DataSet();
            da.Fill(ds);

            dt = ds.Tables[0];


            return dt;
        }
        public DataTable LiastarEntrada(int id)
        {
            DataTable dt = new DataTable();
            string consulta = "select s.id,s.id_evento,s.codigo_material as 'Codigo',t.Tipo+' '+mo.modelo+' '+me.medida+' '+fr.formato as 'Material' ,s.cantidad as 'Cantidad' from entrada_material s,material m,tipo_material t,modelo_material mo,medida_material me,formato_material fr where m.formato=fr.id and m.medida=me.id and m.tipo=t.Id and m.modelo=mo.id and m.codigo=s.codigo_material and id_evento=" + id;
            SqlDataAdapter da = new SqlDataAdapter(consulta, Conetar());
            DataSet ds = new DataSet();
            da.Fill(ds);

            dt = ds.Tables[0];


            return dt;
        }

        public void CargarIngreso(EntradaMaterial enMat)
        {
            string consulta = "insert into entrada_material (id_evento,codigo_material,cantidad)values(@eve,@cod,@cant)";
            SqlCommand cmd = new SqlCommand(consulta, Conetar());

            cmd.Parameters.AddWithValue("@eve", enMat.id_evento);
            cmd.Parameters.AddWithValue("@cod", enMat.codigo_material);
            cmd.Parameters.AddWithValue("@cant", enMat.cantidad);
            cmd.ExecuteNonQuery();

        }


        public bool ExisteSalida(int id)
        {
            bool existe ;

            string consulta = "select * from salida_material where id_evento=" + id;
            SqlCommand cmd = new SqlCommand(consulta,Conetar());
            SqlDataReader leer = cmd.ExecuteReader();

            existe = leer.Read();


            return existe;

        }

        public void actualizarDisp(int cantidad, string codigo)
        {
            string consulta = "update material set disponobilidad=disponobilidad+@cant where codigo=@cod";
            SqlCommand cmd = new SqlCommand(consulta, Conetar());

            cmd.Parameters.AddWithValue("@cant", cantidad);
            cmd.Parameters.AddWithValue("@cod", codigo);

            cmd.ExecuteNonQuery();
        }

        public void QuitarElemento(int id)
        {
            string consulta = "delete salida_material where id=@id";
            SqlCommand cmd = new SqlCommand(consulta, Conetar());

            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();
        }

        public void QuitarElementoEntrada(int id)
        {
            string consulta = "delete entrada_material where id=@id";
            SqlCommand cmd = new SqlCommand(consulta, Conetar());

            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();
        }

    }
}
