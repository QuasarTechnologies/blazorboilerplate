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
    public partial class CertificateConfiguration : IEntityTypeConfiguration<Certificate>
    {
        public void Configure(EntityTypeBuilder<Certificate> entity)
        {
            entity.HasKey(e => e.CertificateGuid)
                .IsClustered(false);

            entity.HasIndex(e => e.Deleted, "deld")
                .HasFillFactor(90);

            entity.HasIndex(e => e.OwnerGuid, "owng")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PatientGuid, "patientguid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.PrintCount, "pc")
                .HasFillFactor(90);

            entity.HasIndex(e => e.TemplateGuid, "tg")
                .HasFillFactor(90);

            entity.Property(e => e.CertificateGuid).ValueGeneratedNever();

            entity.Property(e => e.OwnerGuid).HasDefaultValueSql("('{00000000-0000-0000-0000-000000000000}')");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Certificate> entity);
    }
}
