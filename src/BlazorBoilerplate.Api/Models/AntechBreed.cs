﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("ANTECH_BREEDS")]
    [Index(nameof(BreedName), Name = "bni")]
    [Index(nameof(SpeciesGuid), Name = "spi")]
    public partial class AntechBreed
    {
        [Key]
        [Column("BREED_GUID")]
        public Guid BreedGuid { get; set; }
        [Required]
        [Column("BREED_NAME")]
        [StringLength(50)]
        public string BreedName { get; set; }
        [Required]
        [Column("BREED_CODE")]
        [StringLength(6)]
        public string BreedCode { get; set; }
        [Column("SPECIES_GUID")]
        public Guid SpeciesGuid { get; set; }
    }
}