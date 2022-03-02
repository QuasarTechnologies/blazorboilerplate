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
    public partial class CoatColorConfiguration : IEntityTypeConfiguration<CoatColor>
    {
        public void Configure(EntityTypeBuilder<CoatColor> entity)
        {
            entity.HasKey(e => e.ColorGuid)
                .HasName("PK_COLORS")
                .IsClustered(false);

            entity.HasIndex(e => new { e.SpeciesGuid, e.ColorName, e.DeletedGuid }, "NAME")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.ColorGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<CoatColor> entity);
    }
}