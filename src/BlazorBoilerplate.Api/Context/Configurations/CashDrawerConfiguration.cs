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
    public partial class CashDrawerConfiguration : IEntityTypeConfiguration<CashDrawer>
    {
        public void Configure(EntityTypeBuilder<CashDrawer> entity)
        {
            entity.HasKey(e => e.CdGuid)
                .IsClustered(false);

            entity.HasIndex(e => new { e.Name, e.DeleteGuid, e.PracticeVid }, "CashDrawerName")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.CdGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<CashDrawer> entity);
    }
}
