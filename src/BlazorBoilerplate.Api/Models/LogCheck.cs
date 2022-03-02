﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    public partial class LogCheck
    {
        [Key]
        [Column("check_id")]
        public int CheckId { get; set; }
        [Required]
        [Column("check_query")]
        [StringLength(3000)]
        [Unicode(false)]
        public string CheckQuery { get; set; }
        [Required]
        [Column("check_help", TypeName = "text")]
        public string CheckHelp { get; set; }
        [Required]
        [Column("check_active")]
        public bool? CheckActive { get; set; }
        [Column("check_group")]
        public int CheckGroup { get; set; }
        [Column("KEY_ROW_GUID")]
        public Guid KeyRowGuid { get; set; }
    }
}