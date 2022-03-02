﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("VACCINES")]
    [Index(nameof(SpeciesGuid), nameof(VaccineName), Name = "IX_VACCINES", IsUnique = true)]
    public partial class Vaccine
    {
        [Key]
        [Column("VACCINE_GUID")]
        public Guid VaccineGuid { get; set; }
        [Column("SPECIES_GUID")]
        public Guid SpeciesGuid { get; set; }
        [Required]
        [Column("VACCINE_NAME")]
        [StringLength(30)]
        [Unicode(false)]
        public string VaccineName { get; set; }
        [Column("VACCINE_NUMBER")]
        public short VaccineNumber { get; set; }
        [Column("MAX_REMINDER_COUNT")]
        public int MaxReminderCount { get; set; }
        [Column("IS_RABIES")]
        public bool IsRabies { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("AGE_BREAK_DAYS")]
        public int AgeBreakDays { get; set; }
        [Column("ADULT_DAYS")]
        public int AdultDays { get; set; }
        [Column("KID_DAYS")]
        public int KidDays { get; set; }
        [Column("APPLY_DEFAULTS")]
        public bool ApplyDefaults { get; set; }
    }
}