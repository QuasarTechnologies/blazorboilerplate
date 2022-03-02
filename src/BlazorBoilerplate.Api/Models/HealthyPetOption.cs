﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("HEALTHY_PET_OPTIONS")]
    public partial class HealthyPetOption
    {
        [Key]
        [Column("OPTION_NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string OptionName { get; set; }
        [Required]
        [Column("OPTION_VALUE")]
        [StringLength(250)]
        [Unicode(false)]
        public string OptionValue { get; set; }
        [Column("KEY_ROW_GUID")]
        public Guid KeyRowGuid { get; set; }
    }
}