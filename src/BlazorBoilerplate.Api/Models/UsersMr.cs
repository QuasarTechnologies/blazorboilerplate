﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("USERS_MR")]
    public partial class UsersMr
    {
        [Key]
        [Column("USER_GUID")]
        public Guid UserGuid { get; set; }
        [Column("PRACTICE_VID")]
        public short PracticeVid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("DELETED")]
        public bool Deleted { get; set; }
        [Column("EDIT_NOTE")]
        public bool EditNote { get; set; }
        [Column("EDIT_DX")]
        public bool EditDx { get; set; }
        [Column("EDIT_IMAGE")]
        public bool EditImage { get; set; }
        [Column("EDIT_CASE")]
        public bool EditCase { get; set; }
        [Column("EDIT_PROB")]
        public bool EditProb { get; set; }
        [Column("EDIT_LAB")]
        public bool EditLab { get; set; }
        [Column("EDIT_SURG")]
        public bool EditSurg { get; set; }
        [Column("EDIT_XRAY")]
        public bool EditXray { get; set; }
        [Column("EDIT_AUDIO")]
        public bool EditAudio { get; set; }
        [Column("EDIT_EFORM")]
        public bool EditEform { get; set; }
        [Column("CREATE_NOTE")]
        public bool CreateNote { get; set; }
        [Column("CREATE_DX")]
        public bool CreateDx { get; set; }
        [Column("CREATE_IMAGE")]
        public bool CreateImage { get; set; }
        [Column("CREATE_CASE")]
        public bool CreateCase { get; set; }
        [Column("CREATE_PROB")]
        public bool CreateProb { get; set; }
        [Column("CREATE_LAB")]
        public bool CreateLab { get; set; }
        [Column("CREATE_SURG")]
        public bool CreateSurg { get; set; }
        [Column("CREATE_XRAY")]
        public bool CreateXray { get; set; }
        [Column("CREATE_AUDIO")]
        public bool CreateAudio { get; set; }
        [Column("CREATE_EFORM")]
        public bool CreateEform { get; set; }
        [Column("VIEW_NOTE")]
        public bool ViewNote { get; set; }
        [Column("VIEW_DX")]
        public bool ViewDx { get; set; }
        [Column("VIEW_IMAGE")]
        public bool ViewImage { get; set; }
        [Column("VIEW_CASE")]
        public bool ViewCase { get; set; }
        [Column("VIEW_PROB")]
        public bool ViewProb { get; set; }
        [Column("VIEW_LAB")]
        public bool ViewLab { get; set; }
        [Column("VIEW_SURG")]
        public bool ViewSurg { get; set; }
        [Column("VIEW_XRAY")]
        public bool ViewXray { get; set; }
        [Column("VIEW_AUDIO")]
        public bool ViewAudio { get; set; }
        [Column("VIEW_EFORM")]
        public bool ViewEform { get; set; }
        [Column("VIEW_CVTSVC")]
        public bool ViewCvtsvc { get; set; }
        [Column("VIEW_THI")]
        public bool ViewThi { get; set; }
        [Column("VIEW_STN")]
        public bool ViewStn { get; set; }
        [Column("VIEW_CERT")]
        public bool ViewCert { get; set; }
        [Column("VIEW_RCHK")]
        public bool ViewRchk { get; set; }
        [Column("VIEW_SVC")]
        public bool ViewSvc { get; set; }
        [Column("VIEW_REVISION_HISTORY")]
        public bool ViewRevisionHistory { get; set; }
        [Column("VIEW_PROD_NOTES")]
        public bool ViewProdNotes { get; set; }
        [Column("VIEW_RX_INFO")]
        public bool ViewRxInfo { get; set; }
        [Column("DELETE_NOTE")]
        public bool DeleteNote { get; set; }
        [Column("DELETE_DX")]
        public bool DeleteDx { get; set; }
        [Column("DELETE_IMAGE")]
        public bool DeleteImage { get; set; }
        [Column("DELETE_CASE")]
        public bool DeleteCase { get; set; }
        [Column("DELETE_PROB")]
        public bool DeleteProb { get; set; }
        [Column("DELETE_LAB")]
        public bool DeleteLab { get; set; }
        [Column("DELETE_EFORM")]
        public bool DeleteEform { get; set; }
        [Column("DELETE_SURG")]
        public bool DeleteSurg { get; set; }
        [Column("DELETE_XRAY")]
        public bool DeleteXray { get; set; }
        [Column("VIEW_DELETED")]
        public bool ViewDeleted { get; set; }
        [Column("XFER")]
        public bool Xfer { get; set; }
        [Required]
        [Column("EDIT_SOAP")]
        public bool? EditSoap { get; set; }
        [Required]
        [Column("VIEW_SOAP")]
        public bool? ViewSoap { get; set; }
        [Column("DELETE_SOAP")]
        public bool DeleteSoap { get; set; }
        [Column("XFER_PAT")]
        public bool XferPat { get; set; }
    }
}