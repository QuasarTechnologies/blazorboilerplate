﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVOICE_EMP_BUN_LOG")]
    public partial class InvoiceEmpBunLog
    {
        [Key]
        [Column("LOG_GUID")]
        public Guid LogGuid { get; set; }
        [Column("LOG_DATETIME", TypeName = "datetime")]
        public DateTime LogDatetime { get; set; }
        [Required]
        [Column("ACTION")]
        [StringLength(250)]
        [Unicode(false)]
        public string Action { get; set; }
        [Column("SESSION_GUID")]
        public Guid SessionGuid { get; set; }
        [Column("INSTANCE_GUID")]
        public Guid InstanceGuid { get; set; }
        [Column("EBUN_GUID")]
        public Guid EbunGuid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("WKST_GUID")]
        public Guid WkstGuid { get; set; }
    }
}