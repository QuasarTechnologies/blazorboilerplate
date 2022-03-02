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
    public partial class PracticeConfiguration : IEntityTypeConfiguration<Practice>
    {
        public void Configure(EntityTypeBuilder<Practice> entity)
        {
            entity.HasKey(e => e.PracticeVid)
                .IsClustered(false);

            entity.HasIndex(e => e.PracticeGuid, "krg")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.PracticeVid).ValueGeneratedNever();

            entity.Property(e => e.ImageOwnerGuid).HasDefaultValueSql("(newid())");

            entity.Property(e => e.PracticeGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Practice> entity);
    }
}