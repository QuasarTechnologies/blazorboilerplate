﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("ANTECH_SPECIES")]
    [Index(nameof(SpeciesName), Name = "sni")]
    public partial class AntechSpecy
    {
        [Key]
        [Column("SPECIES_GUID")]
        public Guid SpeciesGuid { get; set; }
        [Required]
        [Column("SPECIES_NAME")]
        [StringLength(50)]
        public string SpeciesName { get; set; }
        [Required]
        [Column("SPECIES_CODE")]
        [StringLength(7)]
        public string SpeciesCode { get; set; }
    }
}