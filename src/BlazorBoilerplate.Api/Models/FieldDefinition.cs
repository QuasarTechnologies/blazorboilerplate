﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("Field_Definitions")]
    [Index(nameof(TableName), nameof(UserDefinedFieldName), Name = "IX_FIELD_DEFINITIONS", IsUnique = true)]
    [Index(nameof(TableName), nameof(FieldName), Name = "IX_FIELD_DEFINITIONS_1", IsUnique = true)]
    public partial class FieldDefinition
    {
        [Key]
        [Column("FIELD_DEFINITION_GUID")]
        public Guid FieldDefinitionGuid { get; set; }
        [Required]
        [Column("TABLE_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string TableName { get; set; }
        [Required]
        [Column("FIELD_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string FieldName { get; set; }
        [Required]
        [Column("USER_DEFINED_FIELD_NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string UserDefinedFieldName { get; set; }
        [Column("DATA_TYPE")]
        public short DataType { get; set; }
        [Column("MASK_OPTION")]
        public short MaskOption { get; set; }
        [Column("SIZE")]
        public short Size { get; set; }
        [Column("IS_CUSTOM_FIELD")]
        public bool IsCustomField { get; set; }
        [Column("REQUIRED")]
        public bool Required { get; set; }
        [Column("POSITION")]
        public short Position { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}