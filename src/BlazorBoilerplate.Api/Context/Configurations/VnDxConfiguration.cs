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
    public partial class VnDxConfiguration : IEntityTypeConfiguration<VnDx>
    {
        public void Configure(EntityTypeBuilder<VnDx> entity)
        {
            entity.HasIndex(e => e.VnGuid, "vng")
                .HasFillFactor(90);

            entity.Property(e => e.KeyGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<VnDx> entity);
    }
}
