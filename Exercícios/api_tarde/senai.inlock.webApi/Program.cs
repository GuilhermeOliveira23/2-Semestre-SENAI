
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);

//adicionar o servi�o de controllers
builder.Services.AddControllers();

//Adiciona servi�o de autentica��o JWT
builder.Services.AddAuthentication(options =>
{
    options.DefaultChallengeScheme = "JwtBearer";
    options.DefaultAuthenticateScheme = "JwtBearer";
});



    

var app = builder.Build();

//mapear os controles





//Usar autentica��o
app.UseAuthentication();
//Usar Autoriza��o
app.UseAuthorization();

app.MapControllers();
app.Run();


