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
    public partial class HdPriceQuoteConfiguration : IEntityTypeConfiguration<HdPriceQuote>
    {
        public void Configure(EntityTypeBuilder<HdPriceQuote> entity)
        {
            entity.Property(e => e.QuoteGuid).HasDefaultValueSql("(newid())");

            entity.Property(e => e.Status).HasDefaultValueSql("('READY2SEND')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<HdPriceQuote> entity);
    }
}
