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
    public partial class CommonConfiguration : IEntityTypeConfiguration<Common>
    {
        public void Configure(EntityTypeBuilder<Common> entity)
        {
            entity.HasKey(e => e.CommonGuid)
                .IsClustered(false);

            entity.HasIndex(e => new { e.Code, e.PracticeVid }, "CODES")
                .IsUnique()
                .HasFillFactor(90);

            entity.HasIndex(e => e.PracticeVid, "pvid")
                .HasFillFactor(90);

            entity.Property(e => e.CommonGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Common> entity);
    }
}
