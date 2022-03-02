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
    public partial class CorpVendorsLinkConfiguration : IEntityTypeConfiguration<CorpVendorsLink>
    {
        public void Configure(EntityTypeBuilder<CorpVendorsLink> entity)
        {
            entity.HasIndex(e => new { e.FranPracticeGuid, e.FranVendorGuid }, "VENDORLINKS")
                .HasFillFactor(90);

            entity.Property(e => e.LinkGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<CorpVendorsLink> entity);
    }
}
