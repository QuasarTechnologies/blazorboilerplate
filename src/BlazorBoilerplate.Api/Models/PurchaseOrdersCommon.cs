﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PURCHASE_ORDERS_COMMON")]
    public partial class PurchaseOrdersCommon
    {
        [Key]
        [Column("PO_COMMON_GUID")]
        public Guid PoCommonGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("NEXT_PO_NUMBER")]
        public int NextPoNumber { get; set; }
        [Column("QR_FLAG")]
        public bool QrFlag { get; set; }
        [Column("VENDOR_GUID")]
        public Guid VendorGuid { get; set; }
        [Column("DUPS_ALLOWED")]
        public bool DupsAllowed { get; set; }
    }
}