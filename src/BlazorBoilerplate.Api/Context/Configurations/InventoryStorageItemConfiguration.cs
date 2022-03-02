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
    public partial class InventoryStorageItemConfiguration : IEntityTypeConfiguration<InventoryStorageItem>
    {
        public void Configure(EntityTypeBuilder<InventoryStorageItem> entity)
        {
            entity.HasKey(e => e.IsItemGuid)
                .IsClustered(false);

            entity.HasIndex(e => new { e.Deleted, e.PracticeVid, e.InvmGuid }, "_dta_index_INVENTORY_STORAGE_ITEMS_DPI")
                .IsClustered()
                .HasFillFactor(90);

            entity.HasIndex(e => e.InvGuid, "inv_guid")
                .HasFillFactor(90);

            entity.HasIndex(e => e.InvmGuid, "invm")
                .HasFillFactor(90);

            entity.HasIndex(e => e.StorageGuid, "storage")
                .HasFillFactor(90);

            entity.Property(e => e.IsItemGuid).ValueGeneratedNever();

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<InventoryStorageItem> entity);
    }
}
