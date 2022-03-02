﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CAGES")]
    [Index(nameof(PracticeVid), nameof(WardGuid), nameof(Abbrev), nameof(DeleteGuid), Name = "IX_CAGES", IsUnique = true)]
    public partial class Cage
    {
        [Key]
        [Column("CAGE_GUID")]
        public Guid CageGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("WARD_GUID")]
        public Guid WardGuid { get; set; }
        [Required]
        [Column("ABBREV")]
        [StringLength(10)]
        [Unicode(false)]
        public string Abbrev { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(40)]
        [Unicode(false)]
        public string Name { get; set; }
        [Required]
        [Column("DESCRIPTION")]
        [StringLength(120)]
        [Unicode(false)]
        public string Description { get; set; }
        [Column("AVAILABLE")]
        public bool Available { get; set; }
        [Column("OVERBOOK")]
        public bool Overbook { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Column("DISPLAY_ORDER")]
        public int DisplayOrder { get; set; }
    }
}