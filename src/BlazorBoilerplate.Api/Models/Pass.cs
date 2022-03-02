﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PASSES")]
    public partial class Pass
    {
        [Key]
        [Column("PASS_GUID")]
        public Guid PassGuid { get; set; }
        [Required]
        [Column("CODE")]
        [StringLength(50)]
        [Unicode(false)]
        public string Code { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("PASSWORD")]
        [StringLength(30)]
        [Unicode(false)]
        public string Password { get; set; }
    }
}