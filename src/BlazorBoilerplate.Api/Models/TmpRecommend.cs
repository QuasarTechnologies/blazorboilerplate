﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("tmpRecommend")]
    public partial class TmpRecommend
    {
        [Key]
        [Column("RecommendGUID")]
        public Guid RecommendGuid { get; set; }
        [Column("PatientGUID")]
        public Guid? PatientGuid { get; set; }
        [Column("ClientGUID")]
        public Guid? ClientGuid { get; set; }
        [Required]
        [StringLength(6)]
        [Unicode(false)]
        public string PatientName { get; set; }
        [Required]
        [StringLength(40)]
        [Unicode(false)]
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        [Required]
        [StringLength(20)]
        [Unicode(false)]
        public string UnitOfMeasure { get; set; }
        [Required]
        [StringLength(30)]
        [Unicode(false)]
        public string ProductType { get; set; }
    }
}