﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BlazorBoilerplate.Api.SubModels
{
    [Table("REPORTS_PRINTERS")]
    public partial class ReportsPrinter
    {
        [Key]
        [Column("REPORT_PRINTER_GUID")]
        public Guid ReportPrinterGuid { get; set; }
        [Required]
        [Column("REPORT_CODE")]
        [StringLength(10)]
        [Unicode(false)]
        public string ReportCode { get; set; }
        [Column("WORKSTATION_GUID")]
        public Guid WorkstationGuid { get; set; }
        [Column("CREATE_DATE_TIME", TypeName = "datetime")]
        public DateTime CreateDateTime { get; set; }
        [Column("CREATE_USER_GUID")]
        public Guid CreateUserGuid { get; set; }
        [Column("CREATE_WORKSTATION_GUID")]
        public Guid CreateWorkstationGuid { get; set; }
        [Column("PRINT_TO_PRINTER")]
        public bool PrintToPrinter { get; set; }
        [Required]
        [Column("DEVICE_NAME")]
        [StringLength(255)]
        [Unicode(false)]
        public string DeviceName { get; set; }
        [Column("PRINT_TO_FILE")]
        public bool PrintToFile { get; set; }
        [Required]
        [Column("FILE_PATH")]
        [StringLength(255)]
        [Unicode(false)]
        public string FilePath { get; set; }
        [Column("ORIENTATION")]
        public bool Orientation { get; set; }
        [Column("PAGE_SIZE")]
        public int PageSize { get; set; }
        [Column("PAPER_SOURCE_1")]
        public int PaperSource1 { get; set; }
        [Column("PAPER_SOURCE_2")]
        public int PaperSource2 { get; set; }
        [Column("DUPLEXED")]
        public bool Duplexed { get; set; }
        [Required]
        [Column("FONT_NAME")]
        [StringLength(50)]
        [Unicode(false)]
        public string FontName { get; set; }
        [Column("FONT_SIZE")]
        public int FontSize { get; set; }
        [Column("FONT_COLOR")]
        public int FontColor { get; set; }
        [Column("COPIES")]
        public int Copies { get; set; }
        [Column("COLLATE")]
        public bool Collate { get; set; }
        [Column("TOP_MARGIN")]
        public int TopMargin { get; set; }
        [Column("BOTTOM_MARGIN")]
        public int BottomMargin { get; set; }
        [Column("LEFT_MARGIN")]
        public int LeftMargin { get; set; }
        [Column("RIGHT_MARGIN")]
        public int RightMargin { get; set; }
        [Column("HEADER_MARGIN")]
        public int HeaderMargin { get; set; }
        [Column("FOOTER_MARGIN")]
        public int FooterMargin { get; set; }
        [Column("DUPLEX_EDGE")]
        public bool DuplexEdge { get; set; }
    }
}