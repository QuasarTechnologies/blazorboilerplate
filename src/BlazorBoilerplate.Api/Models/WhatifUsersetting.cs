﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("WHATIF_USERSETTINGS")]
    public partial class WhatifUsersetting
    {
        [Key]
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("GROUP_OPTION")]
        public short GroupOption { get; set; }
        [Column("SORT_OPTION")]
        public short SortOption { get; set; }
        [Column("REPORT_COLOR")]
        public int ReportColor { get; set; }
        [Column("GROUP_COLOR")]
        public int GroupColor { get; set; }
        [Column("PRODUCT_COLOR")]
        public int ProductColor { get; set; }
        [Column("DETAIL_COLOR")]
        public int DetailColor { get; set; }
    }
}