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
    public partial class HdCancelItemConfiguration : IEntityTypeConfiguration<HdCancelItem>
    {
        public void Configure(EntityTypeBuilder<HdCancelItem> entity)
        {
            entity.Property(e => e.HdCitemGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<HdCancelItem> entity);
    }
}