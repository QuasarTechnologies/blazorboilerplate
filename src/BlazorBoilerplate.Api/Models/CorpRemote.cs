﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    public partial class CorpRemote
    {
        [Key]
        [Column("RemoteGUID")]
        public Guid RemoteGuid { get; set; }
        [Required]
        [StringLength(100)]
        [Unicode(false)]
        public string RemoteServer { get; set; }
    }
}