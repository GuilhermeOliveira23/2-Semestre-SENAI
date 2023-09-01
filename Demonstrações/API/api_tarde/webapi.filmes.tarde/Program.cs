
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
})

//Define os par�metros de valida��o de token
.AddJwtBearer(options =>
 {

 }); 
//Paramos aqui




//adiciona o gerador de swagger
builder.Services.AddSwaggerGen(options =>
{
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "API Filmes Tarde",
        Description = " API para gerenciar filmes e seus generos - introdu��o a sprint 2 - backend API",

        Contact = new OpenApiContact
        {
            Name = "Senai informatica - Guilherme Gozzi Oliveira",
            Url = new Uri("https://github.com/GuilhermeOliveira23"),

        },

    });

    ///Configure o Swagger para usar o arquivo XML gerado com as instru��es anteriores. 
    // using System.Reflection;
    var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
    options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
});

var app = builder.Build();

//mapear os controles
app.MapControllers();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseSwaggerUI(options =>
{
    options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
    options.RoutePrefix = string.Empty;
});

app.Run();


