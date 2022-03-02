﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("Appt_User_Prefs")]
    public partial class ApptUserPref
    {
        [Key]
        [Column("EZPREF_GUID")]
        public Guid EzprefGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("CURRENTTAB")]
        public int Currenttab { get; set; }
        [Column("CURRENT_GROUP_GUID")]
        public Guid CurrentGroupGuid { get; set; }
        [Column("CURRENT_RESOURCE_GUID")]
        public Guid CurrentResourceGuid { get; set; }
        [Column("SELBAR_SEQUENCE")]
        public int SelbarSequence { get; set; }
        [Column("LAST_VISIT_DATE", TypeName = "datetime")]
        public DateTime LastVisitDate { get; set; }
        [Column("LAST_WORKSTATION_GUID")]
        public Guid LastWorkstationGuid { get; set; }
    }
}