﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("QUICK_RECEIPT_STORAGE")]
    public partial class QuickReceiptStorage
    {
        [Key]
        [Column("QR_STORAGE_GUID")]
        public Guid QrStorageGuid { get; set; }
        [Column("PO_ITEM_GUID")]
        public Guid PoItemGuid { get; set; }
        [Column("PO_GUID")]
        public Guid PoGuid { get; set; }
        [Column("STORAGE_GUID")]
        public Guid StorageGuid { get; set; }
        [Column("DIST_UNIT_QTY", TypeName = "money")]
        public decimal DistUnitQty { get; set; }
    }
}