﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_PRICE_QUOTE")]
    [Index(nameof(HdAcctNum), Name = "IX_HD_PQUOTE_ACCT_NUM")]
    [Index(nameof(PatientGuid), Name = "IX_HD_PQUOTE_PATIENT")]
    [Index(nameof(SessionGuid), Name = "IX_HD_PQUOTE_SESSION")]
    public partial class HdPriceQuote
    {
        [Key]
        [Column("QUOTE_GUID")]
        public Guid QuoteGuid { get; set; }
        [Column("SESSION_GUID")]
        public Guid SessionGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("HD_ACCT_NUM")]
        public int HdAcctNum { get; set; }
        [Required]
        [Column("STATUS")]
        [StringLength(10)]
        [Unicode(false)]
        public string Status { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Required]
        [Column("PRODUCT_ID")]
        [StringLength(50)]
        [Unicode(false)]
        public string ProductId { get; set; }
        [Column("QTY", TypeName = "money")]
        public decimal Qty { get; set; }
        [Column("PRICE", TypeName = "money")]
        public decimal Price { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
    }
}