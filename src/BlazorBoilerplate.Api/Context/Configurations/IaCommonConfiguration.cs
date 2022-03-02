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
    public partial class IaCommonConfiguration : IEntityTypeConfiguration<IaCommon>
    {
        public void Configure(EntityTypeBuilder<IaCommon> entity)
        {
            entity.HasKey(e => e.CommonGuid)
                .IsClustered(false);

            entity.Property(e => e.CommonGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<IaCommon> entity);
    }
}
