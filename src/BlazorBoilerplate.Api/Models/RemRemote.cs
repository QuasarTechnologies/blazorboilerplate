﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("REM_REMOTES")]
    public partial class RemRemote
    {
        [Key]
        [Column("REMOTE_GUID")]
        public Guid RemoteGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("ENABLED")]
        public bool Enabled { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("NEXT_INVOICE_NUMBER", TypeName = "money")]
        public decimal NextInvoiceNumber { get; set; }
        [Column("NEXT_RX_NUMBER", TypeName = "money")]
        public decimal NextRxNumber { get; set; }
        [Column("NEXT_ESTIMATE_NUMBER", TypeName = "money")]
        public decimal NextEstimateNumber { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("REMOTE_VID")]
        public int RemoteVid { get; set; }
    }
}