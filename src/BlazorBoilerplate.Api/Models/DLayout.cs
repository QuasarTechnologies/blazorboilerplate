﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("D_LAYOUTS")]
    public partial class DLayout
    {
        [Key]
        [Column("LAYOUT_GUID")]
        public Guid LayoutGuid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Required]
        [Column("LAYOUT", TypeName = "image")]
        public byte[] Layout { get; set; }
        [Column("L_TYPE")]
        public int LType { get; set; }
        [Column("WIDTH")]
        public int Width { get; set; }
    }
}