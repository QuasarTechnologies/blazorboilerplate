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
    public partial class VetNotesImportConfiguration : IEntityTypeConfiguration<VetNotesImport>
    {
        public void Configure(EntityTypeBuilder<VetNotesImport> entity)
        {
            entity.HasIndex(e => e.DeletedGuid, "dg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ImportGuid, "ig")
                .HasFillFactor(90);

            entity.HasIndex(e => e.NoteGuid, "ng")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ParentGuid, "pg")
                .HasFillFactor(90);

            entity.Property(e => e.KeyGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<VetNotesImport> entity);
    }
}
