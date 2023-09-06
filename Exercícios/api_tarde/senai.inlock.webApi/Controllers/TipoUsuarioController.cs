using Microsoft.AspNetCore.Mvc;
using senai.inlock.webApi.Domains;
using senai.inlock.webApi.Interfaces;
using senai.inlock.webApi.Repositories;

namespace senai.inlock.webApi.Controllers
{

    [Route("api/[controller]")]

    [ApiController]

    [Produces("application/json")]
    public class TipoUsuarioController : ControllerBase
    {

        private ITipoUsuarioRepository _tipoUsuarioRepository;

        public TipoUsuarioController()
        {
            _tipoUsuarioRepository = new TipoUsuarioRepository();

        }

        

    }
}


