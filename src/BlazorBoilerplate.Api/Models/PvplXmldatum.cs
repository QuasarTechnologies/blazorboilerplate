﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PVPL_XMLDATA")]
    [Index(nameof(InvmGuid), Name = "IX_PVPL_INVMGUID")]
    [Index(nameof(LongItemNumber), Name = "IX_PVPL_LongItem", IsUnique = true)]
    [Index(nameof(Name), Name = "IX_PVPL_Name")]
    [Index(nameof(ShortItemNumber), Name = "IX_PVPL_ShortItem", IsUnique = true)]
    public partial class PvplXmldatum
    {
        [Key]
        [Column("PVP_GUID")]
        public Guid PvpGuid { get; set; }
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string ShortItemNumber { get; set; }
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string LongItemNumber { get; set; }
        [Required]
        [StringLength(100)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column(TypeName = "text")]
        public string Description { get; set; }
        [Column(TypeName = "money")]
        public decimal Price { get; set; }
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string ManufacturerCode { get; set; }
        [Required]
        [Column("NDCNumber")]
        [StringLength(20)]
        [Unicode(false)]
        public string Ndcnumber { get; set; }
        [Column(TypeName = "money")]
        public decimal UnitsPerPackage { get; set; }
        [Column(TypeName = "money")]
        public decimal QuantityPerUnit { get; set; }
        [Column("INVM_GUID")]
        public Guid InvmGuid { get; set; }
        [Column("CREATE_DATETIME", TypeName = "datetime")]
        public DateTime CreateDatetime { get; set; }
        [Column("LASTMOD_DATETIME", TypeName = "datetime")]
        public DateTime LastmodDatetime { get; set; }
        [Required]
        [Column("BARCODE")]
        [StringLength(250)]
        [Unicode(false)]
        public string Barcode { get; set; }
        [Column("COSTQTY", TypeName = "money")]
        public decimal Costqty { get; set; }
    }
}