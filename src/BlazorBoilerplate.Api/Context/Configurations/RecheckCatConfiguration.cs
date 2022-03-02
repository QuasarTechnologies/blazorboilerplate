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
    public partial class RecheckCatConfiguration : IEntityTypeConfiguration<RecheckCat>
    {
        public void Configure(EntityTypeBuilder<RecheckCat> entity)
        {
            entity.HasKey(e => e.CatGuid)
                .IsClustered(false);

            entity.HasIndex(e => new { e.Name, e.DeletedGuid }, "NAME")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.CatGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<RecheckCat> entity);
    }
}
