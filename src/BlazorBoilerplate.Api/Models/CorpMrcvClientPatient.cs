﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CORP_MRCV_CLIENT_PATIENT")]
    public partial class CorpMrcvClientPatient
    {
        [Key]
        [Column("ROW_GUID")]
        public Guid RowGuid { get; set; }
        [Column("KEY_GUID")]
        public Guid KeyGuid { get; set; }
        [Required]
        [Column("TABLE_NAME")]
        [StringLength(256)]
        [Unicode(false)]
        public string TableName { get; set; }
        [Required]
        [Column("FIELD_NAME")]
        [StringLength(256)]
        [Unicode(false)]
        public string FieldName { get; set; }
        [Required]
        [Column("FIELD_VALUE", TypeName = "text")]
        public string FieldValue { get; set; }
    }
}