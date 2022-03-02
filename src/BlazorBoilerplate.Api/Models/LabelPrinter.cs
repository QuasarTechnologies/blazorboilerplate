﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("LABEL_PRINTERS")]
    public partial class LabelPrinter
    {
        [Key]
        [Column("LABEL_PRINTER_GUID")]
        public Guid LabelPrinterGuid { get; set; }
        [Required]
        [Column("NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string Name { get; set; }
        [Required]
        [Column("DESCRIPTION")]
        [StringLength(255)]
        [Unicode(false)]
        public string Description { get; set; }
        [Column("CREATE_DATE", TypeName = "datetime")]
        public DateTime CreateDate { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
    }
}