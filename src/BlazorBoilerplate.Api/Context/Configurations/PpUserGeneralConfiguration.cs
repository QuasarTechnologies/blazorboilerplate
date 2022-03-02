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
    public partial class PpUserGeneralConfiguration : IEntityTypeConfiguration<PpUserGeneral>
    {
        public void Configure(EntityTypeBuilder<PpUserGeneral> entity)
        {
            entity.Property(e => e.UserGuid).ValueGeneratedNever();

            entity.Property(e => e.WsbarColor).HasDefaultValueSql("((-2147483633))");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<PpUserGeneral> entity);
    }
}
