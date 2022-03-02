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
    public partial class IPatchConfiguration : IEntityTypeConfiguration<IPatch>
    {
        public void Configure(EntityTypeBuilder<IPatch> entity)
        {
            entity.HasKey(e => e.Spid)
                .HasName("SPID_PK");

            entity.Property(e => e.Spid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<IPatch> entity);
    }
}
