//métodos da classe Array 
//foreach - void
//map - novo array modificado
//filter
//reduce

//MAP
// const numeros = [1,2,5,10,300];
// const dobro = numeros.map( (n) => {
//     return n * 2
// });
// console.log(numeros);
// console.log(dobro);

//Filter - retorna um novo array apenas com elementos que atenderam a uma condição
// const numeros = [1,2,5,10,300];
// const maior10 = numeros.filter((e) => {
//     return e >= 10;
// });
// console.log(numeros)
// console.log(maior10)

const comentarios = [

    {comentario: "bla bla bla", exibe: true},
    {comentario: "Evento foi uma", exibe: false},
    {comentario: "Ótimo Evento!", exibe: true},

]
const numeros = [1,2,5,10,300];

const comentariosOk = comentarios.filter((c) => {
    return c.exibe == true;
})

comentariosOk.forEach((c)=>{
    console.log(c.comentario);
})

//Reduce - valor unificado do array
const soma = numeros.reduce((vlInicial,n) => {
    return vlInicial + n  
} , 20)

console.log(soma);
