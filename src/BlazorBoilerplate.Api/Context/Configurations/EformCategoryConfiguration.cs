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
    public partial class EformCategoryConfiguration : IEntityTypeConfiguration<EformCategory>
    {
        public void Configure(EntityTypeBuilder<EformCategory> entity)
        {
            entity.HasIndex(e => new { e.CatName, e.DeletedGuid }, "unname")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.CatGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<EformCategory> entity);
    }
}
