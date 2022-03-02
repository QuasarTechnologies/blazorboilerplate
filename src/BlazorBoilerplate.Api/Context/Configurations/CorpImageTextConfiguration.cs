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
    public partial class CorpImageTextConfiguration : IEntityTypeConfiguration<CorpImageText>
    {
        public void Configure(EntityTypeBuilder<CorpImageText> entity)
        {
            entity.HasIndex(e => e.ImageRevisionGuid, "irev")
                .HasFillFactor(90);

            entity.Property(e => e.KeyGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<CorpImageText> entity);
    }
}
