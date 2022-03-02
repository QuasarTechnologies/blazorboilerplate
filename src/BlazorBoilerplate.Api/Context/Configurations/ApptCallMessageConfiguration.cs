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
    public partial class ApptCallMessageConfiguration : IEntityTypeConfiguration<ApptCallMessage>
    {
        public void Configure(EntityTypeBuilder<ApptCallMessage> entity)
        {
            entity.HasKey(e => new { e.MessageNumber, e.PracticeVid })
                .HasName("PK_APPT_CALL_MESSAGES");

            entity.HasIndex(e => e.KeyRowGuid, "krg")
                .IsUnique()
                .HasFillFactor(90);

            entity.Property(e => e.KeyRowGuid).HasDefaultValueSql("(newid())");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ApptCallMessage> entity);
    }
}
