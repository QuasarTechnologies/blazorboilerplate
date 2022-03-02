﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVOICE_RX")]
    public partial class InvoiceRx
    {
        [Key]
        [Column("INVOICE_RX_GUID")]
        public Guid InvoiceRxGuid { get; set; }
        [Column("INVOICE_PROD_GUID")]
        public Guid InvoiceProdGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("RX_NUMBER", TypeName = "money")]
        public decimal RxNumber { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Column("EMPLOYEE_REV_GUID")]
        public Guid EmployeeRevGuid { get; set; }
        [Column("SIG_GUID")]
        public Guid SigGuid { get; set; }
        [Required]
        [Column("SIG_LINE1")]
        [StringLength(50)]
        [Unicode(false)]
        public string SigLine1 { get; set; }
        [Required]
        [Column("SIG_LINE2")]
        [StringLength(50)]
        [Unicode(false)]
        public string SigLine2 { get; set; }
        [Required]
        [Column("SIG_LINE3")]
        [StringLength(50)]
        [Unicode(false)]
        public string SigLine3 { get; set; }
        [Required]
        [Column("SIG_LINE4")]
        [StringLength(50)]
        [Unicode(false)]
        public string SigLine4 { get; set; }
        [Required]
        [Column("SIG_LINE5")]
        [StringLength(50)]
        [Unicode(false)]
        public string SigLine5 { get; set; }
        [Column("REMARK_GUID")]
        public Guid RemarkGuid { get; set; }
        [Required]
        [Column("REMARK")]
        [StringLength(50)]
        [Unicode(false)]
        public string Remark { get; set; }
        [Column("PRX_GUID")]
        public Guid PrxGuid { get; set; }
        [Required]
        [Column("RX_CAUTION1")]
        [StringLength(50)]
        [Unicode(false)]
        public string RxCaution1 { get; set; }
        [Required]
        [Column("RX_CAUTION2")]
        [StringLength(50)]
        [Unicode(false)]
        public string RxCaution2 { get; set; }
        [Required]
        [Column("RX_CAUTION3")]
        [StringLength(50)]
        [Unicode(false)]
        public string RxCaution3 { get; set; }
        [Required]
        [Column("RX_CAUTION4")]
        [StringLength(50)]
        [Unicode(false)]
        public string RxCaution4 { get; set; }
        [Required]
        [Column("RX_CAUTION5")]
        [StringLength(50)]
        [Unicode(false)]
        public string RxCaution5 { get; set; }
        [Required]
        [Column("WITHDRAWAL1")]
        [StringLength(50)]
        [Unicode(false)]
        public string Withdrawal1 { get; set; }
        [Required]
        [Column("WITHDRAWAL2")]
        [StringLength(50)]
        [Unicode(false)]
        public string Withdrawal2 { get; set; }
        [Column("REFILLS_LEFT")]
        public short RefillsLeft { get; set; }
        [Column("EXPIRE_DATE", TypeName = "datetime")]
        public DateTime? ExpireDate { get; set; }
        [Column("DAYS_MEDS_WILL_LAST")]
        public short DaysMedsWillLast { get; set; }
        [Column("LABEL_FMT_GUID")]
        public Guid LabelFmtGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Required]
        [Column("INITIALS")]
        [StringLength(10)]
        [Unicode(false)]
        public string Initials { get; set; }
        [Column("INV_EXPIRE_DATE", TypeName = "datetime")]
        public DateTime? InvExpireDate { get; set; }
    }
}