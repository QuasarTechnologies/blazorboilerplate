﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("USERS_DB_PRINT")]
    public partial class UsersDbPrint
    {
        [Key]
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("CLIENT_GUID")]
        public Guid ClientGuid { get; set; }
        [Column("PATIENT_GUID")]
        public Guid PatientGuid { get; set; }
    }
}