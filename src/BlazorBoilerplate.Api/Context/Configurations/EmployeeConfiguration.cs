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
    public partial class EmployeeConfiguration : IEntityTypeConfiguration<Employee>
    {
        public void Configure(EntityTypeBuilder<Employee> entity)
        {
            entity.HasKey(e => e.PEmpGuid)
                .IsClustered(false);

            entity.Property(e => e.PEmpGuid).ValueGeneratedNever();

            entity.Property(e => e.DeaNumber).HasDefaultValueSql("('')");

            entity.Property(e => e.LicenseNumber).HasDefaultValueSql("('')");

            entity.Property(e => e.LicenseState).HasDefaultValueSql("('')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Employee> entity);
    }
}
