//console.log("Hello World");
//função convencional javaScript
const somar = function name(x,y){
return x+y;
}

// console.log(somar(20,30));

const dobro = (numero) => {
return numero * 2;
}
//console.log(dobro(10));

const dobro1 = numero => numero * 2

const boaTarde = () => {console.log("Boa tarde");}

boaTarde();

const convidados = [

 {nome: "Carlos", idade: 21},
 {nome: "Murilo", idade: 17},
 {nome: "Rebeca", idade: 17},
 {nome: "Eduardo", idade: 36},
 {nome: "João", idade: 42}

];

convidados.forEach( p => {
    console.log(`Convidado: ${p.nome}`);
})