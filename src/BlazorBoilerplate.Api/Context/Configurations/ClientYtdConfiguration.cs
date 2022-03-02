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
    public partial class ClientYtdConfiguration : IEntityTypeConfiguration<ClientYtd>
    {
        public void Configure(EntityTypeBuilder<ClientYtd> entity)
        {
            entity.HasIndex(e => e.ClientGuid, "Cli")
                .HasFillFactor(90);

            entity.HasIndex(e => new { e.ClientGuid, e.FiscalYear }, "CliFisc")
                .IsUnique()
                .HasFillFactor(90);

            entity.HasIndex(e => e.FiscalYear, "Fisc")
                .HasFillFactor(90);

            entity.Property(e => e.KeyGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ClientYtd> entity);
    }
}
