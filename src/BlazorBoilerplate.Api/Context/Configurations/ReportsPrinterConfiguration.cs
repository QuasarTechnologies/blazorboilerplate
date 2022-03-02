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
    public partial class ReportsPrinterConfiguration : IEntityTypeConfiguration<ReportsPrinter>
    {
        public void Configure(EntityTypeBuilder<ReportsPrinter> entity)
        {
            entity.HasKey(e => e.ReportPrinterGuid)
                .HasName("PK_REPORT_PRINTERS")
                .IsClustered(false);

            entity.HasIndex(e => new { e.WorkstationGuid, e.ReportCode }, "repwkst")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.ReportPrinterGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ReportsPrinter> entity);
    }
}
