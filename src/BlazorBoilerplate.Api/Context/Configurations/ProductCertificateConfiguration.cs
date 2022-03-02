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
    public partial class ProductCertificateConfiguration : IEntityTypeConfiguration<ProductCertificate>
    {
        public void Configure(EntityTypeBuilder<ProductCertificate> entity)
        {
            entity.HasKey(e => e.ProdCertGuid)
                .IsClustered(false);

            entity.Property(e => e.ProdCertGuid).ValueGeneratedNever();

            entity.Property(e => e.WhenCode).HasDefaultValueSql("(1)");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ProductCertificate> entity);
    }
}
