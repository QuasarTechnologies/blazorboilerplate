﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using BlazorBoilerplate.Api.SubContext;
using BlazorBoilerplate.Api.SubModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;

namespace BlazorBoilerplate.Api.SubContext.Configurations
{
    public partial class ClientNoteConfiguration : IEntityTypeConfiguration<ClientNote>
    {
        public void Configure(EntityTypeBuilder<ClientNote> entity)
        {
            entity.HasIndex(e => e.ClientGuid, "ClientGUID")
                .HasFillFactor(90);

            entity.HasIndex(e => e.LockFlag, "lf")
                .HasFillFactor(90);

            entity.HasIndex(e => e.LockGuid, "lg")
                .HasFillFactor(90);

            entity.Property(e => e.NoteGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ClientNote> entity);
    }
}
