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
    public partial class ApptAccountConfiguration : IEntityTypeConfiguration<ApptAccount>
    {
        public void Configure(EntityTypeBuilder<ApptAccount> entity)
        {
            entity.HasKey(e => e.ApptActGuid)
                .HasName("PK_EZT_APPT_ACCOUNTS")
                .IsClustered(false);

            entity.HasIndex(e => e.AppointmentGuid, "apptg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.ClientGuid, "clg")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PatientGuid, "patg")
                .HasFillFactor(90);

            entity.Property(e => e.ApptActGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ApptAccount> entity);
    }
}