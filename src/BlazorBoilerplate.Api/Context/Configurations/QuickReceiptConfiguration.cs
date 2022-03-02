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
    public partial class QuickReceiptConfiguration : IEntityTypeConfiguration<QuickReceipt>
    {
        public void Configure(EntityTypeBuilder<QuickReceipt> entity)
        {
            entity.HasKey(e => e.PoGuid)
                .IsClustered(false);

            entity.Property(e => e.PoGuid).ValueGeneratedNever();

            entity.Property(e => e.OrderedDate).HasDefaultValueSql("(getdate())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<QuickReceipt> entity);
    }
}
