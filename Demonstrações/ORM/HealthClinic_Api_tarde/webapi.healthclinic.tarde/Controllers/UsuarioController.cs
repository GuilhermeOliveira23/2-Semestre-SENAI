using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using webapi.healthclinic.tarde.Domains;
using webapi.healthclinic.tarde.Interfaces;
using webapi.healthclinic.tarde.Repositories;

namespace webapi.healthclinic.tarde.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Produces("application/json")]
    public class UsuarioController : ControllerBase
    {
        private IUsuarioRepository _usuarioRepository;


        public UsuarioController()
        {

            _usuarioRepository = new UsuarioRepository();

        }

        [HttpPost]
        public IActionResult Post(Usuario usuario)
        {

            try
            {
                _usuarioRepository.Cadastrar(usuario);
                return StatusCode(201);

            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }


        }

        [HttpDelete]
        public IActionResult Delete(Guid id)
        {

            try
            {
                _usuarioRepository.Deletar(id);
                return NoContent();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }

        }


        [HttpGet]
        public IActionResult Get(Guid id)
        {

            try
            {
                
                return Ok(_usuarioRepository.Listar());
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }



        }

        [HttpPut("{id}")]
        public IActionResult Put(Usuario usuario, Guid id)
        {
            try
            {
                _usuarioRepository.Atualizar(id, usuario);
                return NoContent();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }



        }


        [HttpGet("{id}")]
        public IActionResult GetById(Guid id)
        {

            try
            {
                
                return Ok(_usuarioRepository.BuscarPorId(id));
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }


        }




    }
}
