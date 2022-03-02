﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_CATS")]
    public partial class ProductCat
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("PCAT_GUID")]
        public Guid PcatGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Required]
        [Column("ABBREV")]
        [StringLength(10)]
        [Unicode(false)]
        public string Abbrev { get; set; }
        [Required]
        [Column("DESCRIPTION")]
        [StringLength(500)]
        [Unicode(false)]
        public string Description { get; set; }
        [Column("OK_IN_INVOICING")]
        public bool OkInInvoicing { get; set; }
        [Column("OK_IN_SURGERY")]
        public bool OkInSurgery { get; set; }
        [Column("OK_IN_ESTIMATES")]
        public bool OkInEstimates { get; set; }
        [Column("OK_IN_RX")]
        public bool OkInRx { get; set; }
        [Column("OK_IN_XRAY")]
        public bool OkInXray { get; set; }
        [Column("OK_IN_BOARDING")]
        public bool OkInBoarding { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
    }
}