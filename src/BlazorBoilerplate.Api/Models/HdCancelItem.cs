﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_CANCEL_ITEMS")]
    [Index(nameof(HdOitemGuid), Name = "IX_HD_CITEMS_OITEM_GUID")]
    public partial class HdCancelItem
    {
        [Key]
        [Column("HD_CITEM_GUID")]
        public Guid HdCitemGuid { get; set; }
        [Column("HD_OITEM_GUID")]
        public Guid HdOitemGuid { get; set; }
        [Required]
        [Column("CANCEL_REASON")]
        [StringLength(500)]
        [Unicode(false)]
        public string CancelReason { get; set; }
    }
}