﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("TRANSACTIONS")]
    public partial class Transaction
    {
        [Key]
        [Column("TRANS_GUID")]
        public Guid TransGuid { get; set; }
        [Column("INVOICE_GUID")]
        public Guid InvoiceGuid { get; set; }
        [Column("TRANS_CODE")]
        public short TransCode { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("INVOICE_NUMBER", TypeName = "money")]
        public decimal InvoiceNumber { get; set; }
        [Column("DATE_COMPLETED", TypeName = "datetime")]
        public DateTime DateCompleted { get; set; }
        [Column("CASHIER_GUID")]
        public Guid CashierGuid { get; set; }
        [Column("STATUS")]
        public short Status { get; set; }
        [Column("PRINT_COUNT")]
        public int PrintCount { get; set; }
        [Column("STATEMENT_GUID")]
        public Guid StatementGuid { get; set; }
        [Column("INVOICE_TEMPLATE_GUID")]
        public Guid InvoiceTemplateGuid { get; set; }
        [Column("IS_SPLIT_BILLED")]
        public bool IsSplitBilled { get; set; }
        [Column("TOTAL_INVOICE_AMOUNT", TypeName = "money")]
        public decimal TotalInvoiceAmount { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("TRANS_NUMBER", TypeName = "money")]
        public decimal TransNumber { get; set; }
        [Column("BEF_CLIENT_00_30", TypeName = "money")]
        public decimal BefClient0030 { get; set; }
        [Column("BEF_CLIENT_31_60", TypeName = "money")]
        public decimal BefClient3160 { get; set; }
        [Column("BEF_CLIENT_61_90", TypeName = "money")]
        public decimal BefClient6190 { get; set; }
        [Column("BEF_CLIENT_OVER90", TypeName = "money")]
        public decimal BefClientOver90 { get; set; }
        [Column("AFT_CLIENT_00_30", TypeName = "money")]
        public decimal AftClient0030 { get; set; }
        [Column("AFT_CLIENT_31_60", TypeName = "money")]
        public decimal AftClient3160 { get; set; }
        [Column("AFT_CLIENT_61_90", TypeName = "money")]
        public decimal AftClient6190 { get; set; }
        [Column("AFT_CLIENT_OVER90", TypeName = "money")]
        public decimal AftClientOver90 { get; set; }
        [Required]
        [Column("ACCOUNTING_UPDATED")]
        [StringLength(1)]
        [Unicode(false)]
        public string AccountingUpdated { get; set; }
        [Required]
        [Column("BUCKET_UPDATED")]
        [StringLength(1)]
        [Unicode(false)]
        public string BucketUpdated { get; set; }
        [Required]
        [Column("TEMPLATE_VERSION")]
        [StringLength(1)]
        [Unicode(false)]
        public string TemplateVersion { get; set; }
        [Column("REFERRAL_SOURCE_GUID")]
        public Guid ReferralSourceGuid { get; set; }
    }
}