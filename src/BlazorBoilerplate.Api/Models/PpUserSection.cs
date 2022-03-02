﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PP_USER_SECTIONS")]
    public partial class PpUserSection
    {
        [Key]
        [Column("SECTION_GUID")]
        public Guid SectionGuid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Required]
        [Column("CAPTION")]
        [StringLength(30)]
        [Unicode(false)]
        public string Caption { get; set; }
        [Column("SECTION_ORDER")]
        public byte SectionOrder { get; set; }
    }
}