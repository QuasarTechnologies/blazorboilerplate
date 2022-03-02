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
    public partial class CensusResourceConfiguration : IEntityTypeConfiguration<CensusResource>
    {
        public void Configure(EntityTypeBuilder<CensusResource> entity)
        {
            entity.HasIndex(e => new { e.ResourceName, e.DeleteGuid, e.PracticeVid }, "PracticeResourceName")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.RevisionGuid).ValueGeneratedNever();

            entity.Property(e => e.Visible).HasDefaultValueSql("(1)");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<CensusResource> entity);
    }
}
