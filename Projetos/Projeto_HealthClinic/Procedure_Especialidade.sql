 Create Procedure MedicosDaEspecialidade
 @TituloEspecialidade  Varchar(80)
 as
 Set @TituloEspecialidade = '%' + @TituloEspecialidade+ '%'
  Select TituloEspecialidade, Nome
 from Especialidade e
 left join Medico m on (m.IdEspecialidade = e.IdEspecialidade)
 left join Usuario u on ( u.IdUsuario = m.IdUsuario )
 Where e.TituloEspecialidade like @TituloEspecialidade 

Exec MedicosDaEspecialidade 'Neurologia'