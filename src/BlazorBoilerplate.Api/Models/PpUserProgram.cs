﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PP_USER_PROGRAMS")]
    public partial class PpUserProgram
    {
        [Key]
        [Column("PGM_GUID")]
        public Guid PgmGuid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("PP_PGM_GUID")]
        public Guid PpPgmGuid { get; set; }
        [Required]
        [Column("CAPTION")]
        [StringLength(30)]
        [Unicode(false)]
        public string Caption { get; set; }
        [Column("SECTION_GUID")]
        public Guid SectionGuid { get; set; }
        [Column("IS_VISIBLE")]
        public bool IsVisible { get; set; }
        [Column("PGM_ORDER")]
        public byte PgmOrder { get; set; }
        [Column("SHIFT_CODE")]
        public short ShiftCode { get; set; }
        [Column("KEYCODE")]
        public short Keycode { get; set; }
        [Required]
        [Column("KEYSTROKES")]
        [StringLength(20)]
        [Unicode(false)]
        public string Keystrokes { get; set; }
    }
}