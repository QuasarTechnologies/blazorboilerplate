﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("PRODUCT_SOAP")]
    public partial class ProductSoap
    {
        [Key]
        [Column("SOAP_GUID")]
        public Guid SoapGuid { get; set; }
        [Column("SOAP_INDEX")]
        public short SoapIndex { get; set; }
        [Required]
        [Column("DISPLAY_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string DisplayName { get; set; }
    }
}