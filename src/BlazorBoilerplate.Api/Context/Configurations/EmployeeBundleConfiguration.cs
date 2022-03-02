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
    public partial class EmployeeBundleConfiguration : IEntityTypeConfiguration<EmployeeBundle>
    {
        public void Configure(EntityTypeBuilder<EmployeeBundle> entity)
        {
            entity.HasKey(e => e.EbunGuid)
                .IsClustered(false);

            entity.HasIndex(e => new { e.Name, e.PracticeVid, e.DeleteGuid }, "EBundle_Name")
                .IsUnique()
                .HasFillFactor(90);

            entity.HasIndex(e => new { e.Vid, e.PracticeVid, e.DeleteGuid }, "EBundle_VID")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.EbunGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<EmployeeBundle> entity);
    }
}