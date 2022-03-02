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
    public partial class VaccineHistoryConfiguration : IEntityTypeConfiguration<VaccineHistory>
    {
        public void Configure(EntityTypeBuilder<VaccineHistory> entity)
        {
            entity.HasKey(e => new { e.HistoryGuid, e.VaccineGuid })
                .IsClustered(false);

            entity.HasIndex(e => e.KeyRowGuid, "krg")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.KeyRowGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<VaccineHistory> entity);
    }
}
