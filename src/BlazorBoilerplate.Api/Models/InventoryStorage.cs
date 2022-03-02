﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVENTORY_STORAGE")]
    public partial class InventoryStorage
    {
        [Key]
        [Column("STORAGE_GUID")]
        public Guid StorageGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string Name { get; set; }
        [Column("DELETE_GUID")]
        public Guid DeleteGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Required]
        [Column("DESCRIPTION")]
        [StringLength(1000)]
        [Unicode(false)]
        public string Description { get; set; }
        [Column("ONCONSIGNMENT")]
        public bool Onconsignment { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
    }
}