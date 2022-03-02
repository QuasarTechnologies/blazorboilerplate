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
    public partial class CityConfiguration : IEntityTypeConfiguration<City>
    {
        public void Configure(EntityTypeBuilder<City> entity)
        {
            entity.HasKey(e => e.CityGuid)
                .HasName("PK_CITY_STATE_ZIP")
                .IsClustered(false);

            entity.HasIndex(e => new { e.CityName, e.StateProvinceName, e.DeletedGuid, e.CountryGuid, e.FranchiseGuid }, "NAME1")
                .IsUnique()
                .HasFillFactor(90);

            entity.HasIndex(e => new { e.CityName, e.StateProvinceAbbrev, e.DeletedGuid, e.CountryGuid, e.FranchiseGuid }, "NAME2")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.CityGuid).ValueGeneratedNever();

            entity.Property(e => e.CountryGuid).HasDefaultValueSql("('{10000000-0000-0000-0000-000000000001}')");

            entity.Property(e => e.FranchiseGuid).HasDefaultValueSql("('{00000000-0000-0000-0000-000000000000}')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<City> entity);
    }
}