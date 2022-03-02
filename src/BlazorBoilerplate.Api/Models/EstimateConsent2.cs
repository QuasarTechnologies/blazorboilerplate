﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("ESTIMATE_CONSENT2")]
    public partial class EstimateConsent2
    {
        [Key]
        [Column("ECONSENT_GUID")]
        public Guid EconsentGuid { get; set; }
        [Column("CONSENT_GUID")]
        public Guid ConsentGuid { get; set; }
        [Column("ESTIMATE_GUID")]
        public Guid EstimateGuid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("CONSENT_TYPE")]
        public int ConsentType { get; set; }
        [Column("NUM_MSGS")]
        public int NumMsgs { get; set; }
        [Column("REQ_INITIALS")]
        public bool ReqInitials { get; set; }
        [Column("SORT_ORDER")]
        public int SortOrder { get; set; }
        [Column("CREATE_CASHIER_GUID")]
        public Guid CreateCashierGuid { get; set; }
        [Column("WIZARD_STATUS")]
        public bool WizardStatus { get; set; }
        [Column("LAST_CASHIER_GUID")]
        public Guid LastCashierGuid { get; set; }
        [Column("LAST_DATE_TIME", TypeName = "datetime")]
        public DateTime LastDateTime { get; set; }
    }
}