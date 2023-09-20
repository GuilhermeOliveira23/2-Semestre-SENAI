using Microsoft.AspNetCore.Http.HttpResults;
using webapi.event_.tarde.Contexts;
using webapi.event_.tarde.Domains;
using webapi.event_.tarde.Interfaces;

namespace webapi.event_.tarde.Repositories
{
    public class EventoRepository : IEventoRepository
    {

        private readonly EventContext ctx;

        public EventoRepository()
        {
            ctx = new EventContext();
        }

        public void Atualizar(Guid id, Evento atualizarEvento)
        {
            Evento eventoBuscado = ctx.Evento.Find(id);
            if (eventoBuscado != null)
            {
                eventoBuscado.Nome = atualizarEvento.Nome;
                ctx.SaveChanges();
            }
        }

        public Evento BuscarPorId(Guid id)
        {
            return ctx.Evento.FirstOrDefault(e => e.IdEvento == id)!;
        }

        public void Cadastrar(Evento evento)
        {
            try
            {
                ctx.Evento.Add(evento);
               ctx.SaveChanges();
               
            }
            catch (Exception)
            {

               
            }
        }

        public void Deletar(Guid id)
        {
            Evento eventoBuscado = ctx.Evento.Find(id);
            if (eventoBuscado != null)
            {
                ctx.Evento.Remove(eventoBuscado);
            }
            ctx.Evento.Update(eventoBuscado);
            ctx.SaveChanges();

        }

        public List<Evento> ListarTodos()
        {
            return ctx.Evento.ToList();
        }
    }
}
