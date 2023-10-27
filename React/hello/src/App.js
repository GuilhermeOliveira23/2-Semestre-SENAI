import Titulo from './components/Titulo/Titulo'
import './App.css';
import CardEvento from './components/CardEvento/CardEvento'

function App() {
  return (
    <div className="App">
      <h1>Hello React</h1>
      <Titulo texto = "Eduardo" />
      <Titulo texto = "Marcos" />
      <Titulo texto = "Maria" />
      <Titulo texto = "John" />

      <CardEvento titulo = "Titulo do Evento" texto = "Breve descrição do evento, pode ser um paragrafo pequenoBreve descrição do evento, pode ser um paragrafo pequeno.Breve descrição do evento, pode ser um paragrafo pequeno." textoLink = "Conectar"
      desabilitar = {true}/>
      

    </div>

  );
}
//exporta para ser usado em outras pastas/arquivos do projeto
export default App;