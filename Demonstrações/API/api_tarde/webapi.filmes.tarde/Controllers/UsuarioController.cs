using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using webapi.filmes.tarde.Domains;

namespace webapi.filmes.tarde.Controllers
{
    public class UsuarioController :ControllerBase
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



        public IActionResult Login()
        {
            try
            {
               
            }
            catch (Exception erro)
            {

                return NotFound(erro.Message);
            }
            // 1° definir as informações(Claims) que serão fornecidos no token (PayLoad)
            var claims = new[]
            {
                //formato da claim(tipo,valor)
                new Claim(JwtRegisteredClaimNames.Jti,usuarioBuscado.IdUsuario.ToString()),
                new Claim(JwtRegisteredClaimNames.Email,usuarioBuscado.Email),
                new Claim(ClaimTypes.Role, usuarioBuscado.Permissao),
                //Existe a possibilidade de criar uma claim personalizada
                new Claim("Claim Personalizada","Valor Personalizado")

            };
            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes("filmes-chave-autenticacao-webapi-dev"));

            //3° Definir as credencias do token (Header)
            var creds =  new SigningCredentials(key,SecurityAlgorithms.HmacSha256)


                //4° - Gerar o token
                var token = new JwtSecurityToken
                (
                    //emissor do token 
                    issuer: "webapi.filmes.tarde",
                    

                    //destinatário
                    audience: "webapi.filmes.tarde",

                    //dados definidos nas claim(PayLoad)
                    claims : claims,

                    //tempo de expiração
                    expires: DateTime.Now.AddMinutes(5),
                    
                    //credenciais do token
                    signingCredentials: creds
                );

            //5° - retornar  o token
            return Ok(new
            {
                token = new JwtSecurityTokenHandler().WriteToken(token)
            });



        }
    }
}
