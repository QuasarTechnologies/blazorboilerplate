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
    public partial class LinkedProductConfiguration : IEntityTypeConfiguration<LinkedProduct>
    {
        public void Configure(EntityTypeBuilder<LinkedProduct> entity)
        {
            entity.HasKey(e => e.LinkGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.LinkSource, "ls")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PracticeVid, "pv")
                .HasFillFactor(90);

            entity.HasIndex(e => e.SourceGuid, "sg")
                .HasFillFactor(90);

            entity.Property(e => e.LinkGuid).ValueGeneratedNever();

            entity.Property(e => e.DefHiQty).HasDefaultValueSql("(1)");

            entity.Property(e => e.DefLoQty).HasDefaultValueSql("(1)");

            entity.Property(e => e.IsSelected).HasDefaultValueSql("(1)");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<LinkedProduct> entity);
    }
}