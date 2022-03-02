﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("REPORT_LIST_ITEMS")]
    public partial class ReportListItem
    {
        [Key]
        [Column("REPORT_LIST_ITEM_GUID")]
        public Guid ReportListItemGuid { get; set; }
        [Column("REPORT_LIST_GUID")]
        public Guid ReportListGuid { get; set; }
        [Required]
        [Column("REPORT_CODE")]
        [StringLength(10)]
        [Unicode(false)]
        public string ReportCode { get; set; }
    }
}