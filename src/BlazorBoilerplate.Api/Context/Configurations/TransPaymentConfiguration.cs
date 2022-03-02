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
    public partial class TransPaymentConfiguration : IEntityTypeConfiguration<TransPayment>
    {
        public void Configure(EntityTypeBuilder<TransPayment> entity)
        {
            entity.HasKey(e => e.RevisionGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.CashierGuid, "cashg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ChangeAmt, "chamt")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ClientGuid, "clientguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.DepositDate, "depdt")
                .HasFillFactor(90);

            entity.HasIndex(e => e.InvoiceGuid, "invoiceguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.MpmtGuid, "mpmtguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.MpmtRevisionGuid, "mpmtrevg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PmtAmount, "pmtamt")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PmtGuid, "pmtguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PmtPlanGuid, "pmtplanguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PracticeVid, "pvid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.Removed, "remd")
                .HasFillFactor(90);

            entity.HasIndex(e => e.RevCount, "rev_cnt")
                .HasFillFactor(90);

            entity.HasIndex(e => e.Revised, "revd")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TransGuid, "transguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TxPmtGuid, "tx")
                .HasFillFactor(90);

            entity.Property(e => e.RevisionGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<TransPayment> entity);
    }
}