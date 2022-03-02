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
    public partial class ApptRecurringConfiguration : IEntityTypeConfiguration<ApptRecurring>
    {
        public void Configure(EntityTypeBuilder<ApptRecurring> entity)
        {
            entity.HasKey(e => e.RecurringGuid)
                .HasName("PK_EZT_APPT_RECURRING")
                .IsClustered(false);

            entity.Property(e => e.RecurringGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<ApptRecurring> entity);
    }
}