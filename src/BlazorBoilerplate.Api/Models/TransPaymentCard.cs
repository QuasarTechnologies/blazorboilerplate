﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("TRANS_PAYMENT_CARDS")]
    public partial class TransPaymentCard
    {
        [Key]
        [Column("TX_CARD_GUID")]
        public Guid TxCardGuid { get; set; }
        [Column("TX_PMT_GUID")]
        public Guid TxPmtGuid { get; set; }
        [Column("TRANS_GUID")]
        public Guid TransGuid { get; set; }
        [Column("INVOICE_GUID")]
        public Guid InvoiceGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("CARD_TYPE")]
        public int CardType { get; set; }
        [Required]
        [Column("APPROVAL_CODE")]
        [StringLength(20)]
        [Unicode(false)]
        public string ApprovalCode { get; set; }
        [Required]
        [Column("CC_NUM")]
        [StringLength(20)]
        [Unicode(false)]
        public string CcNum { get; set; }
        [Column("NAME_FROM_CARD")]
        [StringLength(50)]
        [Unicode(false)]
        public string NameFromCard { get; set; }
        [Column("SIG_IMAGE", TypeName = "image")]
        public byte[] SigImage { get; set; }
        [Column("RECEIPT_REV_GUID")]
        public Guid ReceiptRevGuid { get; set; }
        [Required]
        [Column("TMPEXP")]
        [StringLength(10)]
        [Unicode(false)]
        public string Tmpexp { get; set; }
        [Required]
        [Column("CREDIT_CARD_TRANS_ID")]
        [StringLength(12)]
        [Unicode(false)]
        public string CreditCardTransId { get; set; }
    }
}