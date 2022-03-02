﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("DISCOUNT_PERCENTS")]
    public partial class DiscountPercent
    {
        [Key]
        [Column("DP_GUID")]
        public Guid DpGuid { get; set; }
        [Column("DISCOUNT_GUID")]
        public Guid DiscountGuid { get; set; }
        [Column("DTYPE_GUID")]
        public Guid DtypeGuid { get; set; }
        [Column("PERCENTAGE")]
        public int Percentage { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}