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
    public partial class ListValueConfiguration : IEntityTypeConfiguration<ListValue>
    {
        public void Configure(EntityTypeBuilder<ListValue> entity)
        {
            entity.HasKey(e => e.ListValueGuid)
                .IsClustered(false);

            entity.Property(e => e.ListValueGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ListValue> entity);
    }
}
