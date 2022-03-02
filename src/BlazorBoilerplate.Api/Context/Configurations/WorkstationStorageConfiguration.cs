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
    public partial class WorkstationStorageConfiguration : IEntityTypeConfiguration<WorkstationStorage>
    {
        public void Configure(EntityTypeBuilder<WorkstationStorage> entity)
        {
            entity.HasKey(e => e.WsGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.WorkstationGuid, "wg")
                .HasFillFactor(90);

            entity.Property(e => e.WsGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<WorkstationStorage> entity);
    }
}
