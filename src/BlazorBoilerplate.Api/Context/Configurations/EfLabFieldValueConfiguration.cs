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
    public partial class EfLabFieldValueConfiguration : IEntityTypeConfiguration<EfLabFieldValue>
    {
        public void Configure(EntityTypeBuilder<EfLabFieldValue> entity)
        {
            entity.HasKey(e => e.ValueGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.LabRevisionGuid, "LAB_REV")
                .HasFillFactor(90);

            entity.HasIndex(e => e.FieldGuid, "fg")
                .HasFillFactor(90);

            entity.Property(e => e.ValueGuid).ValueGeneratedNever();

            entity.Property(e => e.CreateDateTime).HasDefaultValueSql("(getdate())");

            entity.Property(e => e.DynaFieldName).HasDefaultValueSql("('')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<EfLabFieldValue> entity);
    }
}