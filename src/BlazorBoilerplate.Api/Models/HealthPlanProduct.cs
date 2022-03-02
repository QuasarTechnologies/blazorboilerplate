﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HEALTH_PLAN_PRODUCTS")]
    public partial class HealthPlanProduct
    {
        [Key]
        [Column("HP_PROD_GUID")]
        public Guid HpProdGuid { get; set; }
        [Column("HEALTH_PLAN_GUID")]
        public Guid HealthPlanGuid { get; set; }
        [Column("PRODM_GUID")]
        public Guid ProdmGuid { get; set; }
        [Column("DISCOUNT")]
        public int Discount { get; set; }
        [Column("ALLOWED_CNT")]
        public int AllowedCnt { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}