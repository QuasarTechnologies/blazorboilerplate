﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("IMAGE_THUMBNAILS")]
    public partial class ImageThumbnail
    {
        [Key]
        [Column("REVISION_GUID")]
        public Guid RevisionGuid { get; set; }
        [Column("IMAGE_GUID")]
        public Guid ImageGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("CATEGORY")]
        [StringLength(16)]
        [Unicode(false)]
        public string Category { get; set; }
        [Required]
        [Column("DESC_SHORT")]
        [StringLength(50)]
        [Unicode(false)]
        public string DescShort { get; set; }
        [Required]
        [Column("DESCRIPTION", TypeName = "text")]
        public string Description { get; set; }
        [Required]
        [Column("IMAGE", TypeName = "image")]
        public byte[] Image { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("OWNER_GUID")]
        public Guid OwnerGuid { get; set; }
        [Column("REVISION")]
        public int Revision { get; set; }
        [Column("DICOM")]
        public bool Dicom { get; set; }
        [Required]
        [Column("REVISED")]
        public bool? Revised { get; set; }
    }
}