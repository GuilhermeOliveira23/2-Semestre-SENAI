import React from 'react';
import './CardEvento.css'
const CardEvento = ({titulo,texto,desabilitar,textoLink}) =>{
    return (
    
    <div className="card-evento">
    <h3 className="card-evento__titulo">{titulo}</h3>
    <p className="card-evento__text">{texto}</p>
   <a href="" className= {desabilitar 
      ? "card-evento__conection card-evento__connection--disable"
      : "card-evento__conection"}>
        {textoLink}
        {desabilitar}
        </a>
</div>

)
}
export default CardEvento;