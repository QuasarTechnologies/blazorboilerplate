﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("Appt_Color_Schemes")]
    public partial class ApptColorScheme
    {
        [Key]
        [Column("COLOR_GUID")]
        public Guid ColorGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("BEVEL_FACE_COLOR")]
        public int BevelFaceColor { get; set; }
        [Column("BEVEL_FRAME_COLOR")]
        public int BevelFrameColor { get; set; }
        [Column("BEVEL_HIGHLIGHT_COLOR")]
        public int BevelHighlightColor { get; set; }
        [Column("BACK_COLOR")]
        public int BackColor { get; set; }
        [Column("BACK_COLOR_SELECTED")]
        public int BackColorSelected { get; set; }
        [Column("DURATION_FILL_COLOR")]
        public int DurationFillColor { get; set; }
        [Column("EDIT_BACK_COLOR")]
        public int EditBackColor { get; set; }
        [Column("EDIT_FORE_COLOR")]
        public int EditForeColor { get; set; }
        [Column("FORE_COLOR")]
        public int ForeColor { get; set; }
        [Column("FORE_COLOR_SELECTED")]
        public int ForeColorSelected { get; set; }
        [Column("DURATION_FILL_PATTERN")]
        public short DurationFillPattern { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}