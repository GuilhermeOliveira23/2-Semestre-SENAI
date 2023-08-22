using System.Data.SqlClient;
using webapi.filmes.tarde.Domains;
using webapi.filmes.tarde.Interfaces;

namespace webapi.filmes.tarde.Repositories
{
    public class GeneroRepository : IGeneroRepository
    {

        /// <summary>
        /// String de conexão com o banco de dados que recebe os seguintes parâmetros:
        /// Data Source : Nome do servidor do banco
        /// Initial Catalog: Nome do banco de dados
        /// Autenticação
        /// -windows : Integrated Security = True
        /// -SqlServer : User Id = sa; Pwd = Senha
        /// </summary>
        /// 

        private string StringConexao = "Data Source = NOTE21-S15; Initial Catalog = Filmes; User Id = sa; Pwd = Senai@134";


        public void AtualizarIdPor(GeneroDomain Genero)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int Id, GeneroDomain Genero)
        {
            throw new NotImplementedException();
        }

        public GeneroDomain BuscarPorId(int id)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(GeneroDomain novoGenero)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int Id)
        {
            throw new NotImplementedException();
        }


        /// <summary>
        /// Listar todos os objetos do tipo gênero
        /// </summary>
        /// <returns>Lista de objetos do tipo gênero</returns>
        
        public List<GeneroDomain> ListarTodos()
        {
            //Cria uma lista de generos onde será armazenados os generos
           List<GeneroDomain> listaGeneros =  new List<GeneroDomain>();

            //Declara a SqlConnection passando a string de conexão como parâmetro
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                //Declara  a instrução a ser executada
                string? querySelectAll = "Select IdGenero, Nome From Genero";


                //Abre a conexão com o banco de dados
                con.Open();

                //Declara o SqlDataReader para percorrer(ler) a tabela no banco de dados
                SqlDataReader rdr;


                //Declara o SqlCommand passando a query que será executada e a conexão
                using (SqlCommand cmd = new SqlCommand(querySelectAll,con))
                {
                    //Executa a query e armazena os dados no rdr
                   rdr =  cmd.ExecuteReader();

                    //Enquanto houver registros para serem lidos no rdr
                    //o laço se repetirá
                    while (rdr.Read()) {
                        GeneroDomain genero = new GeneroDomain()
                        {
                            //Atribui a propriedade IdGenero o valor da primeira coluna da tabela
                            IdGenero = Convert.ToInt32(rdr[0]),

                            //Atribui a propriedade Nome o valor da coluna Nome
                            Nome = rdr["Nome"].ToString()

                        };

                        //Adiciona o objeto criado dentro da lista
                        listaGeneros.Add(genero);
                    
                    }
                }


                
            }

            //retorna a lista de gêneros
            return listaGeneros;
        }

    }
}
