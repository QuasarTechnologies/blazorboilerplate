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
    public partial class ApptOptionFieldConfiguration : IEntityTypeConfiguration<ApptOptionField>
    {
        public void Configure(EntityTypeBuilder<ApptOptionField> entity)
        {
            entity.HasKey(e => e.EzOpFldGuid)
                .HasName("PK_EZT_OPTION_FIELDS")
                .IsClustered(false);

            entity.Property(e => e.EzOpFldGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ApptOptionField> entity);
    }
}
