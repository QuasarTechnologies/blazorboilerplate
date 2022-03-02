﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("LIST_VALUES")]
    [Index(nameof(FieldDefinitionGuid), nameof(ListValue1), Name = "IX_LIST_VALUES", IsUnique = true)]
    public partial class ListValue
    {
        [Key]
        [Column("LIST_VALUE_GUID")]
        public Guid ListValueGuid { get; set; }
        [Column("FIELD_DEFINITION_GUID")]
        public Guid FieldDefinitionGuid { get; set; }
        [Required]
        [Column("LIST_VALUE")]
        [StringLength(255)]
        [Unicode(false)]
        public string ListValue1 { get; set; }
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