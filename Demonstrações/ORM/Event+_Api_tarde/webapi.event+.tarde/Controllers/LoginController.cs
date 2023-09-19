using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using webapi.event_.tarde.Domains;
using webapi.event_.tarde.Interfaces;
using webapi.event_.tarde.Repositories;
using webapi.event_.tarde.ViewModels;

namespace webapi.event_.tarde.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Produces("application/json")]
    public class LoginController : ControllerBase
    {
        private IUsuarioRepository _usuarioRepository;

        public LoginController()
        {

            _usuarioRepository = new UsuarioRepository();
        }



        [HttpPost]
        public IActionResult Login(LoginViewModel usuario)
        {

            try
            {
                Usuario usuarioBuscado = _usuarioRepository.BuscarPorEmailSenha(usuario.Email!, usuario.Senha!);
                return StatusCode(401, "Email ou senha inválidos!");
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }
            
        }
    }
}
