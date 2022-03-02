﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("WORKSTATION_PRINTERS")]
    public partial class WorkstationPrinter
    {
        [Key]
        [Column("WP_GUID")]
        public Guid WpGuid { get; set; }
        [Column("WORKSTATION_GUID")]
        public Guid WorkstationGuid { get; set; }
        [Column("HCPTR_GUID")]
        public Guid HcptrGuid { get; set; }
        [Required]
        [Column("DEVICE_NAME")]
        [StringLength(255)]
        [Unicode(false)]
        public string DeviceName { get; set; }
        [Column("DUPLEXED")]
        public bool Duplexed { get; set; }
        [Required]
        [Column("DUPLEX_EDGE")]
        public bool? DuplexEdge { get; set; }
        [Column("PAPER_SOURCE1")]
        public int PaperSource1 { get; set; }
        [Column("PAPER_SOURCE2")]
        public int PaperSource2 { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}