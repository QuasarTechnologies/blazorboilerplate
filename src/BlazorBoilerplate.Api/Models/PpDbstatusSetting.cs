﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PP_DBSTATUS_SETTINGS")]
    public partial class PpDbstatusSetting
    {
        [Key]
        [Column("DBSTATUS_GUID")]
        public Guid DbstatusGuid { get; set; }
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Required]
        [Column("LOCATION_ID")]
        [StringLength(10)]
        [Unicode(false)]
        public string LocationId { get; set; }
        [Required]
        [Column("TITLE_FONTNAME")]
        [StringLength(100)]
        [Unicode(false)]
        public string TitleFontname { get; set; }
        [Column("TITLE_FONT3D")]
        public short TitleFont3d { get; set; }
        [Column("TITLE_FONTSIZE")]
        public short TitleFontsize { get; set; }
        [Column("TITLE_FONTBOLD")]
        public bool TitleFontbold { get; set; }
        [Column("TITLE_FONTITALICS")]
        public bool TitleFontitalics { get; set; }
        [Column("TITLE_FORECOLOR")]
        public int TitleForecolor { get; set; }
        [Column("REM_ICON")]
        public bool RemIcon { get; set; }
        [Column("REM_NAME")]
        public bool RemName { get; set; }
        [Column("REM_MSG")]
        public bool RemMsg { get; set; }
        [Column("REM_DATEDUE")]
        public bool RemDatedue { get; set; }
        [Column("REM_DATEPERF")]
        public bool RemDateperf { get; set; }
        [Column("REM_MAYSEND")]
        public bool RemMaysend { get; set; }
        [Column("REM_SENTCNT")]
        public bool RemSentcnt { get; set; }
        [Column("REM_MAXSEND")]
        public bool RemMaxsend { get; set; }
        [Column("REM_DISPLAYORDER")]
        public short RemDisplayorder { get; set; }
        [Column("REM_SHOWBLANKS")]
        public bool RemShowblanks { get; set; }
        [Column("REM_SHOWNOSEND")]
        public bool RemShownosend { get; set; }
        [Column("ALERT_ICON")]
        public bool AlertIcon { get; set; }
        [Column("ALERT_PRIORITY")]
        public bool AlertPriority { get; set; }
        [Column("ALERT_MSG")]
        public bool AlertMsg { get; set; }
        [Column("ALERT_VALUE")]
        public bool AlertValue { get; set; }
        [Column("ALERT_CRITERIA")]
        public bool AlertCriteria { get; set; }
        [Column("TAB_REMINDER")]
        public bool TabReminder { get; set; }
        [Column("TAB_CALERT")]
        public bool TabCalert { get; set; }
        [Column("TAB_PALERT")]
        public bool TabPalert { get; set; }
        [Column("TAB_CPALERT")]
        public bool TabCpalert { get; set; }
        [Column("TAB_WEIGHT")]
        public bool TabWeight { get; set; }
        [Column("TAB_IMAGES")]
        public bool TabImages { get; set; }
        [Column("TAB_RX")]
        public bool TabRx { get; set; }
        [Required]
        [Column("DEFAULT_CTAB")]
        [StringLength(50)]
        [Unicode(false)]
        public string DefaultCtab { get; set; }
        [Required]
        [Column("DEFAULT_PTAB")]
        [StringLength(50)]
        [Unicode(false)]
        public string DefaultPtab { get; set; }
        [Column("REM_DEFERRED")]
        public bool RemDeferred { get; set; }
        [Column("REM_DECLINED")]
        public bool RemDeclined { get; set; }
        [Required]
        [Column("TAB_DX")]
        public bool? TabDx { get; set; }
        [Required]
        [Column("TAB_PROBLEM")]
        public bool? TabProblem { get; set; }
        [Required]
        [Column("TAB_DECL")]
        public bool? TabDecl { get; set; }
        [Required]
        [Column("TAB_DEF")]
        public bool? TabDef { get; set; }
    }
}