﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_RX")]
    public partial class ProductRx
    {
        [Key]
        [Column("PRX_GUID")]
        public Guid PrxGuid { get; set; }
        [Column("PROD_GUID")]
        public Guid ProdGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("SIG_GUID")]
        public Guid SigGuid { get; set; }
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
        [Column("DEFAULT_DAYS_MEDS_WILL_LAST")]
        public short DefaultDaysMedsWillLast { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Column("REMARK_GUID")]
        public Guid RemarkGuid { get; set; }
        [Column("EXPIRE_DAYS")]
        public int ExpireDays { get; set; }
        [Column("REFILLS")]
        public int Refills { get; set; }
        [Column("INSTRUCTIONS", TypeName = "text")]
        public string Instructions { get; set; }
        [Required]
        [Column("GENERIC_MSG")]
        [StringLength(250)]
        [Unicode(false)]
        public string GenericMsg { get; set; }
    }
}