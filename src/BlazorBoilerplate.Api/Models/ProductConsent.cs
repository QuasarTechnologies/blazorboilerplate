﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_CONSENTS")]
    public partial class ProductConsent
    {
        [Key]
        [Column("PROD_CONSENT_GUID")]
        public Guid ProdConsentGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("PROD_GUID")]
        public Guid ProdGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CONSENT_GUID")]
        public Guid ConsentGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}