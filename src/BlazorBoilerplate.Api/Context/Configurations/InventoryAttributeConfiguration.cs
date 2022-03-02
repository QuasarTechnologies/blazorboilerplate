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
    public partial class InventoryAttributeConfiguration : IEntityTypeConfiguration<InventoryAttribute>
    {
        public void Configure(EntityTypeBuilder<InventoryAttribute> entity)
        {
            entity.Property(e => e.AttributeGuid).ValueGeneratedNever();

            entity.Property(e => e.AdjustedQtyPerUnit).HasDefaultValueSql("((-1))");

            entity.Property(e => e.GwAgencyName).HasDefaultValueSql("('')");

            entity.Property(e => e.GwDescription).HasDefaultValueSql("('')");

            entity.Property(e => e.GwQtyPerUnit).HasDefaultValueSql("((-1))");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<InventoryAttribute> entity);
    }
}