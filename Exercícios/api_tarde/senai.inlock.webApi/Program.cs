
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);

//adicionar o serviço de controllers
builder.Services.AddControllers();

//Adiciona serviço de autenticação JWT
builder.Services.AddAuthentication(options =>
{
    options.DefaultChallengeScheme = "JwtBearer";
    options.DefaultAuthenticateScheme = "JwtBearer";
});



    

var app = builder.Build();

//mapear os controles





//Usar autenticação
app.UseAuthentication();
//Usar Autorização
app.UseAuthorization();

app.MapControllers();
app.Run();


