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
    public partial class Consent2MsgConfiguration : IEntityTypeConfiguration<Consent2Msg>
    {
        public void Configure(EntityTypeBuilder<Consent2Msg> entity)
        {
            entity.HasIndex(e => e.ConsentGuid, "CONSENT_GUID")
                .HasFillFactor(90);

            entity.HasIndex(e => e.KeyRowGuid, "krg")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.CmGuid).ValueGeneratedNever();

            entity.Property(e => e.KeyRowGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Consent2Msg> entity);
    }
}
