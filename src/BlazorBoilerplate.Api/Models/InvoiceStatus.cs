﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("INVOICE_STATUS")]
    public partial class InvoiceStatus
    {
        [Key]
        [Column("IS_GUID")]
        public Guid IsGuid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("STATUS")]
        public int Status { get; set; }
        [Required]
        [Column("NOTE_TEXT", TypeName = "text")]
        public string NoteText { get; set; }
        [Required]
        [Column("NOTE_RTF", TypeName = "text")]
        public string NoteRtf { get; set; }
        [Column("TASK_COMPLETED")]
        public bool TaskCompleted { get; set; }
        [Required]
        [Column("TASK_TEXT", TypeName = "text")]
        public string TaskText { get; set; }
        [Required]
        [Column("TASK_RTF", TypeName = "text")]
        public string TaskRtf { get; set; }
        [Column("TASK_CASHIER_GUID")]
        public Guid TaskCashierGuid { get; set; }
    }
}