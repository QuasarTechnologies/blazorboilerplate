﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("VN_DX")]
    [Index(nameof(VnGuid), nameof(DxGuid), nameof(Itemtype), Name = "vndx", IsUnique = true)]
    public partial class VnDx
    {
        [Key]
        [Column("KEY_GUID")]
        public Guid KeyGuid { get; set; }
        [Column("VN_GUID")]
        public Guid VnGuid { get; set; }
        [Column("DX_GUID")]
        public Guid DxGuid { get; set; }
        [Column("itemtype")]
        public int Itemtype { get; set; }
    }
}