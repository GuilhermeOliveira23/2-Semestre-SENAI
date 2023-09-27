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
    public class FeedBackController : ControllerBase
    {

        private IFeedBackRepository _feedBackRepository;

        public FeedBackController()
        {

            _feedBackRepository = new FeedBackRepository();
        }

        [HttpPost]
        public IActionResult Post(FeedBack feedback)
        {

            try
            {
                _feedBackRepository.Cadastrar(feedback);
                return StatusCode(201);
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);

            }



        }

        [HttpDelete]
        public IActionResult Delete(Guid id)
        {
            try
            {

                _feedBackRepository.Deletar(id);
                return NoContent();
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }




        }
        [HttpPut("{id}")]

        public IActionResult Put(FeedBack feedback, Guid id)
        {
            try
            {
                _feedBackRepository.Atualizar(feedback, id);
                return StatusCode(201);
            }
            catch (Exception e)
            {
                return BadRequest(e.Message);
                throw;
            }



        }
    }
}
