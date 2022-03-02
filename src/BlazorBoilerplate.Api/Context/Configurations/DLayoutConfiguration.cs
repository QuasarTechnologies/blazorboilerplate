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
    public partial class DLayoutConfiguration : IEntityTypeConfiguration<DLayout>
    {
        public void Configure(EntityTypeBuilder<DLayout> entity)
        {
            entity.HasKey(e => e.LayoutGuid)
                .HasName("LAYOUT_GUID_PK");

            entity.HasIndex(e => e.LType, "lt")
                .HasFillFactor(90);

            entity.HasIndex(e => e.UserGuid, "ug")
                .HasFillFactor(90);

            entity.Property(e => e.LayoutGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<DLayout> entity);
    }
}
