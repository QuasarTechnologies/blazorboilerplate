﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("Inventory_PVPLink")]
    [Index(nameof(PvpGuid), Name = "IX_Inventory_PVPLink")]
    public partial class InventoryPvplink
    {
        [Key]
        [Column("INVM_GUID")]
        public Guid InvmGuid { get; set; }
        [Column("PVP_GUID")]
        public Guid PvpGuid { get; set; }
    }
}