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
    public partial class Consent2Configuration : IEntityTypeConfiguration<Consent2>
    {
        public void Configure(EntityTypeBuilder<Consent2> entity)
        {
            entity.HasIndex(e => new { e.Name, e.DeletedGuid, e.PracticeVid }, "CONSENT_NAME")
                .IsUnique()
                .HasFillFactor(90);

            entity.HasIndex(e => e.KeyRowGuid, "krg")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.ConsentGuid).ValueGeneratedNever();

            entity.Property(e => e.KeyRowGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Consent2> entity);
    }
}
