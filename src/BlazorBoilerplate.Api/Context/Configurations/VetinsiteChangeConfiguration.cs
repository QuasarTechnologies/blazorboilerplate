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
    public partial class VetinsiteChangeConfiguration : IEntityTypeConfiguration<VetinsiteChange>
    {
        public void Configure(EntityTypeBuilder<VetinsiteChange> entity)
        {
            entity.HasKey(e => e.ModGuid)
                .HasName("PK_CHANGES");

            entity.HasIndex(e => e.KeyGuid, "kg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TableName, "tn")
                .HasFillFactor(90);

            entity.Property(e => e.ModGuid).ValueGeneratedNever();

            entity.Property(e => e.OrderNum).ValueGeneratedOnAdd();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<VetinsiteChange> entity);
    }
}