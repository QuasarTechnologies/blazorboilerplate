﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("VACCINE_PATIENT_DETAILS")]
    public partial class VaccinePatientDetail
    {
        [Key]
        [Column("VACC_PAT_GUID")]
        public Guid VaccPatGuid { get; set; }
        [Column("VACCINE_GUID")]
        public Guid VaccineGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
        [Column("VACCINE_DUE_DATE", TypeName = "datetime")]
        public DateTime? VaccineDueDate { get; set; }
        [Column("DATE_GIVEN", TypeName = "datetime")]
        public DateTime? DateGiven { get; set; }
        [Column("SHOULD_SEND_REMINDER")]
        public bool ShouldSendReminder { get; set; }
        [Column("REMINDER_COUNT")]
        public int ReminderCount { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("REMINDER_DECLINED")]
        public bool ReminderDeclined { get; set; }
        [Column("REMINDER_DEFERRED")]
        public bool ReminderDeferred { get; set; }
    }
}