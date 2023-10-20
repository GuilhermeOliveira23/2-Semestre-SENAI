const convidados = [

    {nome: "Carlos", idade: 21},
    {nome: "Linguini", idade: 17},
    {nome: "Arthur", idade: 17},
    {nome: "Eduardo", idade: 36},
    {nome: "João", idade: 42}
   
   ];

   const camisaLacoste = {
    descricao : "Camisa Lacoste",
    preco: 400.00,
    marca: "Lacoste",
    tamanho: "G",
    cor:"Azul",
    promo: true
   }

  

   const {descricao,preco,promo} = camisaLacoste;

   console.log(`
   Produto: ${descricao}
   Preço: R$${preco}
   Promoção: ${promo ? "sim": "não" }
   `);

   // crie um objeto evento comas propriedades


   const evento ={
    dataEvento: new Date(),
    descricaoEvento: "2sd",
    titulo:"ddd",
    presenca: true,
    comentario:"aas"

   }
// o rest
const {dataEvento, descricaoEvento, titulo, ...rest} = evento;

console.log(dataEvento)
console.log(descricaoEvento)
console.log(titulo)
console.log(rest)


//    const {dataEvento,descricaoEvento,titulo, presenca, comentario} = evento;

//    console.log(`
//    Evento: ${titulo}
//    Descrição: ${descricaoEvento}
//    Data: ${dataEvento}
//    Presença: ${presenca ? "Confirmada": "Não confirmada"}
//    Comentário: ${comentario}

//    `);