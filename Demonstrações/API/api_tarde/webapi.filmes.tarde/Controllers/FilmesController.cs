using Microsoft.AspNetCore.Mvc;
using webapi.filmes.tarde.Domains;
using webapi.filmes.tarde.Interfaces;
using webapi.filmes.tarde.Repositories;

namespace webapi.filmes.tarde.Controllers
{

    [Route("api/[controller]")]

    /// <summary>
    /// Define que é um controlador de API
    /// </summary>
    [ApiController]

    /// <summary>
    /// Define que o tipo de resposta da API é JSON
    /// </summary>


    


    [Produces("application/json")]




    public class FilmesController : ControllerBase
    {
        private IFilmeRepository _filmeRepository { get; set; }

    public FilmesController()
    {
        _filmeRepository = new FilmeRepository();
    }
        public IActionResult Get()
        {
            List<FilmeDomain> listaFilmes = new List<FilmeDomain>();
        }

    }
}
