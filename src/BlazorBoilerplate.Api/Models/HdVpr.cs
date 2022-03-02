﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_VPR")]
    [Index(nameof(HdAcctNum), Name = "IX_HD_VPR_ACCT_NUM")]
    [Index(nameof(Drugid), Name = "IX_HD_VPR_DRUGID")]
    [Index(nameof(ProductId), Name = "IX_HD_VPR_PRODUCTID")]
    public partial class HdVpr
    {
        [Key]
        [Column("HD_VPR_GUID")]
        public Guid HdVprGuid { get; set; }
        [Required]
        [Column("PRODUCT_ID")]
        [StringLength(50)]
        [Unicode(false)]
        public string ProductId { get; set; }
        [Column("HD_ACCT_NUM")]
        public int HdAcctNum { get; set; }
        [Column("DRUGID")]
        public int Drugid { get; set; }
        [Column("STRENGTH")]
        public double Strength { get; set; }
        [Column("UNIT")]
        public short Unit { get; set; }
        [Column("PER_ML")]
        public short PerMl { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}