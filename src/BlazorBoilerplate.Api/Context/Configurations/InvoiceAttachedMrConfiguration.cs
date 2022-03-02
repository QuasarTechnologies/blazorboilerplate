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
    public partial class InvoiceAttachedMrConfiguration : IEntityTypeConfiguration<InvoiceAttachedMr>
    {
        public void Configure(EntityTypeBuilder<InvoiceAttachedMr> entity)
        {
            entity.Property(e => e.InvoiceAttachGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<InvoiceAttachedMr> entity);
    }
}