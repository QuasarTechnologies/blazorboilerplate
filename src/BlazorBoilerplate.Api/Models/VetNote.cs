﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    public partial class VetNote
    {
        [Key]
        [Column("NOTE_GUID")]
        public Guid NoteGuid { get; set; }
        [Column("PARENT_GUID")]
        public Guid ParentGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(100)]
        [Unicode(false)]
        public string Name { get; set; }
        [Required]
        [Column("TEXT", TypeName = "text")]
        public string Text { get; set; }
        [Column("DELETED_GUID")]
        public Guid DeletedGuid { get; set; }
        [Column("ICON")]
        public Guid Icon { get; set; }
        [Required]
        [Column("TEXT1", TypeName = "text")]
        public string Text1 { get; set; }
        [Required]
        [Column("TEXT2", TypeName = "text")]
        public string Text2 { get; set; }
        [Required]
        [Column("TEXT3", TypeName = "text")]
        public string Text3 { get; set; }
    }
}