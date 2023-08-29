using System.Data.SqlClient;
using webapi.filmes.tarde.Domains;
using webapi.filmes.tarde.Interfaces;

namespace webapi.filmes.tarde.Repositories
{
    public class FilmeRepository : IFilmeRepository
    {


        private string StringConexao = "Data Source = NOTE21-S15; Initial Catalog = Filmes_Tarde; User Id = sa; Pwd = Senai@134";
        public void AtualizarIdPor(FilmeDomain Filme)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int Id, FilmeDomain Filme)
        {
            throw new NotImplementedException();
        }

        public FilmeDomain BuscarPorId(int id)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(FilmeDomain novoFilme)
        {

            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryInsert = "INSERT INTO Filme(Nome) Values ('" + novoFilme.IdGenero + "', '" + novoFilme.Titulo +  "')";



                using (SqlCommand cmd = new SqlCommand(queryInsert, con))
                {

                    con.Open();

                    cmd.ExecuteNonQuery();
                }


            }

        }
        

        public void Deletar(int id)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryDelete = "DELETE FROM Filme Where IdFilme = @IdFilme";
                con.Open();

                using (SqlCommand cmd = new SqlCommand(queryDelete, con))
                {
                    cmd.Parameters.AddWithValue("@IdFilme", id);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public List<FilmeDomain> ListarTodos()
        {
            throw new NotImplementedException();
        }
        
       }
}