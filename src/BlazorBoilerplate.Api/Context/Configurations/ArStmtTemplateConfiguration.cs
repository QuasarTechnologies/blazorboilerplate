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
    public partial class ArStmtTemplateConfiguration : IEntityTypeConfiguration<ArStmtTemplate>
    {
        public void Configure(EntityTypeBuilder<ArStmtTemplate> entity)
        {
            entity.HasKey(e => e.TemplateRevGuid)
                .HasName("PK_AR_STMT_TEMPLATE2");

            entity.HasIndex(e => new { e.DeletedGuid, e.Name }, "name")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.TemplateRevGuid).ValueGeneratedNever();

            entity.Property(e => e.AddressLabelSize).HasDefaultValueSql("(8)");

            entity.Property(e => e.Addressx).HasDefaultValueSql("(0.75)");

            entity.Property(e => e.Addressy).HasDefaultValueSql("(2.1)");

            entity.Property(e => e.EmpLabel).HasDefaultValueSql("('Employee(s):')");

            entity.Property(e => e.HideSplitClients).HasDefaultValueSql("(0)");

            entity.Property(e => e.LetterPmtDays).HasDefaultValueSql("(30)");

            entity.Property(e => e.Msg305100).HasDefaultValueSql("('Product Return')");

            entity.Property(e => e.Msg311).HasDefaultValueSql("('Reverse Write Off')");

            entity.Property(e => e.Msg313).HasDefaultValueSql("('Change NSF Fee')");

            entity.Property(e => e.Msg314).HasDefaultValueSql("('A/R To Payment Plan')");

            entity.Property(e => e.Msg315).HasDefaultValueSql("('Split Billed Product Removal')");

            entity.Property(e => e.Msg317).HasDefaultValueSql("('Split Billed Invoice Removal')");

            entity.Property(e => e.Msg320).HasDefaultValueSql("('Split Billed Product Return')");

            entity.Property(e => e.ShowQty).HasDefaultValueSql("(1)");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ArStmtTemplate> entity);
    }
}
