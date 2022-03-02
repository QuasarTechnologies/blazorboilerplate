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
    public partial class EstimatePracticeSettingConfiguration : IEntityTypeConfiguration<EstimatePracticeSetting>
    {
        public void Configure(EntityTypeBuilder<EstimatePracticeSetting> entity)
        {
            entity.HasKey(e => e.SettingsGuid)
                .IsClustered(false);

            entity.Property(e => e.SettingsGuid).ValueGeneratedNever();

            entity.Property(e => e.ClientOnlyWarning).HasDefaultValueSql("(1)");

            entity.Property(e => e.EmployeeFirst).HasDefaultValueSql("(1)");

            entity.Property(e => e.PreviewBundles).HasDefaultValueSql("(1)");

            entity.Property(e => e.Prompt4Consents).HasDefaultValueSql("(1)");

            entity.Property(e => e.RecalcOn).HasDefaultValueSql("(1)");

            entity.Property(e => e.TemplateVersion)
                .HasDefaultValueSql("('A')")
                .IsFixedLength();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<EstimatePracticeSetting> entity);
    }
}