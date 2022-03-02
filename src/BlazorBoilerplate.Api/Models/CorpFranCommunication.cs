﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("CORP_FRAN_COMMUNICATIONS")]
    public partial class CorpFranCommunication
    {
        [Key]
        [Column("FRAN_PRACTICE_GUID")]
        public Guid FranPracticeGuid { get; set; }
        [Column("COM_TYPE")]
        public int ComType { get; set; }
        [Column("COM_STATUS")]
        public int ComStatus { get; set; }
        [Column("COM_DATE_TIME", TypeName = "datetime")]
        public DateTime ComDateTime { get; set; }
    }
}