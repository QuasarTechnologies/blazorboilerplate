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
    public partial class ApptStatusTypeConfiguration : IEntityTypeConfiguration<ApptStatusType>
    {
        public void Configure(EntityTypeBuilder<ApptStatusType> entity)
        {
            entity.HasKey(e => e.StatusGuid)
                .HasName("PK_EZT_STATUS_TYPES")
                .IsClustered(false);

            entity.HasIndex(e => new { e.Name, e.DeleteGuid, e.PracticeVid }, "StatusTypeName")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.StatusGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ApptStatusType> entity);
    }
}