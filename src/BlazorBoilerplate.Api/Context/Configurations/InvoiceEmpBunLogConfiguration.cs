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
    public partial class InvoiceEmpBunLogConfiguration : IEntityTypeConfiguration<InvoiceEmpBunLog>
    {
        public void Configure(EntityTypeBuilder<InvoiceEmpBunLog> entity)
        {
            entity.Property(e => e.LogGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<InvoiceEmpBunLog> entity);
    }
}