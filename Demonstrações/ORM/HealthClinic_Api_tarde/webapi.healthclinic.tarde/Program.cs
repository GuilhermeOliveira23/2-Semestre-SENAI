using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;

var builder = WebApplication.CreateBuilder(args);

builder.Services
    .AddControllers()
        .AddNewtonsoftJson(options =>
        {
            // Ignora os loopings nas consultas
            options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
            // Ignora valores nulos ao fazer jun��es nas consultas
            options.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
        }
    );

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddAuthentication(options =>
{
    options.DefaultChallengeScheme = "JwtBearer";
    options.DefaultAuthenticateScheme = "JwtBearer";
})
    
    .AddJwtBearer("JwtBearer", options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        //Valida quem est� solicitando
        ValidateIssuer = true,

        //Valida quem est� recebendo
        ValidateAudience = true,


        //Define se o tempo de espera��o do token ser� validado
        ValidateLifetime = true,
        //Define forma de criptografia e ainda valida��o da chave de autentica��o
        IssuerSigningKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes("projeto-healthclinic-webapi-chave-autenticacao-ef")),

        //Coloca o limite do login de 5 minutos
        ClockSkew = TimeSpan.FromMinutes(5),

        // Local de quem solicita
        ValidIssuer = "webapi.healthclinic.tarde",
        //Local de quem recebe
        ValidAudience = "webapi.healthclinic.tarde"


    };
});
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();



builder.Services.AddSwaggerGen();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
