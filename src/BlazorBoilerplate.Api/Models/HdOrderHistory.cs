﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HD_ORDER_HISTORY")]
    [Index(nameof(HdAcctNum), Name = "IX_HD_HISTORY_ACCTNUM")]
    [Index(nameof(FilledDateTime), Name = "IX_HD_HISTORY_FILLED")]
    [Index(nameof(HdOitemGuid), Name = "IX_HD_HISTORY_OITEMGUID")]
    [Index(nameof(HdOrderGuid), Name = "IX_HD_HISTORY_ORDERGUID")]
    [Index(nameof(AcctOrderid), Name = "IX_HD_HISTORY_ORDERID")]
    [Index(nameof(AcctRxid), Name = "IX_HD_HISTORY_RXID")]
    public partial class HdOrderHistory
    {
        [Key]
        [Column("HD_HISTORY_GUID")]
        public Guid HdHistoryGuid { get; set; }
        [Column("HD_ORDER_GUID")]
        public Guid HdOrderGuid { get; set; }
        [Column("HD_OITEM_GUID")]
        public Guid HdOitemGuid { get; set; }
        [Column("HD_ACCT_NUM")]
        public int HdAcctNum { get; set; }
        [Required]
        [Column("ACCT_ORDERID")]
        [StringLength(20)]
        [Unicode(false)]
        public string AcctOrderid { get; set; }
        [Required]
        [Column("ACCT_RXID")]
        [StringLength(20)]
        [Unicode(false)]
        public string AcctRxid { get; set; }
        [Column("COST", TypeName = "money")]
        public decimal Cost { get; set; }
        [Column("PRICE", TypeName = "money")]
        public decimal Price { get; set; }
        [Column("USE_TAX", TypeName = "money")]
        public decimal UseTax { get; set; }
        [Column("SALES_TAX", TypeName = "money")]
        public decimal SalesTax { get; set; }
        [Column("FILLED_DATE_TIME", TypeName = "datetime")]
        public DateTime FilledDateTime { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Required]
        [Column("STATUS")]
        [StringLength(10)]
        [Unicode(false)]
        public string Status { get; set; }
        [Required]
        [Column("FILLS_REMAINING")]
        [StringLength(10)]
        [Unicode(false)]
        public string FillsRemaining { get; set; }
        [Required]
        [Column("FILL_NUMBER")]
        [StringLength(10)]
        [Unicode(false)]
        public string FillNumber { get; set; }
        [Column("VET_MARGIN", TypeName = "money")]
        public decimal VetMargin { get; set; }
    }
}