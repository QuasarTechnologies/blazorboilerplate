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
    public partial class AntechSpecyConfiguration : IEntityTypeConfiguration<AntechSpecy>
    {
        public void Configure(EntityTypeBuilder<AntechSpecy> entity)
        {
            entity.Property(e => e.SpeciesGuid).HasDefaultValueSql("(newid())");

            entity.Property(e => e.SpeciesCode).IsFixedLength();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<AntechSpecy> entity);
    }
}
