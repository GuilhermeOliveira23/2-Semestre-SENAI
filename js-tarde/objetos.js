//objeto literal javaScript
let eduardo = {
nome: "Eduardo",
idade: 41,
altura: 1.87
};
// se não tiver a propriedade ele cria ao rodar o comando
eduardo.peso = 89;

//objeto usando dinâmica do javaScript
let carlos = new Object();
carlos.nome = "Carlos";
carlos.idade = 36;
carlos.sobrenome = "Roque";
let pessoas = [];


pessoas.push(eduardo);
pessoas.push(carlos);

console.log(pessoas);

pessoas.forEach((v, i) =>{
    console.log(`Nome ${i+1}: ${v.nome}`)
});


// J ava
// S cript
// O bject
// N otation
