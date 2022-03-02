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
    public partial class TransArConfiguration : IEntityTypeConfiguration<TransAr>
    {
        public void Configure(EntityTypeBuilder<TransAr> entity)
        {
            entity.HasKey(e => e.RevisionGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.AgingDate, "aging")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ClientGuid, "clientguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.InvoiceGuid, "invoiceguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.Removed, "remd")
                .HasFillFactor(90);

            entity.HasIndex(e => e.Revised, "rev")
                .HasFillFactor(90);

            entity.HasIndex(e => e.RevCount, "revc")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TransGuid, "transguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TxArGuid, "txarg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.UnpaidAmount, "un")
                .HasFillFactor(90);

            entity.Property(e => e.RevisionGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<TransAr> entity);
    }
}