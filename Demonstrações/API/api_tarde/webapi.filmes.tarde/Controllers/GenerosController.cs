using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using webapi.filmes.tarde.Domains;
using webapi.filmes.tarde.Interfaces;
using webapi.filmes.tarde.Repositories;

namespace webapi.filmes.tarde.Controllers
{

    /// <summary>
    /// Define que a rota de uma requisição será no seguinte formato
    /// dominio/api/nomeController
    /// exemplo: http://localhost:7288/api/Genero
    /// </summary>
    /// 
    [Route("api/[controller]")]

    /// <summary>
    /// Define que é um controlador de API
    /// </summary>
    [ApiController]

    /// <summary>
    /// Define que o tipo de resposta da API é JSON
    /// </summary>

    
    
    [Produces("application/json")]
    public class GenerosController : ControllerBase
    {

       /// <summary>
       /// Objeto que irá receber os métodos definidos na interface
       /// </summary>
        private IGeneroRepository _generoRepository { get; set; }


        /// <summary>
        /// Instância o objeto _generoRepository para que haja referência 
        /// aos métodos no repositório
        /// </summary>
        public GenerosController()
        {
            _generoRepository = new GeneroRepository();
        }
        /// <summary>
        /// Endpoint que acessa o método de listar gêneros
        /// </summary>
        /// <returns>Lista de gêneros e um status code</returns>

        [HttpGet]
        public IActionResult Get()
        {
           

            try
            {
            //Cria uma lista para receber os generos
            List<GeneroDomain> listaGenero =  _generoRepository.ListarTodos();
            // retorna a lista no formato de JSON e o status code(Ok = 200)
            return Ok(listaGenero);
            }

            catch (Exception erro)
            {
                //Retorna um status code 400 - BadRequest e a mensagem de erro
                return BadRequest(erro.Message);
                throw;
            }


        }

        *// public GeneroDomain BuscarPorId(int id)
        {
            public GeneroDomain BuscarPorId(int id)
            {

                using (SqlConnection con = new SqlConnection(StringConexao)
            {
                GeneroDomain GeneroBuscado = IdGenero.Find(x => x.Contains(id));


                return GeneroBuscado;
            }
        //*
        }
    }
}
