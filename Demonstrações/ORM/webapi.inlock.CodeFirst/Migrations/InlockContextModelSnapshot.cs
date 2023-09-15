﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using webapi.inlock.CodeFirst.Context;

#nullable disable

namespace webapi.inlock.CodeFirst.Migrations
{
    [DbContext(typeof(InlockContext))]
    partial class InlockContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.11")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Estudio", b =>
                {
                    b.Property<Guid>("IdEstudio")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("VARCHAR(100)");

                    b.HasKey("IdEstudio");

                    b.ToTable("Estudio");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Jogo", b =>
                {
                    b.Property<Guid>("IdJogo")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("DataLancamento")
                        .HasColumnType("DATE");

                    b.Property<string>("Descricao")
                        .IsRequired()
                        .HasColumnType("VARCHAR(100)");

                    b.Property<Guid>("IdEstudio")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasColumnType("VARCHAR(100)");

                    b.Property<decimal>("Valor")
                        .HasColumnType("DECIMAL(4,2)");

                    b.HasKey("IdJogo");

                    b.HasIndex("IdEstudio");

                    b.ToTable("Jogo");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.TiposUsuario", b =>
                {
                    b.Property<Guid>("IdTipoUsuario")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Titulo")
                        .IsRequired()
                        .HasColumnType("VARCHAR(100)");

                    b.HasKey("IdTipoUsuario");

                    b.ToTable("TiposUsuario");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Usuario", b =>
                {
                    b.Property<Guid>("IdUsuario")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("VARCHAR(100)");

                    b.Property<Guid?>("IdTipoUsuario")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Senha")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("VARCHAR(100)");

                    b.HasKey("IdUsuario");

                    b.HasIndex("IdTipoUsuario");

                    b.ToTable("Usuario");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Jogo", b =>
                {
                    b.HasOne("webapi.inlock.CodeFirst.Domains.Estudio", "Estudio")
                        .WithMany("Jogos")
                        .HasForeignKey("IdEstudio")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Estudio");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Usuario", b =>
                {
                    b.HasOne("webapi.inlock.CodeFirst.Domains.TiposUsuario", "TipoUsuario")
                        .WithMany()
                        .HasForeignKey("IdTipoUsuario");

                    b.Navigation("TipoUsuario");
                });

            modelBuilder.Entity("webapi.inlock.CodeFirst.Domains.Estudio", b =>
                {
                    b.Navigation("Jogos");
                });
#pragma warning restore 612, 618
        }
    }
}
