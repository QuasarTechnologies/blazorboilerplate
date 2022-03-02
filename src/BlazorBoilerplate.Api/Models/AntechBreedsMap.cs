﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("ANTECH_BREEDS_MAP")]
    [Index(nameof(AntechBreedGuid), Name = "agi")]
    [Index(nameof(BreedGuid), Name = "bgi")]
    public partial class AntechBreedsMap
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("BREED_GUID")]
        public Guid BreedGuid { get; set; }
        [Column("ANTECH_BREED_GUID")]
        public Guid AntechBreedGuid { get; set; }
    }
}