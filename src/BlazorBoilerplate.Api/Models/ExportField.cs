﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EXPORT_FIELDS")]
    public partial class ExportField
    {
        [Key]
        [Column("FIELD_GUID")]
        public Guid FieldGuid { get; set; }
        [Column("TEMPLATE_GUID")]
        public Guid TemplateGuid { get; set; }
        [Required]
        [Column("FIELD_VAL")]
        [StringLength(200)]
        [Unicode(false)]
        public string FieldVal { get; set; }
        [Column("FIELD_ORDER")]
        public int FieldOrder { get; set; }
    }
}