//para poder usar o html
import React from "react";
import './Titulo.css';

// funciona como construtor
const Titulo = (props)=> {
    return (    
       <h1 className="titulo">Olá { props.texto}</h1>
    );
}
// para usar a função fora da classe
export default Titulo;