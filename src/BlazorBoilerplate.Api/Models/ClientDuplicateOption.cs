﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CLIENT_DUPLICATE_OPTIONS")]
    public partial class ClientDuplicateOption
    {
        [Key]
        [Column("REC_GUID")]
        public Guid RecGuid { get; set; }
        [Required]
        [Column("FIELD_NAME")]
        [StringLength(100)]
        [Unicode(false)]
        public string FieldName { get; set; }
    }
}