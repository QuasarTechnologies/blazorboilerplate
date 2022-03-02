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
    public partial class VendorsShiptoAcctConfiguration : IEntityTypeConfiguration<VendorsShiptoAcct>
    {
        public void Configure(EntityTypeBuilder<VendorsShiptoAcct> entity)
        {
            entity.HasKey(e => e.VendorShiptoGuid)
                .IsClustered(false);

            entity.Property(e => e.VendorShiptoGuid).ValueGeneratedNever();

            entity.Property(e => e.Name).HasDefaultValueSql("('')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<VendorsShiptoAcct> entity);
    }
}