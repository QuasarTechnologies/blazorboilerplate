﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("EFORMS_FIELDS")]
    public partial class EformsField
    {
        [Key]
        [Column("FIELD_GUID")]
        public Guid FieldGuid { get; set; }
        [Column("EFORM_GUID")]
        public Guid EformGuid { get; set; }
        [Column("F_TYPE")]
        public int FType { get; set; }
        [Required]
        [Column("F_TEXT", TypeName = "text")]
        public string FText { get; set; }
        [Column("F_TOP")]
        public int FTop { get; set; }
        [Column("F_LEFT")]
        public int FLeft { get; set; }
        [Column("F_HEIGHT")]
        public int FHeight { get; set; }
        [Column("F_WIDTH")]
        public int FWidth { get; set; }
        [Column("F_INPUT_TYPE")]
        public int FInputType { get; set; }
        [Required]
        [Column("F_DATA_FIELD", TypeName = "text")]
        public string FDataField { get; set; }
        [Column("F_CHECKED")]
        public bool FChecked { get; set; }
        [Column("F_ZORDER")]
        public int FZorder { get; set; }
        [Required]
        [Column("F_FONT_NAME", TypeName = "text")]
        public string FFontName { get; set; }
        [Column("F_FONT_BOLD")]
        public bool FFontBold { get; set; }
        [Column("F_FONT_ITALIC")]
        public bool FFontItalic { get; set; }
        [Column("F_FONT_UNDERLINE")]
        public bool FFontUnderline { get; set; }
        [Column("F_FONT_STRIKE_THRU")]
        public bool FFontStrikeThru { get; set; }
        [Column("F_FONT_SIZE")]
        public int FFontSize { get; set; }
        [Column("SHOW_BORDER")]
        public bool ShowBorder { get; set; }
        [Column("IMAGE_GUID")]
        public Guid ImageGuid { get; set; }
        [Column("F_INDEX")]
        public int FIndex { get; set; }
    }
}