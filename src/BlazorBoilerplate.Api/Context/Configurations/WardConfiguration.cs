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
    public partial class WardConfiguration : IEntityTypeConfiguration<Ward>
    {
        public void Configure(EntityTypeBuilder<Ward> entity)
        {
            entity.HasKey(e => e.WardGuid)
                .IsClustered(false);

            entity.Property(e => e.WardGuid).ValueGeneratedNever();

            entity.Property(e => e.Color).HasDefaultValueSql("(1)");

            entity.Property(e => e.DisplayOrder).HasDefaultValueSql("(999999999)");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Ward> entity);
    }
}