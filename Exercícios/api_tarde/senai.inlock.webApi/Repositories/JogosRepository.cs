using senai.inlock.webApi.Domains;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace senai.inlock.webApi.Repositories
{


    public class JogosRepository
    {

        private string StringConexao = "Data Source = NOTE21-S15; Initial Catalog = Filmes_Tarde; User Id = sa; Pwd = Senai@134";
        public void Cadastrar(JogosDomain novoJogo)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryInsert = "Insert into Jogo(Nome,Descricao, DataLancamento, Valor) Values ('" + novoJogo.Nome + "', '" + novoJogo.Descricao+ "', '"+ novoJogo.DataLancamento +"','"+ novoJogo.Valor + "')";

                    using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();
                    cmd.ExecuteNonQuery();



                }


            }
            

        }
        public List<JogosDomain> ListarTodos()
        {
            List<JogosDomain> listaJogos = new List<JogosDomain>();


            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string? querySelectAll = "Select IdJogo,Estudio.IdEstudio, Estudio.Nome, Descricao, DataLancamento,Valor from Jogo left join Estudio on Jogo.IdEstudio = Estudio.IdEstudio";
                con.Open();

                SqlDataReader rdr;

                using (SqlCommand cmd = new SqlCommand(querySelectAll,con))
                {
                    rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        JogosDomain jogo = new JogosDomain()
                        {
                            IdJogo = Convert.ToInt32(rdr[0]),
                            IdEstudio = Convert.ToInt32(rdr[1]),

                            Nome = rdr["Nome"].ToString(),
                            Descricao = rdr["Descricao"].ToString(),

                            DataLancamento = Convert.ToDateTime(rdr[2]),

                            Valor = Convert.ToDecimal(rdr[3]),

                             Estudio = new EstudioDomain()
                            {
                             

                                Nome = rdr["Nome"].ToString(),

                            }

                   
                        };


                        listaJogos.Add(jogo);








                    }
                }
                return listaJogos;
            }

        }


    }
}
