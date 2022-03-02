﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CorpAttribute")]
    [Index(nameof(Name), Name = "PK_CORP_ATTRIBUTE_NAME", IsUnique = true)]
    public partial class CorpAttribute
    {
        [Key]
        [Column("CORP_ATTRIBUTE_GUID")]
        public Guid CorpAttributeGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Required]
        [Column("DESCRIPTION")]
        [StringLength(500)]
        [Unicode(false)]
        public string Description { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}