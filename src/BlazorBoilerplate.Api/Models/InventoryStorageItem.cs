﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVENTORY_STORAGE_ITEMS")]
    public partial class InventoryStorageItem
    {
        [Key]
        [Column("IS_ITEM_GUID")]
        public Guid IsItemGuid { get; set; }
        [Column("STORAGE_GUID")]
        public Guid StorageGuid { get; set; }
        [Column("INVM_GUID")]
        public Guid InvmGuid { get; set; }
        [Column("INV_GUID")]
        public Guid InvGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("MAX_LEVEL", TypeName = "money")]
        public decimal MaxLevel { get; set; }
        [Column("REORDER_LEVEL", TypeName = "money")]
        public decimal ReorderLevel { get; set; }
        [Column("SAFETY_LEVEL", TypeName = "money")]
        public decimal SafetyLevel { get; set; }
        [Column("REORDER_QTY", TypeName = "money")]
        public decimal ReorderQty { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
    }
}