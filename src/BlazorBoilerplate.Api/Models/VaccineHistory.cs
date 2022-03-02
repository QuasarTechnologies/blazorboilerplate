﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("VACCINE_HISTORY")]
    public partial class VaccineHistory
    {
        [Key]
        [Column("HISTORY_GUID")]
        public Guid HistoryGuid { get; set; }
        [Key]
        [Column("VACCINE_GUID")]
        public Guid VaccineGuid { get; set; }
        [Required]
        [Column("VACCINE_NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string VaccineName { get; set; }
        [Column("VACCINE_NUMBER")]
        public short VaccineNumber { get; set; }
        [Column("IS_RABIES")]
        public bool IsRabies { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("KEY_ROW_GUID")]
        public Guid KeyRowGuid { get; set; }
    }
}