USE [Updateplate]
GO
/****** Object:  Schema [cfg]    Script Date: 3/23/2022 5:51:49 PM ******/
CREATE SCHEMA [cfg]
GO
/****** Object:  Table [cfg].[ApiResourceClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiResourceClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiResourceClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiResourceProperties]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiResourceProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiResourceProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiResources]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[AllowedAccessTokenSigningAlgorithms] [nvarchar](100) NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[LastAccessed] [datetime2](7) NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiResourceScopes]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiResourceScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiResourceScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiResourceSecrets]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiResourceSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[ApiResourceId] [int] NOT NULL,
 CONSTRAINT [PK_ApiResourceSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiScopeClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiScopeClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[ScopeId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopeClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiScopeProperties]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiScopeProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ScopeId] [int] NOT NULL,
 CONSTRAINT [PK_ApiScopeProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ApiScopes]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ApiScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
 CONSTRAINT [PK_ApiScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientCorsOrigins]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientCorsOrigins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Origin] [nvarchar](150) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientCorsOrigins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientGrantTypes]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientGrantTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrantType] [nvarchar](250) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientGrantTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientIdPRestrictions]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientIdPRestrictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientIdPRestrictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientPostLogoutRedirectUris]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientPostLogoutRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientProperties]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientRedirectUris]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientRedirectUris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RedirectUri] [nvarchar](2000) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientRedirectUris] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[Clients]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[ProtocolType] [nvarchar](200) NOT NULL,
	[RequireClientSecret] [bit] NOT NULL,
	[ClientName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[ClientUri] [nvarchar](2000) NULL,
	[LogoUri] [nvarchar](2000) NULL,
	[RequireConsent] [bit] NOT NULL,
	[AllowRememberConsent] [bit] NOT NULL,
	[AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
	[RequirePkce] [bit] NOT NULL,
	[AllowPlainTextPkce] [bit] NOT NULL,
	[RequireRequestObject] [bit] NOT NULL,
	[AllowAccessTokensViaBrowser] [bit] NOT NULL,
	[FrontChannelLogoutUri] [nvarchar](2000) NULL,
	[FrontChannelLogoutSessionRequired] [bit] NOT NULL,
	[BackChannelLogoutUri] [nvarchar](2000) NULL,
	[BackChannelLogoutSessionRequired] [bit] NOT NULL,
	[AllowOfflineAccess] [bit] NOT NULL,
	[IdentityTokenLifetime] [int] NOT NULL,
	[AllowedIdentityTokenSigningAlgorithms] [nvarchar](100) NULL,
	[AccessTokenLifetime] [int] NOT NULL,
	[AuthorizationCodeLifetime] [int] NOT NULL,
	[ConsentLifetime] [int] NULL,
	[AbsoluteRefreshTokenLifetime] [int] NOT NULL,
	[SlidingRefreshTokenLifetime] [int] NOT NULL,
	[RefreshTokenUsage] [int] NOT NULL,
	[UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
	[RefreshTokenExpiration] [int] NOT NULL,
	[AccessTokenType] [int] NOT NULL,
	[EnableLocalLogin] [bit] NOT NULL,
	[IncludeJwtId] [bit] NOT NULL,
	[AlwaysSendClientClaims] [bit] NOT NULL,
	[ClientClaimsPrefix] [nvarchar](200) NULL,
	[PairWiseSubjectSalt] [nvarchar](200) NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[LastAccessed] [datetime2](7) NULL,
	[UserSsoLifetime] [int] NULL,
	[UserCodeType] [nvarchar](100) NULL,
	[DeviceCodeLifetime] [int] NOT NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientScopes]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientScopes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Scope] [nvarchar](200) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[ClientSecrets]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[ClientSecrets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Value] [nvarchar](4000) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Type] [nvarchar](250) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[IdentityResourceClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[IdentityResourceClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](200) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityResourceClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[IdentityResourceProperties]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[IdentityResourceProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[IdentityResourceId] [int] NOT NULL,
 CONSTRAINT [PK_IdentityResourceProperties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cfg].[IdentityResources]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cfg].[IdentityResources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayName] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,
	[Required] [bit] NOT NULL,
	[Emphasize] [bit] NOT NULL,
	[ShowInDiscoveryDocument] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Updated] [datetime2](7) NULL,
	[NonEditable] [bit] NOT NULL,
 CONSTRAINT [PK_IdentityResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiLogs]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestTime] [datetime2](7) NOT NULL,
	[ResponseMillis] [bigint] NOT NULL,
	[StatusCode] [int] NOT NULL,
	[Method] [nvarchar](max) NOT NULL,
	[Path] [nvarchar](2048) NOT NULL,
	[QueryString] [nvarchar](2048) NULL,
	[RequestBody] [nvarchar](256) NULL,
	[ResponseBody] [nvarchar](256) NULL,
	[IPAddress] [nvarchar](45) NULL,
	[ApplicationUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ApiLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](64) NULL,
	[LastName] [nvarchar](64) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TenantId] [nvarchar](64) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalizationRecords]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalizationRecords](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MsgId] [nvarchar](450) NULL,
	[MsgIdPlural] [nvarchar](max) NULL,
	[Translation] [nvarchar](max) NULL,
	[Culture] [nvarchar](450) NULL,
	[ContextId] [nvarchar](450) NULL,
 CONSTRAINT [PK_LocalizationRecords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[TimeStamp] [datetime2](7) NOT NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[When] [datetime2](7) NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PluralFormRules]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PluralFormRules](
	[Language] [nvarchar](5) NOT NULL,
	[Count] [int] NOT NULL,
	[Selector] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PluralFormRules] PRIMARY KEY CLUSTERED 
(
	[Language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PluralTranslations]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PluralTranslations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[Translation] [nvarchar](max) NOT NULL,
	[LocalizationRecordId] [bigint] NOT NULL,
 CONSTRAINT [PK_PluralTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueuedEmails]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueuedEmails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[EmailType] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[SentOn] [datetime2](7) NULL,
 CONSTRAINT [PK_QueuedEmails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TenantInfo]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TenantInfo](
	[Id] [nvarchar](64) NOT NULL,
	[Identifier] [nvarchar](450) NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ConnectionString] [nvarchar](max) NULL,
 CONSTRAINT [PK_TenantInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TenantSettings]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TenantSettings](
	[TenantId] [nvarchar](64) NOT NULL,
	[Key] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_TenantSettings] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Todos]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Todos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Todos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 3/23/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[LastPageVisited] [nvarchar](max) NULL,
	[IsNavOpen] [bit] NOT NULL,
	[IsNavMinified] [bit] NOT NULL,
	[Count] [int] NOT NULL,
	[LastUpdatedDate] [datetime2](7) NOT NULL,
	[TenantId] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [cfg].[ApiResourceClaims] ON 

INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (1, N'name', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (2, N'email', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (3, N'phone_number', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (4, N'role', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (5, N'permission', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (6, N'IsUser', 1)
INSERT [cfg].[ApiResourceClaims] ([Id], [Type], [ApiResourceId]) VALUES (7, N'IsAdmin', 1)
SET IDENTITY_INSERT [cfg].[ApiResourceClaims] OFF
GO
SET IDENTITY_INSERT [cfg].[ApiResources] ON 

INSERT [cfg].[ApiResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [AllowedAccessTokenSigningAlgorithms], [ShowInDiscoveryDocument], [Created], [Updated], [LastAccessed], [NonEditable]) VALUES (1, 1, N'LocalAPI', N'Local API', NULL, NULL, 1, CAST(N'2022-02-17T22:09:51.4373731' AS DateTime2), NULL, NULL, 0)
SET IDENTITY_INSERT [cfg].[ApiResources] OFF
GO
SET IDENTITY_INSERT [cfg].[ApiResourceScopes] ON 

INSERT [cfg].[ApiResourceScopes] ([Id], [Scope], [ApiResourceId]) VALUES (1, N'IdentityServerApi', 1)
INSERT [cfg].[ApiResourceScopes] ([Id], [Scope], [ApiResourceId]) VALUES (2, N'LocalAPI', 1)
SET IDENTITY_INSERT [cfg].[ApiResourceScopes] OFF
GO
SET IDENTITY_INSERT [cfg].[ApiScopes] ON 

INSERT [cfg].[ApiScopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (1, 1, N'IdentityServerApi', N'IdentityServerApi', NULL, 0, 0, 1)
INSERT [cfg].[ApiScopes] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument]) VALUES (2, 1, N'LocalAPI', N'My API', NULL, 0, 0, 1)
SET IDENTITY_INSERT [cfg].[ApiScopes] OFF
GO
SET IDENTITY_INSERT [cfg].[ClientClaims] ON 

INSERT [cfg].[ClientClaims] ([Id], [Type], [Value], [ClientId]) VALUES (1, N'permission', N'Todo.Delete', 2)
SET IDENTITY_INSERT [cfg].[ClientClaims] OFF
GO
SET IDENTITY_INSERT [cfg].[ClientGrantTypes] ON 

INSERT [cfg].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (1, N'authorization_code', 1)
INSERT [cfg].[ClientGrantTypes] ([Id], [GrantType], [ClientId]) VALUES (2, N'client_credentials', 2)
SET IDENTITY_INSERT [cfg].[ClientGrantTypes] OFF
GO
SET IDENTITY_INSERT [cfg].[ClientRedirectUris] ON 

INSERT [cfg].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (1, N'http://127.0.0.1:64879', 1)
INSERT [cfg].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (2, N'http://localhost:53414/swagger/oauth2-redirect.html', 1)
INSERT [cfg].[ClientRedirectUris] ([Id], [RedirectUri], [ClientId]) VALUES (3, N'https://blazor-server.quarella.net/swagger/oauth2-redirect.html', 1)
SET IDENTITY_INSERT [cfg].[ClientRedirectUris] OFF
GO
SET IDENTITY_INSERT [cfg].[Clients] ON 

INSERT [cfg].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [RequireRequestObject], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AllowedIdentityTokenSigningAlgorithms], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (1, 1, N'swaggerui', N'oidc', 0, N'Swagger UI', NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 1, NULL, 1, NULL, 1, 0, 300, NULL, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 1, 0, N'client_', NULL, CAST(N'2022-02-17T22:09:51.1708554' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
INSERT [cfg].[Clients] ([Id], [Enabled], [ClientId], [ProtocolType], [RequireClientSecret], [ClientName], [Description], [ClientUri], [LogoUri], [RequireConsent], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [RequirePkce], [AllowPlainTextPkce], [RequireRequestObject], [AllowAccessTokensViaBrowser], [FrontChannelLogoutUri], [FrontChannelLogoutSessionRequired], [BackChannelLogoutUri], [BackChannelLogoutSessionRequired], [AllowOfflineAccess], [IdentityTokenLifetime], [AllowedIdentityTokenSigningAlgorithms], [AccessTokenLifetime], [AuthorizationCodeLifetime], [ConsentLifetime], [AbsoluteRefreshTokenLifetime], [SlidingRefreshTokenLifetime], [RefreshTokenUsage], [UpdateAccessTokenClaimsOnRefresh], [RefreshTokenExpiration], [AccessTokenType], [EnableLocalLogin], [IncludeJwtId], [AlwaysSendClientClaims], [ClientClaimsPrefix], [PairWiseSubjectSalt], [Created], [Updated], [LastAccessed], [UserSsoLifetime], [UserCodeType], [DeviceCodeLifetime], [NonEditable]) VALUES (2, 1, N'clientToDo', N'oidc', 1, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, NULL, 1, NULL, 1, 0, 300, NULL, 3600, 300, NULL, 2592000, 1296000, 1, 0, 1, 0, 1, 1, 0, N'', NULL, CAST(N'2022-02-17T22:09:51.2618398' AS DateTime2), NULL, NULL, NULL, NULL, 300, 0)
SET IDENTITY_INSERT [cfg].[Clients] OFF
GO
SET IDENTITY_INSERT [cfg].[ClientScopes] ON 

INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (1, N'openid', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (2, N'profile', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (3, N'phone', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (4, N'email', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (5, N'roles', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (6, N'IdentityServerApi', 1)
INSERT [cfg].[ClientScopes] ([Id], [Scope], [ClientId]) VALUES (7, N'LocalAPI', 2)
SET IDENTITY_INSERT [cfg].[ClientScopes] OFF
GO
SET IDENTITY_INSERT [cfg].[ClientSecrets] ON 

INSERT [cfg].[ClientSecrets] ([Id], [Description], [Value], [Expiration], [Type], [Created], [ClientId]) VALUES (1, NULL, N'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=', NULL, N'SharedSecret', CAST(N'2022-02-17T22:09:51.2619456' AS DateTime2), 2)
SET IDENTITY_INSERT [cfg].[ClientSecrets] OFF
GO
SET IDENTITY_INSERT [cfg].[IdentityResourceClaims] ON 

INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (1, N'sub', 1)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (2, N'name', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (3, N'family_name', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (4, N'given_name', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (5, N'middle_name', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (6, N'nickname', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (7, N'preferred_username', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (8, N'profile', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (9, N'picture', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (10, N'website', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (11, N'gender', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (12, N'birthdate', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (13, N'zoneinfo', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (14, N'locale', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (15, N'updated_at', 2)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (16, N'phone_number', 3)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (17, N'phone_number_verified', 3)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (18, N'email', 4)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (19, N'email_verified', 4)
INSERT [cfg].[IdentityResourceClaims] ([Id], [Type], [IdentityResourceId]) VALUES (20, N'role', 5)
SET IDENTITY_INSERT [cfg].[IdentityResourceClaims] OFF
GO
SET IDENTITY_INSERT [cfg].[IdentityResources] ON 

INSERT [cfg].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (1, 1, N'openid', N'Your user identifier', NULL, 1, 0, 1, CAST(N'2022-02-17T22:09:51.3539866' AS DateTime2), NULL, 0)
INSERT [cfg].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (2, 1, N'profile', N'User profile', N'Your user profile information (first name, last name, etc.)', 0, 1, 1, CAST(N'2022-02-17T22:09:51.3790508' AS DateTime2), NULL, 0)
INSERT [cfg].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (3, 1, N'phone', N'Your phone number', NULL, 0, 1, 1, CAST(N'2022-02-17T22:09:51.3831928' AS DateTime2), NULL, 0)
INSERT [cfg].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (4, 1, N'email', N'Your email address', NULL, 0, 1, 1, CAST(N'2022-02-17T22:09:51.3872158' AS DateTime2), NULL, 0)
INSERT [cfg].[IdentityResources] ([Id], [Enabled], [Name], [DisplayName], [Description], [Required], [Emphasize], [ShowInDiscoveryDocument], [Created], [Updated], [NonEditable]) VALUES (5, 1, N'roles', N'roles', NULL, 0, 0, 1, CAST(N'2022-02-17T22:09:51.3911167' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [cfg].[IdentityResources] OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711165406_CreateTenantStoreDb', N'6.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711165428_CreatePersistedGrantDb', N'6.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200711165437_CreateConfigurationDb', N'6.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201029172110_CreateLocalizationDb', N'6.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210808163346_CreateApplicationDb', N'6.0.2')
GO
SET IDENTITY_INSERT [dbo].[ApiLogs] ON 

INSERT [dbo].[ApiLogs] ([Id], [RequestTime], [ResponseMillis], [StatusCode], [Method], [Path], [QueryString], [RequestBody], [ResponseBody], [IPAddress], [ApplicationUserId]) VALUES (1, CAST(N'2022-02-17T17:09:51.7584207' AS DateTime2), 30, 200, N'Get', N'/api/seed', N'', N'', N'', N'::1', N'ad98c87b-3793-4021-2e3d-08d9f2623859')
INSERT [dbo].[ApiLogs] ([Id], [RequestTime], [ResponseMillis], [StatusCode], [Method], [Path], [QueryString], [RequestBody], [ResponseBody], [IPAddress], [ApplicationUserId]) VALUES (2, CAST(N'2022-02-17T17:09:51.7588240' AS DateTime2), 30, 200, N'Get', N'/api/seed', N'', N'', N'', N'::1', N'ad98c87b-3793-4021-2e3d-08d9f2623859')
INSERT [dbo].[ApiLogs] ([Id], [RequestTime], [ResponseMillis], [StatusCode], [Method], [Path], [QueryString], [RequestBody], [ResponseBody], [IPAddress], [ApplicationUserId]) VALUES (3, CAST(N'2022-02-18T18:27:04.6438418' AS DateTime2), 45, 200, N'GET', N'/api/data/Metadata', N'', N'GET http localhost:53416/api/data/Metadata  ', N'', N'::1', NULL)
SET IDENTITY_INSERT [dbo].[ApiLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'User.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (2, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'User.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (3, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'User.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (4, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'User.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (5, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Role.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (6, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Role.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (7, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Role.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (8, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Role.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (9, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Client.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (10, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Client.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (11, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Client.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (12, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Client.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (13, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiResource.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (14, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiResource.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (15, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiResource.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (16, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiResource.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (17, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'IdentityResource.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (18, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'IdentityResource.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (19, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'IdentityResource.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (20, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'IdentityResource.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (21, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Tenant.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (22, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Tenant.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (23, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Tenant.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (24, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Tenant.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (25, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiLogItem.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (26, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiLogItem.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (27, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiLogItem.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (28, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApiLogItem.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (29, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationRole.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (30, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationRole.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (31, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationRole.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (32, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationRole.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (33, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUser.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (34, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUser.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (35, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUser.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (36, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUser.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (37, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUserRole.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (38, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUserRole.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (39, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUserRole.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (40, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'ApplicationUserRole.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (41, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'DbLog.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (42, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'DbLog.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (43, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'DbLog.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (44, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'DbLog.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (45, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'LocalizationRecord.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (46, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'LocalizationRecord.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (47, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'LocalizationRecord.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (48, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'PluralTranslation.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (49, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'PluralTranslation.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (50, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'PluralTranslation.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (51, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'TenantSetting.Create')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (52, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'TenantSetting.Update')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (53, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'TenantSetting.Read')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (54, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'TenantSetting.Delete')
INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (55, N'1525d171-8963-4ee3-2005-08d9f26168b4', N'permission', N'Todo.Delete')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [TenantId], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1525d171-8963-4ee3-2005-08d9f26168b4', N'Master', N'Administrator', N'ADMINISTRATOR', N'06cbeafc-addf-470c-90fc-d1040f9e86ff')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'name', N'admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'given_name', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'family_name', N'Blazor')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'email', N'admin@blazorboilerplate.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'email_verified', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'phone_number', N'+1 (123) 456-7890')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (7, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'IsAdministrator', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'name', N'user')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'given_name', N'User')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'family_name', N'Blazor')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (11, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'email', N'user@blazorboilerplate.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (12, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'email_verified', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (13, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'phone_number', N'+1 (123) 456-7890')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [TenantId]) VALUES (N'09165013-a2f1-4142-f9fd-08d9f2616921', N'1525d171-8963-4ee3-2005-08d9f26168b4', N'Master')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PasswordHash], [SecurityStamp], [TenantId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'09165013-a2f1-4142-f9fd-08d9f2616921', N'Admin', N'Blazor', N'AQAAAAEAACcQAAAAEOKkLntMVAtURr20WrSvHSQxFHHA/wXJ1Z6Oall9IxcB5b5+BVw3/uq6KancgQx6/w==', N'ZOTZLMWU6DT464YM6CR5NLWHDF3JAW6F', N'Master', N'admin', N'ADMIN', N'admin@blazorboilerplate.com', N'ADMIN@BLAZORBOILERPLATE.COM', 1, N'fe8b23bf-8183-4df2-a4fd-f7376006ed05', N'+1 (123) 456-7890', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [PasswordHash], [SecurityStamp], [TenantId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'User', N'Blazor', N'AQAAAAEAACcQAAAAENuGzpingthSxd+QA5YIA00QPXbvy/HiWkGMm1KJXFcQT47XbTH+TRKnVUAhRDvrsA==', N'4744TDMPCXABV6SWTIDRJQ5A3UHQMCDN', N'Master', N'user', N'USER', N'user@blazorboilerplate.com', N'USER@BLAZORBOILERPLATE.COM', 1, N'3f972461-f49f-4e8e-b503-1a762a42cc64', N'+1 (123) 456-7890', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'09165013-a2f1-4142-f9fd-08d9f2616921', N'[AspNetUserStore]', N'AuthenticatorKey', N'EOSPR6ZONVF2K5A4SF6VB7YYBH7L3ACN')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'[AspNetUserStore]', N'AuthenticatorKey', N'FKHJSHKID4B2LIGI5PDCNMGTUUG3YTL5')
GO
SET IDENTITY_INSERT [dbo].[LocalizationRecords] ON 

INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (1, N'CreateApiResourcePermission', NULL, N'Criar um recurso novo da API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (2, N'CreateClientPermission', NULL, N'Criar um novo cliente', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (3, N'CreateRolePermission', NULL, N'Criar uma atribuição nova', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (4, N'CreateUserPermission', NULL, N'Criar um novo utilizador', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (5, N'DeleteApiResourcePermission', NULL, N'Apagar qualquer recurso da API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (6, N'DeleteClientPermission', NULL, N'Apagar qualquer cliente', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (7, N'DeleteRolePermission', NULL, N'Apagar qualquer atribuição', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (8, N'DeleteUserPermission', NULL, N'Apagar qualquer utilizador', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (9, N'ReadApiResourcePermission', NULL, N'Ler os dados dos recursos da API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (10, N'ReadClientPermission', NULL, N'Ler dados dos clientes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (11, N'ReadRolePermission', NULL, N'Ler dados de atribuição (permissões, etc.)', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (12, N'ReadUserPermission', NULL, N'Ler dados de utilizadores (Nomes, Emails, Numeros de Telefone, etc.)', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (13, N'UpdateApiResourcePermission', NULL, N'Editar recursos da API existentes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (14, N'UpdateClientPermission', NULL, N'Editar clientes existentes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (15, N'UpdateRolePermission', NULL, N'Editar atribuições existentes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (16, N'UpdateUserPermission', NULL, N'Editar utilizadores existentes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (17, N'CreateIdentityResourcePermission', NULL, N'Criar uma autorização do recurso da identidade', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (18, N'ReadIdentityResourcePermission', NULL, N'Ler dados dos recursos da identidade', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (19, N'UpdateIdentityResourcePermission', NULL, N'Editar recursos da Identidade existentes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (20, N'DeleteIdentityResourcePermission', NULL, N'Apagar qualquer recurso da Identidade', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (21, N'Delete', NULL, N'Apagar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (22, N'Cancel', NULL, N'Cancelar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (23, N'Users', NULL, N'Utilizadores', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (24, N'Roles', NULL, N'Atribuições', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (25, N'ApiResources', NULL, N'Recursos da API OpenID', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (26, N'IdentityResources', NULL, N'Recursos da Identidade OpenID', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (27, N'OpenIdClients', NULL, N'Clientes OpenID', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (28, N'Dashboard', NULL, N'Dashboard', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (29, N'Loading', NULL, N'Carregando...', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (30, N'New Client', NULL, N'Novo Cliente', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (31, N'New User', NULL, N'Novo Utilizador', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (32, N'New Role', NULL, N'Nova Atribuição', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (33, N'New API Resource', NULL, N'Novo Recurso da API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (34, N'New Identity Resource', NULL, N'Novo Recurso de Identidade', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (35, N'{0} users fetched', NULL, N'{0} utilizadores encontrados', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (36, N'Operation Successful', NULL, N'Operação bem sucessida', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (37, N'Operation Failed', NULL, N'Operação Falhou', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (38, N'{0} roles fetched', NULL, N'{0} atribuições encontradas', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (39, N'{0} clients fetched', NULL, N'{0} clientes encontrados', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (40, N'{0} identity resources fetched', NULL, N'{0} recursos da Identidade encontrados', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (41, N'{0} API resources fetched', NULL, N'{0} recursos da API encontrados', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (42, N'Create', NULL, N'Criar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (43, N'Update', NULL, N'Actualizar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (44, N'Edit {0}', NULL, N'Editar ''{0}''', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (45, N'Permissions list fetched', NULL, N'Lista de authorizações recebida', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (46, N'Role {0} created', NULL, N'Atribuição {0} criada', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (47, N'Role {0} already exists', NULL, N'Atribuição {0} já existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (48, N'The role {0} doesn''t exist', NULL, N'A atribuição {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (49, N'Role {0} deleted', NULL, N'Atribuição {0} apagada', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (50, N'RoleInUseWarning', NULL, N'Esta atribuição {0} está a ser utilizada por um utilizador, e não pode ser apagada.', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (51, N'Client {0} created', NULL, N'Cliente {0} criado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (52, N'The client {0} doesn''t exist', NULL, N'O cliente {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (53, N'Client {0} updated', NULL, N'Cliente {0} actualizado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (54, N'Client {0} deleted', NULL, N'Cliente {0} apagado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (55, N'Role {0} updated', NULL, N'Atribuição {0} actualizada', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (56, N'Identity Resource {0} created', NULL, N'Recurso da Identidade {0} creado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (57, N'Identity Resource {0} updated', NULL, N'Recurso da Identidade {0} actualizado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (58, N'Identity Resource {0} deleted', NULL, N'Recurso da Identidade {0} apagado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (59, N'API Resource {0} created', NULL, N'Recurso da API {0} criado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (60, N'API Resource {0} updated', NULL, N'Recurso da API {0} actualizado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (61, N'API Resource {0} deleted', NULL, N'Recurso da API {0} apagado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (62, N'The API resource {0} doesn''t exist', NULL, N'O recurso da API {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (63, N'The Identity resource {0} doesn''t exist', NULL, N'O recurso da Identidade {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (64, N'UserName', NULL, N'Nome do Utilizador', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (65, N'Login', NULL, N'Login', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (66, N'Sign in with', NULL, N'Iniciar sessão com', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (67, N'Sign up', NULL, N'Registrar-me', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (68, N'Keep me logged in', NULL, N'Mantenha-me registrado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (69, N'Log in', NULL, N'Log in', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (70, N'Forgot your password?', NULL, N'Esqueceu a Password? ', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (71, N'Submit', NULL, N'Submeter', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (72, N'LoginFailed', NULL, N'Tentativas de login falharam', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (73, N'ResetPasswordFailed', NULL, N'Tentativa de Recuperar Password Falhou', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (74, N'ForgotPasswordEmailSent', NULL, N'Email enviado com a Password esquecida', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (75, N'Confirm Email', NULL, N'Confirme Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (76, N'Send Confirmation', NULL, N'Enviar Confirmação', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (77, N'EmailVerificationFailed', NULL, N'Verificação do Email Falhou', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (78, N'EmailVerificationSuccessful', NULL, N'Verificação do Email com Successo', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (79, N'ResetPasswordSuccessful', NULL, N'Password Recuperada com Successo', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (80, N'Password Reset', NULL, N'Recuperar Password', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (81, N'Password Confirmation', NULL, N'Confirmação da Password', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (82, N'Reset Password', NULL, N'Recuperar Password', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (83, N'UserCreationFailed', NULL, N'Criação do Utilizador Falhou', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (84, N'UserCreationSuccessful', NULL, N'Criação do Utilizador com Successo', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (85, N'Registration', NULL, N'Registração', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (86, N'PasswordConfirmationFailed', NULL, N'A password de confirmação é diferente da password dada.', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (87, N'ConfirmPassword', NULL, N'Confirme a password', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (88, N'ErrorInvalidLength', NULL, N'O {0} têm que ter pelo menos {2} e um máximo de {1} characteres de cumprimento.', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (89, N'SpacesNotPermitted', NULL, N'Espaços não são permitidos.', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (90, N'Role', NULL, N'Atribuição', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (91, N'Name', NULL, N'Nome', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (92, N'AlreadyRegistered', NULL, N'Já está registrado?', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (93, N'Register', NULL, N'Registrar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (94, N'InvalidData', NULL, N'Os dados remetidos são invalidos.', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (95, N'The user {0} doesn''t exist', NULL, N'O utilizador {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (96, N'The user doesn''t exist', NULL, N'O utilizador não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (97, N'User {0} created', NULL, N'Utilizador {0} criado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (98, N'Confirm Delete', NULL, N'Confirme Apagar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (99, N'Logout', NULL, N'Logout', N'pt-PT', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (100, N'Tenants', NULL, N'Inquilinos', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (101, N'Tenant', NULL, N'Inquilino', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (102, N'MultiTenancy', NULL, N'Multi-Inquilino', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (103, N'{0} tenants fetched', NULL, N'{0} inquilinos encontrados', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (104, N'Tenant {0} created', NULL, N'Inquilino {0} criado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (105, N'The tenant {0} doesn''t exist', NULL, N'O inquilino {0} não existe', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (106, N'Tenant {0} updated', NULL, N'Inquilino {0} actualizado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (107, N'Tenant {0} deleted', NULL, N'Inquilino {0} apagado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (108, N'Role {0} cannot be deleted', NULL, N'Atribuição {0} não pode ser apagada', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (109, N'Tenant {0} cannot be deleted', NULL, N'Inquilino {0} não pode ser apagado', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (110, N'Role {0} cannot be edited', NULL, N'Atribuição {0} não pode ser alterada', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (111, N'AuthenticationRequired', NULL, N'Autenticação Necessária', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (112, N'LoginRequired', NULL, N'Por favor login primeiro', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (113, N'Operation not allowed', NULL, N'Operação não é premitida', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (114, N'NotAuthorizedTo', NULL, N'Não esta autorizado a fazer esta operação', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (115, N'PleaseWait', NULL, N'Por favor aguarde...', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (116, N'Settings', NULL, N'Configurações', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (117, N'EmailSettings', NULL, N'Configurações do Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (118, N'OutgoingEmail', NULL, N'Email de saída', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (119, N'IncomingEmail', NULL, N'Recebendo email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (120, N'SmtpServer', NULL, N'Servidor SMTP', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (121, N'PopServer', NULL, N'Servidor POP3', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (122, N'Save', NULL, N'Guardar', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (123, N'Port', NULL, N'Porta', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (124, N'ImapServer', NULL, N'Servidor IMAP', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (125, N'SenderEmail', NULL, N'Remetente do Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (126, N'SenderName', NULL, N'Nome do Remetente', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (127, N'MainSettings', NULL, N'Configurações principais', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (128, N'BreadCrumbadmin', NULL, N'Admin', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (129, N'AppHelpAndSupport', NULL, N'Ajuda & Supporto', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (130, N'AppHoverAdmin', NULL, N'Administração', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (131, N'AppHoverNavMinimize', NULL, N'Minimize a Barra de Navigação', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (132, N'AppHoverNavToggle', NULL, N'Esconda a Barra de Navigação', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (133, N'AppName', NULL, N'Blazor Boilerplate', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (134, N'AppNavHome', NULL, N'Homepage', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (135, N'AppShortName', NULL, N'BlazorBP', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (136, N'AppAdminNavApiAuditLog', NULL, N'Registo de Auditoria do API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (137, N'AppAdminNavDBLoggingView', NULL, N'Visualizador de Log DB', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (138, N'AppAdminNavFrontEnd', NULL, N'Frente/Site', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (139, N'AppAdminNavMonitoring', NULL, N'Monitoria', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (140, N'AppNavDashboard', NULL, N'Dashboard', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (141, N'AppNavDragAndDrop', NULL, N'Drag and Drop', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (142, N'AppNavEmail', NULL, N'Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (143, N'AppNavFeatures', NULL, N'Funcionalidades', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (144, N'AppNavForum', NULL, N'Forum', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (145, N'AppNavReadEmail', NULL, N'Ler Emails', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (146, N'AppNavScreenshots', NULL, N'Screenshots', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (147, N'AppNavSendEmail', NULL, N'Enviar Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (148, N'AppNavSponsors', NULL, N'Patrocinadores', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (149, N'BreadCrumbadminapiResources', NULL, N'Recursos API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (150, N'BreadCrumbadminapilog', NULL, N'Registo de Auditoria do API', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (151, N'BreadCrumbadminclients', NULL, N'Clientes', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (152, N'BreadCrumbadmindblog', NULL, N'Visualizador de Log DB', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (153, N'BreadCrumbadminidentityResources', NULL, N'Recursos da Identidade', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (154, N'BreadCrumbadminmultitenancy', NULL, N'Gerencia de Inquilinos', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (155, N'BreadCrumbadminroles', NULL, N'Gerência de Atribuições', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (156, N'BreadCrumbadminsettings', NULL, N'Configurações', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (157, N'BreadCrumbadminsettingsemail', NULL, N'Configurações de Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (158, N'BreadCrumbadminusers', NULL, N'Utilizadores', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (159, N'BreadCrumbdashboard', NULL, N'Dashboard', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (160, N'BreadCrumbdrag_and_drop', NULL, N'Drag and Drop', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (161, N'BreadCrumbemail', NULL, N'Enviar Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (162, N'BreadCrumbemail_view', NULL, N'Ler Email', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (163, N'BreadCrumbforum', NULL, N'Forum', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (164, N'BreadCrumbHome', NULL, N'Home', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (165, N'BreadCrumbscreenshots', NULL, N'Screenshots', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (166, N'BreadCrumbsponsors', NULL, N'Patrocinadores', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (167, N'BreadCrumbtodo_list', NULL, N'ToDo', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (168, N'TodoNav', NULL, N'Lista Todo', N'pt-PT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (169, N'CreateApiResourcePermission', NULL, N'Erstellen einer neuen API-Ressource', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (170, N'CreateClientPermission', NULL, N'Erstellen eines neuen Clients', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (171, N'CreateRolePermission', NULL, N'Erstellen einer neuen Rolle', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (172, N'CreateUserPermission', NULL, N'Erstellen eines neuen Benutzers', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (173, N'DeleteApiResourcePermission', NULL, N'Lösche alle API-Ressources', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (174, N'DeleteClientPermission', NULL, N'Lösche alle Clients', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (175, N'DeleteRolePermission', NULL, N'Lösche alle Rollen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (176, N'DeleteUserPermission', NULL, N'Lösche alle Benutzer', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (177, N'ReadApiResourcePermission', NULL, N'Lese API Ressource-Daten', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (178, N'ReadClientPermission', NULL, N'Lese Clients-Daten', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (179, N'ReadRolePermission', NULL, N'Lese Rollen-Daten Berechtigungen etc.")', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (180, N'ReadUserPermission', NULL, N'Lese Benutzer-Daten (Namen, Emails, Telefonnummern, etc.)', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (181, N'UpdateApiResourcePermission', NULL, N'Bearbeite existierende API-Ressourcen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (182, N'UpdateClientPermission', NULL, N'Bearbeite existierende Clients', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (183, N'UpdateRolePermission', NULL, N'Bearbeite existierende Rollen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (184, N'UpdateUserPermission', NULL, N'Bearbeite existierende Benutzer', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (185, N'CreateIdentityResourcePermission', NULL, N'Erstellen einer neuen Identity-Ressource', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (186, N'ReadIdentityResourcePermission', NULL, N'Lese Identity-Ressource-Daten', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (187, N'UpdateIdentityResourcePermission', NULL, N'Bearbeite existierende Identity-Ressourcen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (188, N'DeleteIdentityResourcePermission', NULL, N'Lösche alle Identity-Ressources', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (189, N'Delete', NULL, N'Löschen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (190, N'Cancel', NULL, N'Abbrechen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (191, N'Users', NULL, N'Benutzer', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (192, N'Roles', NULL, N'Rollen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (193, N'ApiResources', NULL, N'OpenID API Ressourcen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (194, N'IdentityResources', NULL, N'OpenID Identity Ressourcen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (195, N'OpenIdClients', NULL, N'OpenID Clients', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (196, N'Dashboard', NULL, N'Dashboard', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (197, N'Loading', NULL, N'Ladevorgang läuft...', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (198, N'New Client', NULL, N'Neuer Client', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (199, N'New User', NULL, N'Neuer Benutzer', N'de-DE', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (200, N'New Role', NULL, N'Neue Rolle', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (201, N'New API Resource', NULL, N'Neue API Ressource', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (202, N'New Identity Resource', NULL, N'Neue Identity Ressource', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (203, N'{0} users fetched', NULL, N'{0} Benutzer abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (204, N'Operation Successful', NULL, N'Vorgang erfolgreich', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (205, N'Operation Failed', NULL, N'Vorgang fehlgeschlagen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (206, N'{0} roles fetched', NULL, N'{0} Rollen abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (207, N'{0} clients fetched', NULL, N'{0} Clients abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (208, N'{0} identity resources fetched', NULL, N'{0} Identity-Ressourcen abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (209, N'{0} API resources fetched', NULL, N'{0} API-Ressourcen abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (210, N'Create', NULL, N'Erstellen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (211, N'Update', NULL, N'Aktualsieren', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (212, N'Edit {0}', NULL, N'Bearbeiten ''{0}''', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (213, N'Permissions list fetched', NULL, N'Berechtigungsliste abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (214, N'Role {0} created', NULL, N'Rolle {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (215, N'Role {0} already exists', NULL, N'Rolle {0} existiert bereits ', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (216, N'The role {0} doesn''t exist', NULL, N'Die Rolle {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (217, N'Role {0} deleted', NULL, N'Rolle {0} gelöscht', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (218, N'RoleInUseWarning', NULL, N'Diese Rolle {0} wird noch durch einen Benutzer verwendet. Sie kann daher nicht gelöscht werden.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (219, N'Client {0} created', NULL, N'Client {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (220, N'The client {0} doesn''t exist', NULL, N'Der Client {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (221, N'Client {0} updated', NULL, N'Client {0} aktualisiert', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (222, N'Client {0} deleted', NULL, N'Client {0} gelöscht', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (223, N'Role {0} updated', NULL, N'Rolle {0} aktualisiert', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (224, N'Identity Resource {0} created', NULL, N'Identity Ressource {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (225, N'Identity Resource {0} updated', NULL, N'Identity Ressource {0} aktualisiert', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (226, N'Identity Resource {0} deleted', NULL, N'Identity Ressource {0} gelöscht', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (227, N'API Resource {0} created', NULL, N'API Ressource {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (228, N'API Resource {0} updated', NULL, N'API Ressource {0} aktualisiert', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (229, N'API Resource {0} deleted', NULL, N'API Ressource {0} gelöscht', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (230, N'The API resource {0} doesn''t exist', NULL, N'Die API-Ressource {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (231, N'The Identity resource {0} doesn''t exist', NULL, N'Die Identity-Ressource {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (232, N'UserName', NULL, N'Benutzername', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (233, N'Login', NULL, N'Login', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (234, N'Sign in with', NULL, N'Anmelden mit', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (235, N'Sign up', NULL, N'Anmelden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (236, N'Keep me logged in', NULL, N'Eingeloggt bleiben', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (237, N'Log in', NULL, N'Log in', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (238, N'Forgot your password?', NULL, N'Passwort vergessen?', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (239, N'Submit', NULL, N'Absenden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (240, N'LoginFailed', NULL, N'Login-Versuch fehlgeschlagen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (241, N'ResetPasswordFailed', NULL, N'Versuch Passwort zurückzusetzen fehlgeschlagen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (242, N'ForgotPasswordEmailSent', NULL, N'Passwort-Vergessen Email gesendet', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (243, N'Confirm Email', NULL, N'Bestätige Email', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (244, N'Send Confirmation', NULL, N'Bestätigung senden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (245, N'EmailVerificationFailed', NULL, N'Email Verifizierung fehlgeschlagen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (246, N'EmailVerificationSuccessful', NULL, N'Email Verifizierung erfolgreich', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (247, N'ResetPasswordSuccessful', NULL, N'Passwort erfolgreich zurückgesetzt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (248, N'Password Reset', NULL, N'Passwort zurücksetzen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (249, N'Password Confirmation', NULL, N'Passwort bestätigen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (250, N'Reset Password', NULL, N'Passwort zurücksetzen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (251, N'UserCreationFailed', NULL, N'Benutzer erstellen fehlgeschlagen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (252, N'UserCreationSuccessful', NULL, N'Benutzer erfolgreich erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (253, N'Registration', NULL, N'Registrierung', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (254, N'PasswordConfirmationFailed', NULL, N'Das Passwort und das Bestätigungspasswort stimmen nicht überein.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (255, N'ConfirmPassword', NULL, N'Bestätige Passwort', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (256, N'ErrorInvalidLength', NULL, N'{0} muss mindestens {2} und darf maximal {1} Zeichen lang sein.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (257, N'SpacesNotPermitted', NULL, N'Leerzeichen sind nicht gestattet', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (258, N'Role', NULL, N'Rolle', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (259, N'Name', NULL, N'Name', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (260, N'AlreadyRegistered', NULL, N'Bereits registriert?', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (261, N'Register', NULL, N'Registrieren', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (262, N'InvalidData', NULL, N'Eingegebene Daten sind nicht gültig', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (263, N'The user {0} doesn''t exist', NULL, N'Der Benutzer {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (264, N'The user doesn''t exist', NULL, N'Der Benutzer existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (265, N'User {0} created', NULL, N'Benutzer {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (266, N'Confirm Delete', NULL, N'Bestätige Löschen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (267, N'Logout', NULL, N'Logout', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (268, N'Tenants', NULL, N'Mandanten', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (269, N'Tenant', NULL, N'Mandant', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (270, N'MultiTenancy', NULL, N'Mehrmandantenfähigkeit', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (271, N'{0} tenants fetched', NULL, N'{0} Mandanten abgerufen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (272, N'Tenant {0} created', NULL, N'Mandant {0} erstellt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (273, N'The tenant {0} doesn''t exist', NULL, N'Der Mandant {0} existiert nicht.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (274, N'Tenant {0} updated', NULL, N'Mandant {0} aktualisiert', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (275, N'Tenant {0} deleted', NULL, N'Mandant {0} gelöscht', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (276, N'Role {0} cannot be deleted', NULL, N'Rolle{0} kann nicht gelöscht werden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (277, N'Tenant {0} cannot be deleted', NULL, N'Mandant {0} kann nicht gelöscht werden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (278, N'Role {0} cannot be edited', NULL, N'Rolle {0} kann nicht bearbeitet werden', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (279, N'AuthenticationRequired', NULL, N'Authentifizierung erforderlich', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (280, N'LoginRequired', NULL, N'Bitte zuerst einloggen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (281, N'Operation not allowed', NULL, N'Vorgang nicht erlaubt', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (282, N'NotAuthorizedTo', NULL, N'Sie sind nicht authorisiert diesen Vorgang durchzuführen.', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (283, N'PleaseWait', NULL, N'Bitte warten...', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (284, N'Settings', NULL, N'Einstellungen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (285, N'EmailSettings', NULL, N'Email Einstellungen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (286, N'OutgoingEmail', NULL, N'Ausgehende Email', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (287, N'IncomingEmail', NULL, N'Eingehende Email', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (288, N'SmtpServer', NULL, N'SMTP Server', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (289, N'PopServer', NULL, N'POP3 Server', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (290, N'Save', NULL, N'Speichern', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (291, N'Port', NULL, N'Port', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (292, N'ImapServer', NULL, N'IMAP Server', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (293, N'SenderEmail', NULL, N'Absender E-Mail', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (294, N'SenderName', NULL, N'Absender Name', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (295, N'MainSettings', NULL, N'Einstellungen', N'de-DE', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (296, N'CreateApiResourcePermission', NULL, N'Crea una nuova risorsa API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (297, N'CreateClientPermission', NULL, N'Crea un nuovo client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (298, N'CreateRolePermission', NULL, N'Crea un nuovo ruolo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (299, N'CreateUserPermission', NULL, N'Crea un nuovo utente', N'it-IT', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (300, N'DeleteApiResourcePermission', NULL, N'Elimina una risorsa API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (301, N'DeleteClientPermission', NULL, N'Elimina un client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (302, N'DeleteRolePermission', NULL, N'Elimina un ruolo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (303, N'DeleteUserPermission', NULL, N'Elimina un utente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (304, N'ReadApiResourcePermission', NULL, N'Legge i dati di una risorsa API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (305, N'ReadClientPermission', NULL, N'Legge i dati di un client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (306, N'ReadRolePermission', NULL, N'Legge i dati di un ruolo (permessi, ecc.)', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (307, N'ReadUserPermission', NULL, N'Legge i dati di un utente (nome, email, telefono, ecc.)', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (308, N'UpdateApiResourcePermission', NULL, N'Modifica una risorsa API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (309, N'UpdateClientPermission', NULL, N'Modifica un client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (310, N'UpdateRolePermission', NULL, N'Modifica un ruolo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (311, N'UpdateUserPermission', NULL, N'Modifica un utente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (312, N'CreateIdentityResourcePermission', NULL, N'Crea una nuova risorsa identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (313, N'ReadIdentityResourcePermission', NULL, N'Legge i dati di una risorsa identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (314, N'UpdateIdentityResourcePermission', NULL, N'Modifica una risorsa identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (315, N'DeleteIdentityResourcePermission', NULL, N'Elimina una risorsa identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (316, N'Delete', NULL, N'Elimina', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (317, N'Cancel', NULL, N'Annulla', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (318, N'Users', NULL, N'Utenti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (319, N'Roles', NULL, N'Ruoli', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (320, N'ApiResources', NULL, N'Risorse API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (321, N'IdentityResources', NULL, N'Risorse Identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (322, N'OpenIdClients', NULL, N'Client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (323, N'Dashboard', NULL, N'Cruscotto', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (324, N'Loading', NULL, N'Caricamento in corso...', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (325, N'New Client', NULL, N'Nuovo Client', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (326, N'New User', NULL, N'Nuovo Utente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (327, N'New Role', NULL, N'Nuovo Ruolo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (328, N'New API Resource', NULL, N'Nuova Risorsa API', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (329, N'New Identity Resource', NULL, N'Nuova Risorsa Identità', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (330, N'{0} users fetched', NULL, N'Recuperati {0} utenti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (331, N'Operation Successful', NULL, N'Operazione riuscita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (332, N'Operation Failed', NULL, N'Operazione fallita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (333, N'{0} roles fetched', NULL, N'Recuperati {0} ruoli', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (334, N'{0} clients fetched', NULL, N'Recuperati {0} client', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (335, N'{0} identity resources fetched', NULL, N'Recuperate {0} risorse identità', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (336, N'{0} API resources fetched', NULL, N'Recuperate {0} risorse API', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (337, N'Create', NULL, N'Crea', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (338, N'Update', NULL, N'Aggiorna', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (339, N'Edit {0}', NULL, N'Aggiorna ''{0}''', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (340, N'Permissions list fetched', NULL, N'Recuperato elenco permessi', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (341, N'Role {0} created', NULL, N'Creato ruolo {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (342, N'Role {0} already exists', NULL, N'Il ruolo {0} esiste già', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (343, N'The role {0} doesn''t exist', NULL, N'Il ruolo {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (344, N'Role {0} deleted', NULL, N'Ruolo {0} eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (345, N'RoleInUseWarning', NULL, N'Il ruolo {0} è in uso da un utente e non può essere eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (346, N'Client {0} created', NULL, N'Creato client {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (347, N'The client {0} doesn''t exist', NULL, N'Il client {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (348, N'Client {0} updated', NULL, N'Client {0} aggiornato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (349, N'Client {0} deleted', NULL, N'Client {0} eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (350, N'Role {0} updated', NULL, N'Ruolo {0} aggiornato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (351, N'Identity Resource {0} created', NULL, N'Creata risorsa identità {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (352, N'Identity Resource {0} updated', NULL, N'Risorsa identità {0} aggiornata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (353, N'Identity Resource {0} deleted', NULL, N'Risorsa identità {0} eliminata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (354, N'API Resource {0} created', NULL, N'Creata risorsa API  {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (355, N'API Resource {0} updated', NULL, N'Risorsa API {0} aggiornata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (356, N'API Resource {0} deleted', NULL, N'Risorsa API {0} eliminata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (357, N'The API resource {0} doesn''t exist', NULL, N'La risorsa API {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (358, N'The Identity resource {0} doesn''t exist', NULL, N'La risorsa identità {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (359, N'UserName', NULL, N'Nome utente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (360, N'Login', NULL, N'Accedi', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (361, N'Sign in with', NULL, N'Accedi con', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (362, N'Sign up', NULL, N'Registrati', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (363, N'Keep me logged in', NULL, N'Resta connesso', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (364, N'Log in', NULL, N'Accesso', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (365, N'Forgot your password?', NULL, N'Password dimenticata?', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (366, N'Submit', NULL, N'Invia', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (367, N'LoginFailed', NULL, N'Accesso fallito', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (368, N'ResetPasswordFailed', NULL, N'Reimpostazione password fallita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (369, N'ForgotPasswordEmailSent', NULL, N'Email reimpostazione password inviata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (370, N'Confirm Email', NULL, N'Conferma Email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (371, N'Send Confirmation', NULL, N'Invia conferma', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (372, N'EmailVerificationFailed', NULL, N'Verifica email fallita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (373, N'EmailVerificationSuccessful', NULL, N'Verifica email riuscita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (374, N'ResetPasswordSuccessful', NULL, N'Reimpostazione password riuscita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (375, N'Password Reset', NULL, N'Reimpostazione password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (376, N'Password Confirmation', NULL, N'Conferma password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (377, N'Reset Password', NULL, N'Reimposta password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (378, N'UserCreationFailed', NULL, N'Creazione utente fallita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (379, N'UserCreationSuccessful', NULL, N'Creazione utente riuscita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (380, N'Registration', NULL, N'Registrazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (381, N'PasswordConfirmationFailed', NULL, N'La password e la password di conferma non corrispondono.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (382, N'ConfirmPassword', NULL, N'Conferma password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (383, N'ConfirmNewPassword', NULL, N'Conferma la nuova password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (384, N'ErrorInvalidLength', NULL, N'Il campo {0} deve avere almeno {2} caratteri ed al massimo {1}.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (385, N'SpacesNotPermitted', NULL, N'Gli spazi non sono consentiti.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (386, N'Role', NULL, N'Ruolo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (387, N'Name', NULL, N'Nome', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (388, N'AlreadyRegistered', NULL, N'Già registrato?', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (389, N'Register', NULL, N'Registrati', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (390, N'InvalidData', NULL, N'I dati inseriti non sono validi.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (391, N'The user {0} doesn''t exist', NULL, N'L''utente {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (392, N'The user doesn''t exist', NULL, N'L''utente non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (393, N'User {0} created', NULL, N'Creato utente {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (394, N'Confirm Delete', NULL, N'Conferma eliminazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (395, N'Logout', NULL, N'Disconnetti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (396, N'Tenants', NULL, N'Siti in comproprietà', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (397, N'Tenant', NULL, N'Sito in comproprietà', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (398, N'MultiTenancy', NULL, N'Siti in comproprietà', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (399, N'{0} tenants fetched', NULL, N'Recuperati {0} siti in comproprietà', N'it-IT', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (400, N'Tenant {0} created', NULL, N'Creato sito in comproprietà {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (401, N'The tenant {0} doesn''t exist', NULL, N'Il sito in comproprietà {0} non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (402, N'Tenant {0} updated', NULL, N'Sito in comproprietà {0} aggiornato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (403, N'Tenant {0} deleted', NULL, N'Sito in comproprietà {0} eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (404, N'Role {0} cannot be deleted', NULL, N'Il ruolo {0} non può essere eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (405, N'Tenant {0} cannot be deleted', NULL, N'Il sito {0} non può essere eliminato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (406, N'Role {0} cannot be edited', NULL, N'Il ruolo {0} non può essere modificato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (407, N'AuthenticationRequired', NULL, N'Richiesta autenticazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (408, N'LoginRequired', NULL, N'Si prega di effettuare l''accesso', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (409, N'Operation not allowed', NULL, N'Operazione non consentita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (410, N'NotAuthorizedTo', NULL, N'Non sei autorizzato ad effettuare l''operazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (411, N'PleaseWait', NULL, N'Attendere prego...', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (412, N'Settings', NULL, N'Impostazioni', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (413, N'EmailSettings', NULL, N'Impostazioni Email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (414, N'OutgoingEmail', NULL, N'Posta in uscita', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (415, N'IncomingEmail', NULL, N'Posta in arrivo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (416, N'SmtpServer', NULL, N'Server SMTP', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (417, N'PopServer', NULL, N'Server POP3', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (418, N'Save', NULL, N'Salva', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (419, N'Port', NULL, N'Porta', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (420, N'ImapServer', NULL, N'Server IMAP', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (421, N'SenderEmail', NULL, N'Email mittente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (422, N'SenderName', NULL, N'Nome mittente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (423, N'MainSettings', NULL, N'Impostazioni principali', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (424, N'AppAdminNavApiAuditLog', NULL, N'Log di controllo utilizzo API', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (425, N'AppAdminNavDBLoggingView', NULL, N'Log', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (426, N'AppAdminNavMonitoring', NULL, N'Monitoraggio', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (427, N'AppHelpAndSupport', NULL, N'Aiuto e supporto', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (428, N'AppHoverAdmin', NULL, N'Amministrazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (429, N'AppHoverNavMinimize', NULL, N'Minimizza barra di navigazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (430, N'AppHoverNavToggle', NULL, N'Commuta barra di navigazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (431, N'AppNavDashboard', NULL, N'Cruscotto', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (432, N'AppNavFeatures', NULL, N'Caratteristiche', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (433, N'AppNavReadEmail', NULL, N'Leggi email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (434, N'AppNavSendEmail', NULL, N'Invia email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (435, N'AppNavSponsors', NULL, N'Sponsor', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (436, N'BreadCrumbadmin', NULL, N'Amministrazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (437, N'BreadCrumbadminapiResources', NULL, N'Risorse API OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (438, N'BreadCrumbadminapilog', NULL, N'Log di controllo utilizzo API', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (439, N'BreadCrumbadminclients', NULL, N'Client OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (440, N'BreadCrumbadmindblog', NULL, N'Log applicativo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (441, N'BreadCrumbadminidentityResources', NULL, N'Risorse Identità OpenID', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (442, N'BreadCrumbadminmultitenancy', NULL, N'Gestione siti in comproprietà', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (443, N'BreadCrumbadminroles', NULL, N'Gestione ruoli', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (444, N'BreadCrumbadminsettings', NULL, N'Impostazioni', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (445, N'BreadCrumbadminsettingsemail', NULL, N'Configurazione Email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (446, N'BreadCrumbadminusers', NULL, N'Utenti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (447, N'BreadCrumbdashboard', NULL, N'Cruscotto', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (448, N'BreadCrumbemail', NULL, N'Invia email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (449, N'BreadCrumbemail_view', NULL, N'Leggi email', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (450, N'BreadCrumbforum', NULL, N'Forum', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (451, N'BreadCrumbHome', NULL, N'Home', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (452, N'BreadCrumbsponsors', NULL, N'Sponsor', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (453, N'BreadCrumbtodo_list', NULL, N'Lista ToDo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (454, N'TodoNav', NULL, N'Lista ToDo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (455, N'CurrentPassword', NULL, N'Password corrente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (456, N'NewPassword', NULL, N'Nuova password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (457, N'Update Password', NULL, N'Aggiorna password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (458, N'UpdatePasswordSuccessful', NULL, N'Aggiornamento password riuscito', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (459, N'UpdatePasswordFailed', NULL, N'Aggiornamento password fallito', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (460, N'FirstName', NULL, N'Nome', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (461, N'LastName', NULL, N'Cognome', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (462, N'Change Password', NULL, N'Cambia password', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (463, N'User Profile', NULL, N'Profilo utente', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (464, N'RememberBrowser', NULL, N'Ricorda questo browser', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (465, N'ForgotAuthenticator', NULL, N'Hai dimenticato la tua app authenticator?', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (466, N'RecoveryCode', NULL, N'Codice di ripristino', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (467, N'LockedUser', NULL, N'L''utente è bloccato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (468, N'EmailNotConfirmed', NULL, N'Email non verificata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (469, N'Code', NULL, N'Codice', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (470, N'TwoFactorAuthentication', NULL, N'Autenticazione a due fattori', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (471, N'BrowserRemembered', NULL, N'Browser memorizzato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (472, N'RecoveryCodesLeft', NULL, N'Codici di ripristino rimasti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (473, N'AuthenticatorCode', NULL, N'Codice authenticator', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (474, N'VerificationCode', NULL, N'codice di verifica', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (475, N'VerificationCodeInvalid', NULL, N'Il codice di verifica non è valido', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (476, N'ResetAuthenticator', NULL, N'Resetta authenticator app', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (477, N'EmailInvalid', NULL, N'Il campo {0} non è un indirizzo email valido.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (478, N'FieldRequired', NULL, N'Il campo {0} è obbligatorio.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (479, N'ConcurrencyFailure', NULL, N'C''è già una modifica in corso.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (480, N'DefaultError', NULL, N'Errore sconosciuto.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (481, N'DuplicateEmail', NULL, N'L''email ''{0}'' è già in uso.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (482, N'DuplicateRoleName', NULL, N'Il nome di ruolo ''{0}'' è già in uso.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (483, N'DuplicateUserName', NULL, N'Il nome utente ''{0}'' è già in uso.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (484, N'InvalidEmail', NULL, N'L''email ''{0}'' non è valido.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (485, N'InvalidRoleName', NULL, N'Il nome di ruolo ''{0}'' non è valido.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (486, N'InvalidToken', NULL, N'Token non valido.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (487, N'InvalidUserName', NULL, N'Il nome utente ''{0}'' non è valido. Deve contenere solo lettere o numeri.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (488, N'LoginAlreadyAssociated', NULL, N'Un utente con questo login esiste già.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (489, N'PasswordMismatch', NULL, N'Password non corretta.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (490, N'PasswordRequiresDigit', NULL, N'Le password devono contenere almeno una numero.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (491, N'PasswordRequiresLower', NULL, N'Le password devono contenere almeno una lettera minuscola.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (492, N'PasswordRequiresNonAlphanumeric', NULL, N'Le password devono contenere almeno un carattere che non sia lettera o numero.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (493, N'PasswordRequiresUpper', NULL, N'Le password devono contenere almeno una lettera maiuscola.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (494, N'PasswordTooShort', NULL, N'Le password devono avere almeno {0} caratteri.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (495, N'UserAlreadyHasPassword', NULL, N'L''utente ha già la password impostata.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (496, N'UserAlreadyInRole', NULL, N'L''utente è già nel ruolo ''{0}''.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (497, N'UserLockoutNotEnabled', NULL, N'Il blocco utente non è abilitato.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (498, N'UserNotInRole', NULL, N'L''utente non è nel ruolo ''{0}''.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (499, N'UnauthorizedAccess', NULL, N'Accesso non autorizzato', N'it-IT', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (500, N'Permissions', NULL, N'Permessi', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (501, N'Allow', NULL, N'Consenti', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (502, N'Are you sure you want to delete {0}?', NULL, N'Vuoi eliminare ''{0}''?', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (503, N'Change password for {0}', NULL, N'Cambia password per {0}', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (504, N'ItemsDeleted', NULL, N'{0} elementi sono stati eliminati.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (505, N'Translations', NULL, N'Traduzioni', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (506, N'Culture', NULL, N'Cultura', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (507, N'NewTranslation', NULL, N'Nuova traduzione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (508, N'Translation', NULL, N'Traduzione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (509, N'Key', NULL, N'Chiave', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (510, N'VerifyCode', NULL, N'Verifica codice', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (511, N'Add', NULL, N'Aggiungi', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (512, N'ReloadTranslations', NULL, N'Ricarica traduzioni', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (513, N'One item found', N'{0} items found', N'Trovato un elemento', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (514, N'Export', NULL, N'Esporta', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (515, N'Import PO file', NULL, N'Importa file PO', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (516, N'File not selected', NULL, N'File non selezionato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (517, N'File not valid', NULL, N'File non valido', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (518, N'File empty', NULL, N'File vuoto', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (519, N'PO File without a valid language', NULL, N'File PO senza un linguaggio valido', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (520, N'Only PO files', NULL, N'Solo file PO', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (521, N'Plural', NULL, N'Plurale', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (522, N'Index', NULL, N'Indice', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (523, N'Count', NULL, N'Conteggio', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (524, N'Selector', NULL, N'Selettore', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (525, N'Localization', NULL, N'Localizzazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (526, N'Pluralization rules', NULL, N'Regole di pluralizzazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (527, N'Edit as HTML', NULL, N'Modifica come HTML', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (528, N'From', NULL, N'Da', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (529, N'To', NULL, N'A', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (530, N'Close', NULL, N'Chiudi', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (531, N'Required', NULL, N'Campo obbligatorio', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (532, N'Rows per page', NULL, N'Righe per pagina', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (533, N'Send test email', NULL, N'Invia email di test', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (534, N'Search', NULL, N'Cerca', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (535, N'This address does not exist', NULL, N'Questo indirizzo non esiste', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (536, N'Operation not performed', NULL, N'Operazione non effettuata', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (537, N'No result found.', NULL, N'Nessun risultato trovato.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (538, N'Please enter a minimum of 2 characters to perform a search.', NULL, N'Si prega di inserire almeno 2 lettere per effettuare la ricerca.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (539, N'Data not available.', NULL, N'Dati non disponibili.', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (540, N'Company', NULL, N'Azienda', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (541, N'Address', NULL, N'Indirizzo', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (542, N'City', NULL, N'Città', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (543, N'Province', NULL, N'Provincia', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (544, N'Country', NULL, N'Nazione', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (545, N'ZipCode', NULL, N'CAP', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (546, N'PhoneNumber', NULL, N'Telefono', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (547, N'VatIn', NULL, N'Partita IVA', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (548, N'EnableAuthenticatorInstructions', NULL, N'<p>Scarica un''app per l''autenticazione a due fattori come Microsoft Authenticator o Google Authenticator.</p><p>Inquadra il QR Code o inserisci questa chiave <kbd>{0}</kbd> nella tua app. Spazi e maiuscole non contano.</p><img src="{1}" style="width: 200px" /><p>Una volta inquadrato il QR code o inserita la chiave suddetta, la tua app ti fornirà un codice da inserire nella casella sottostante. Inseriscilo e conferma.</p>', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (549, N'You are not authorized to access this page', NULL, N'Accesso non autorizzato', N'it-IT', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (550, N'CreateApiResourcePermission', NULL, N'دسترسی ساخت منبع داده‌ورزی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (551, N'CreateClientPermission', NULL, N'دسترسی ساخت کارآور OpenID', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (552, N'CreateIdentityResourcePermission', NULL, N'دسترسی ساخت منبع شناسایی OpenID', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (553, N'CreateRolePermission', NULL, N'دسترسی ساخت نقش', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (554, N'CreateUserPermission', NULL, N'دسترسی ساخت کاربر', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (555, N'DeleteApiResourcePermission', NULL, N'دسترسی پاک‌کردن منبع داده‌ورزی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (556, N'DeleteClientPermission', NULL, N'دسترسی پاک‌کردن کارآور OpenID', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (557, N'DeleteIdentityResourcePermission', NULL, N'دسترسی پاک‌کردن منبع شناسایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (558, N'DeleteRolePermission', NULL, N'دسترسی پاک‌کردن نقش', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (559, N'DeleteUserPermission', NULL, N'دسترسی پاک‌کردن کاربر', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (560, N'ReadApiResourcePermission', NULL, N'دسترسی به نمایش منابع داده‌ورزی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (561, N'ReadClientPermission', NULL, N'دسترسی به نمایش فهرست کارآوران', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (562, N'ReadIdentityResourcePermission', NULL, N'دسترسی به نمایش فهرست منابع شناسایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (563, N'ReadRolePermission', NULL, N'دسترسی به نمایش فهرست نقش‌ها', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (564, N'ReadUserPermission', NULL, N'دسترسی به نمایش فهرست کاربران', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (565, N'UpdateApiResourcePermission', NULL, N'دسترسی ویرایش منابع داده‌ورزی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (566, N'UpdateClientPermission', NULL, N'دسترسی ویرایش کارآورها', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (567, N'UpdateIdentityResourcePermission', NULL, N'دسترسی ویرایش منابع شناسایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (568, N'UpdateRolePermission', NULL, N'دسترسی ویرایش نقش‌ها', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (569, N'UpdateUserPermission', NULL, N'دسترسی ویرایش کاربران', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (570, N'Delete', NULL, N'پاک‌کردن', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (571, N'Cancel', NULL, N'لغو', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (572, N'Users', NULL, N'کاربران', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (573, N'Roles', NULL, N'نقش‌ها', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (574, N'ApiResources', NULL, N'منبع داده‌ورزی OpenID', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (575, N'IdentityResources', NULL, N'منابع شناسایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (576, N'OpenIdClients', NULL, N'کارآور OpenID', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (577, N'Dashboard', NULL, N'پیشخوان', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (578, N'Loading', NULL, N'بارگذاری', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (579, N'New Client', NULL, N'افزودن کارآور', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (580, N'New User', NULL, N'افزودن کاربر', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (581, N'New Role', NULL, N'افزودن نقش', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (582, N'New API Resource', NULL, N'افزودن منبع داده‌ورزی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (583, N'New Identity Resource', NULL, N'منبع شناسایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (584, N'{0} users fetched', NULL, N'{0} کاربر دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (585, N'Operation Successful', NULL, N'با کامیابی انجام شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (586, N'Operation Failed', NULL, N'انجام نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (587, N'{0} roles fetched', NULL, N'{0} نقش دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (588, N'{0} clients fetched', NULL, N'{0} کارآور دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (589, N'{0} identity resources fetched', NULL, N'{0} منبع شناسایی دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (590, N'{0} API resources fetched', NULL, N'{0} منبع  دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (591, N'Create', NULL, N'ساختن', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (592, N'Update', NULL, N'ویرایش', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (593, N'Edit {0}', NULL, N'ویرایش ''{0}''', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (594, N'Permissions list fetched', NULL, N'فهرست دسترسی‌ها دریافت شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (595, N'Role {0} created', NULL, N'نقش {0} ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (596, N'Role {0} already exists', NULL, N'نقش {0} پیش از این ساخته شده', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (597, N'The role {0} doesn''t exist', NULL, N'نقش {0} یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (598, N'Role {0} deleted', NULL, N'نقش {0} پاک شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (599, N'RoleInUseWarning', NULL, N'نقش {0} به دست‌کم یک کاربر داده شده و نمی‌تواند پاک شود', N'fa-IR', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (600, N'Client {0} created', NULL, N'کارآور {0} ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (601, N'The client {0} doesn''t exist', NULL, N'کارآور {0} یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (602, N'Client {0} updated', NULL, N'کارآور {0} ویرایش شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (603, N'Client {0} deleted', NULL, N'کارآور {0} پاک شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (604, N'Role {0} updated', NULL, N'نقش {0} ویرایش شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (605, N'Identity Resource {0} created', NULL, N'منبع شناسایی {0} ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (606, N'Identity Resource {0} updated', NULL, N'منبع شناسایی {0} ویرایش شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (607, N'Identity Resource {0} deleted', NULL, N'منبع شناسایی {0} پاک شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (608, N'API Resource {0} created', NULL, N'منبع داده‌ورزی {0} ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (609, N'API Resource {0} updated', NULL, N'منبع داده‌ورزی {0} ویرایش شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (610, N'API Resource {0} deleted', NULL, N'منبع داده‌ورزی {0} پاک شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (611, N'The API resource {0} doesn''t exist', NULL, N'منبع داده‌ورزی {0} یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (612, N'The Identity resource {0} doesn''t exist', NULL, N'منبع شناسایی {0} یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (613, N'UserName', NULL, N'نام کاربری', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (614, N'Login', NULL, N'ورود', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (615, N'Sign in with', NULL, N'ورود با', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (616, N'Sign up', NULL, N'نام‌نویسی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (617, N'Keep me logged in', NULL, N'مرا به یاد بسپار', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (618, N'Log in', NULL, N'ورود', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (619, N'Forgot your password?', NULL, N'فراموشی رمز', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (620, N'Submit', NULL, N'فرستادن', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (621, N'LoginFailed', NULL, N'ورود ناکام', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (622, N'ResetPasswordFailed', NULL, N'بازنشانی رمز انجام نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (623, N'ForgotPasswordEmailSent', NULL, N'ایمیل بازنشانی رمز فرستاده شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (624, N'Confirm Email', NULL, N'تایید ایمیل', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (625, N'Send Confirmation', NULL, N'فرستادن راستی‌آزمایی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (626, N'EmailVerificationFailed', NULL, N'ایمیل راستی‌آزمایی نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (627, N'EmailVerificationSuccessful', NULL, N'ایمیل با کامیابی راستی‌آزمایی شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (628, N'ResetPasswordSuccessful', NULL, N'بازنشانی رمز با کامیابی انجام شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (629, N'Password Reset', NULL, N'بازنشانی رمز', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (630, N'Password Confirmation', NULL, N'تایید رمز', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (631, N'Reset Password', NULL, N'بازنشانی رمز', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (632, N'UserCreationFailed', NULL, N'ساخت کاربر کامیاب نبود', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (633, N'UserCreationSuccessful', NULL, N'کاربر با کامیابی ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (634, N'Registration', NULL, N'نام‌نویسی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (635, N'PasswordConfirmationFailed', NULL, N'رمز با تایید رمز خوانایی ندارد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (636, N'ConfirmPassword', NULL, N'تایید رمز', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (637, N'ErrorInvalidLength', NULL, N'{0} باید بیشتر از {2} و کمتر از {1} حرف باشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (638, N'SpacesNotPermitted', NULL, N'فاصله مجاز نیست', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (639, N'Role', NULL, N'نقش', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (640, N'Name', NULL, N'نام', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (641, N'AlreadyRegistered', NULL, N'این کاربر پیش از این نام‌نویسی کرده', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (642, N'Register', NULL, N'نام‌نویسی', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (643, N'InvalidData', NULL, N'داده‌ی نامناسب', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (644, N'The user {0} doesn''t exist', NULL, N'کاربر {0} یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (645, N'The user doesn''t exist', NULL, N'چنین کاربری یافت نشد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (646, N'User {0} created', NULL, N'کاربر {0} ساخته شد', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (647, N'Confirm Delete', NULL, N'تایید پاک شدن', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (648, N'Logout', NULL, N'بیرون‌شدن', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (649, N'ConcurrencyFailure', NULL, N'خطای همزمانی رخ داده و ردیف مورد نظر، پیش از این، تغییر کرده.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (650, N'DefaultError', NULL, N'خطایی ناشناخته رخ داد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (651, N'DuplicateEmail', NULL, N'ایمیل {0} پیش از این گرفته شده.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (652, N'DuplicateRoleName', NULL, N'نام {0} برای نقش دیگری پیشتر استفاده شده.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (653, N'DuplicateUserName', NULL, N'نام کاربری {0} پیش از این گرفته شده.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (654, N'InvalidEmail', NULL, N'ایمیل {0} درست نیست.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (655, N'InvalidRoleName', NULL, N'نام {0} برای نقش قابل استفاده نیست.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (656, N'InvalidToken', NULL, N'نشان (توکن) نادرست است.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (657, N'InvalidUserName', NULL, N'نام کاربری {0} قابل استفاده نیست. نام کاربری باید از حروف و اعداد تشکیل شده باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (658, N'LoginAlreadyAssociated', NULL, N'کاربری با این نام کاربری وجود دارد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (659, N'PasswordMismatch', NULL, N'رمز نادرست است.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (660, N'PasswordRequiresDigit', NULL, N'رمز باید دست‌کم یک شماره (''0''-''9'') داشته باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (661, N'PasswordRequiresLower', NULL, N'رمز باید دست‌کم یک حرف کوچک (''a''-''z'') داشته باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (662, N'PasswordRequiresNonAlphanumeric', NULL, N'رمز باید دست‌کم یک نشانه داشته باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (663, N'PasswordRequiresUpper', NULL, N'رمز باید دست‌کم یک حرف بزرگ (''A''-''Z'') داشته باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (664, N'PasswordTooShort', NULL, N'درازای رمز باید دست‌کم {0} باشد.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (665, N'UserAlreadyHasPassword', NULL, N'کاربر رمز داشته.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (666, N'UserAlreadyInRole', NULL, N'کاربر در نقش ''{0}'' بوده.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (667, N'UserLockoutNotEnabled', NULL, N'حساب کاربر قفل نیست.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (668, N'UserNotInRole', NULL, N'کاربر در نقش ''{0}'' نیست.', N'fa-IR', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (669, N'TestEmail.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> Blazor Boilerplate   </h1>   <p>Hello {user},</p>   <p>     This is a <strong>TEST</strong> email. If you are using BlazorBoilerplate please <a href="https://github.com/enkodellc/blazorboilerplate">star the repo on Github</a>.     We are looking for more contributors to grow the project. There are several areas of improvement needed and if you are using the repo in your project please submit your PR''s or suggestions.   </p>   <p>     Join our <a href="https://gitter.im/blazorboilerplate/community">chat on Gitter</a> to disucss future project features, timelines and to get involved.   </p>   <p>The email was on {testDate}.</p>   <p>     <br />   </p>   <p>Regards,</p>   <p>BlazorBoilerplate Email Template</p> </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (670, N'PlainTextTestEmail.template', NULL, N'Hello, This email was sent using the plain text test email template. The test was on {date}.  Regards, Blazor BoilerplateTemplate', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (671, N'PasswordReset.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> BlazorBoilerplate   </h1>   <h3>Dear {userName},</h3>   <p>Your password has been successfully reset, you can now login with your new password.</p>   <br/>   <div>     Cheers!   </div> </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (672, N'NewUserNotificationEmail.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> BlazorBoilerplate   </h1>   <p>Hello {name},</p>   <p>     A new user has been added as a new user to <a href="{baseUrl}" target="_blank">blazorboilerplate.com</a>   </p>   <p>     Created by {creator}<br/>     Company: {company}<br/>     Roles: {roles}<br/>     Name: {name}<br/>     User Name: {userName}<br/>>     Email: {email}<br/>   </p>   <p>     <br />   </p>   <p>Regards,</p>   <p>BlazorBoilerplate Team</p> </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (673, N'NewUserEmail.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> BlazorBoilerplate   </h1>   <p>Hello {fullName},</p>   <p>     You have been added as a new user to <a href="{baseUrl}" target="_blank">{baseUrl}</a> Below are your new credentials.   </p>   <p>     User Name: {userName}<br />     Email: {email}<br />     Password: {password}   </p>   <ul>     <li>       Please save this email to refer to your login credentials.     </li>     <li>       You can log in using the <a href="{baseUrl}/account/login">link provided here.</a>     </li>   </ul>   <p>     <br />   </p>   <p>Thank you, and welcome aboard the BlazorBoilerplate</p> </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (674, N'NewUserConfirmationEmail.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> BlazorBoilerplate   </h1>   <p>Hello {userName},</p>   <p>     Please confirm your account by: <a href=''{callbackUrl}''>clicking this link.</a>   </p>   <p>     <strong>UserId:</strong> {userId}<br />     <strong>Token:</strong> {token}<br/>   </p>   <p>Thank you, and welcome to the BlazorBoilerplate</p> </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (675, N'ForgotPassword.template', NULL, N'<div>   <h1>     <img style="width:100px; vertical-align: middle;" src="{baseUrl}/images/logo.png" alt="Blazor Boilerplate"/> BlazorBoilerplate   </h1>   <h3>Dear {name},</h3>   <p>     You requested for a password reset, kindly use this <a href="{callbackUrl}">link</a> to reset your password.   </p>   <br/>   <p>Cheers!</p>  </div>', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (676, N'TestEmail.subject', NULL, N'Hello {0} from BlazorBoilerplate Team', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (677, N'PlainTextTestEmail.subject', NULL, N'Hello {0} from BlazorBoilerplate Team', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (678, N'PasswordReset.subject', NULL, N'BlazorBoilerplate Password Reset for {0}', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (679, N'NewUserNotificationEmail.subject', NULL, N'A new user ''{0}'' has registered on BlazorBoilerplate', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (680, N'NewUserEmail.subject', NULL, N'Welcome {0} to BlazorBoilerplate', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (681, N'NewUserConfirmationEmail.subject', NULL, N'Welcome {0} to BlazorBoilerplate', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (682, N'ForgotPassword.subject', NULL, N'BlazorBoilerplate Forgot Password Reset for {0}', N'en-US', N'EmailFactory')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (683, N'CreateApiResourcePermission', NULL, N'Create a new API resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (684, N'CreateClientPermission', NULL, N'Create a new client', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (685, N'CreateRolePermission', NULL, N'Create a new role', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (686, N'CreateUserPermission', NULL, N'Create a new user', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (687, N'DeleteApiResourcePermission', NULL, N'Delete any API resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (688, N'DeleteClientPermission', NULL, N'Delete any client', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (689, N'DeleteRolePermission', NULL, N'Delete any role', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (690, N'DeleteUserPermission', NULL, N'Delete any user', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (691, N'ReadApiResourcePermission', NULL, N'Read API resources data', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (692, N'ReadClientPermission', NULL, N'Read clients data', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (693, N'ReadRolePermission', NULL, N'Read roles data (permissions, etc.")', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (694, N'ReadUserPermission', NULL, N'Read users data (Names, Emails, Phone Numbers, etc.)', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (695, N'UpdateApiResourcePermission', NULL, N'Edit existing API resources', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (696, N'UpdateClientPermission', NULL, N'Edit existing clients', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (697, N'UpdateRolePermission', NULL, N'Edit existing roles', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (698, N'UpdateUserPermission', NULL, N'Edit existing users', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (699, N'CreateIdentityResourcePermission', NULL, N'Create a new identity resource', N'en-US', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (700, N'ReadIdentityResourcePermission', NULL, N'Read identity resources data', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (701, N'UpdateIdentityResourcePermission', NULL, N'Edit existing identity resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (702, N'DeleteIdentityResourcePermission', NULL, N'Delete any identity resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (703, N'Delete', NULL, N'Delete', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (704, N'Cancel', NULL, N'Cancel', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (705, N'Users', NULL, N'Users', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (706, N'Roles', NULL, N'Roles', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (707, N'ApiResources', NULL, N'OpenID API resources', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (708, N'IdentityResources', NULL, N'OpenID Identity Resources', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (709, N'OpenIdClients', NULL, N'OpenID Clients', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (710, N'Dashboard', NULL, N'Dashboard', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (711, N'Loading', NULL, N'Loading in progress...', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (712, N'New Client', NULL, N'New Client', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (713, N'New User', NULL, N'New User', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (714, N'New Role', NULL, N'New Role', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (715, N'New API Resource', NULL, N'New API Resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (716, N'New Identity Resource', NULL, N'New Identity Resource', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (717, N'{0} users fetched', NULL, N'{0} users fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (718, N'Operation Successful', NULL, N'Operation Successful', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (719, N'Operation Failed', NULL, N'Operation Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (720, N'{0} roles fetched', NULL, N'{0} roles fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (721, N'{0} clients fetched', NULL, N'{0} clients fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (722, N'{0} identity resources fetched', NULL, N'{0} identity resources fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (723, N'{0} API resources fetched', NULL, N'{0} API resources fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (724, N'Create', NULL, N'Create', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (725, N'Update', NULL, N'Update', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (726, N'Edit {0}', NULL, N'Edit ''{0}''', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (727, N'Permissions list fetched', NULL, N'Permissions list fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (728, N'Role {0} created', NULL, N'Role {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (729, N'Role {0} already exists', NULL, N'Role {0} already exists', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (730, N'The role {0} doesn''t exist', NULL, N'The role {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (731, N'Role {0} deleted', NULL, N'Role {0} deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (732, N'RoleInUseWarning', NULL, N'This role {0} is still used by a user, you cannot delete it', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (733, N'Client {0} created', NULL, N'Client {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (734, N'The client {0} doesn''t exist', NULL, N'The client {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (735, N'Client {0} updated', NULL, N'Client {0} updated', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (736, N'Client {0} deleted', NULL, N'Client {0} deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (737, N'Role {0} updated', NULL, N'Role {0} updated', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (738, N'Identity Resource {0} created', NULL, N'Identity Resource {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (739, N'Identity Resource {0} updated', NULL, N'Identity Resource {0} updated', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (740, N'Identity Resource {0} deleted', NULL, N'Identity Resource {0} deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (741, N'API Resource {0} created', NULL, N'API Resource {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (742, N'API Resource {0} updated', NULL, N'API Resource {0} updated', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (743, N'API Resource {0} deleted', NULL, N'API Resource {0} deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (744, N'The API resource {0} doesn''t exist', NULL, N'The API resource {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (745, N'The Identity resource {0} doesn''t exist', NULL, N'The Identity resource {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (746, N'UserName', NULL, N'User Name', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (747, N'Login', NULL, N'Login', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (748, N'Sign in with', NULL, N'Sign in with', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (749, N'Sign up', NULL, N'Sign up', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (750, N'Keep me logged in', NULL, N'Keep me logged in', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (751, N'Log in', NULL, N'Log in', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (752, N'Forgot your password?', NULL, N'Forgot your password?', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (753, N'Submit', NULL, N'Submit', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (754, N'LoginFailed', NULL, N'Login Attempt Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (755, N'ResetPasswordFailed', NULL, N'Reset Password Attempt Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (756, N'ForgotPasswordEmailSent', NULL, N'Forgot Password Email Sent', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (757, N'Confirm Email', NULL, N'Confirm Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (758, N'Send Confirmation', NULL, N'Send Confirmation', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (759, N'EmailVerificationFailed', NULL, N'Email Verification Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (760, N'EmailVerificationSuccessful', NULL, N'Email Verification Successful', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (761, N'ResetPasswordSuccessful', NULL, N'Reset Password Successful', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (762, N'Password Reset', NULL, N'Password Reset', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (763, N'Password Confirmation', NULL, N'Password Confirmation', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (764, N'Reset Password', NULL, N'Reset Password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (765, N'UserCreationFailed', NULL, N'User Creation Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (766, N'UserCreationSuccessful', NULL, N'User Creation Successful', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (767, N'Registration', NULL, N'Registration', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (768, N'PasswordConfirmationFailed', NULL, N'The password and confirmation password do not match.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (769, N'ConfirmPassword', NULL, N'Confirm password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (770, N'ConfirmNewPassword', NULL, N'Confirm new password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (771, N'ErrorInvalidLength', NULL, N'The {0} must be at least {2} and at max {1} characters long.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (772, N'SpacesNotPermitted', NULL, N'Spaces are not permitted.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (773, N'Role', NULL, N'Role', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (774, N'Name', NULL, N'Name', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (775, N'AlreadyRegistered', NULL, N'Already registered?', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (776, N'Register', NULL, N'Register', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (777, N'InvalidData', NULL, N'Inserted data are not valid.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (778, N'The user {0} doesn''t exist', NULL, N'The user {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (779, N'The user doesn''t exist', NULL, N'The user doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (780, N'User {0} created', NULL, N'User {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (781, N'Confirm Delete', NULL, N'Confirm Delete', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (782, N'Logout', NULL, N'Logout', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (783, N'Tenants', NULL, N'Tenants', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (784, N'Tenant', NULL, N'Tenant', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (785, N'MultiTenancy', NULL, N'Multi-tenancy', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (786, N'{0} tenants fetched', NULL, N'{0} tenants fetched', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (787, N'Tenant {0} created', NULL, N'Tenant {0} created', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (788, N'The tenant {0} doesn''t exist', NULL, N'The tenant {0} doesn''t exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (789, N'Tenant {0} updated', NULL, N'Tenant {0} updated', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (790, N'Tenant {0} deleted', NULL, N'Tenant {0} deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (791, N'Role {0} cannot be deleted', NULL, N'Role {0} cannot be deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (792, N'Tenant {0} cannot be deleted', NULL, N'Tenant {0} cannot be deleted', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (793, N'Role {0} cannot be edited', NULL, N'Role {0} cannot be edited', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (794, N'AuthenticationRequired', NULL, N'Authentication required', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (795, N'LoginRequired', NULL, N'Please login first', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (796, N'Operation not allowed', NULL, N'Operation not allowed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (797, N'NotAuthorizedTo', NULL, N'You are not authorized to perform the operation', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (798, N'PleaseWait', NULL, N'Please wait...', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (799, N'Settings', NULL, N'Settings', N'en-US', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (800, N'EmailSettings', NULL, N'Email settings', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (801, N'OutgoingEmail', NULL, N'Outgoing email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (802, N'IncomingEmail', NULL, N'Incoming email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (803, N'SmtpServer', NULL, N'SMTP server', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (804, N'PopServer', NULL, N'POP3 server', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (805, N'Save', NULL, N'Save', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (806, N'Port', NULL, N'Port', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (807, N'ImapServer', NULL, N'IMAP server', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (808, N'SenderEmail', NULL, N'Sender email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (809, N'SenderName', NULL, N'Sender name', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (810, N'MainSettings', NULL, N'Main settings', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (811, N'AppAdminNavApiAuditLog', NULL, N'Api Audit Log', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (812, N'AppAdminNavDBLoggingView', NULL, N'DB Logging Viewer', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (813, N'AppAdminNavFrontEnd', NULL, N'FrontEnd', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (814, N'AppAdminNavMonitoring', NULL, N'Monitoring', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (815, N'AppHelpAndSupport', NULL, N'Help & Support', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (816, N'AppHoverAdmin', NULL, N'Administration', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (817, N'AppHoverNavMinimize', NULL, N'Minimize Navigation Bar', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (818, N'AppHoverNavToggle', NULL, N'Toggle Navigation Bar', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (819, N'AppName', NULL, N'Blazor Boilerplate', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (820, N'AppNavDashboard', NULL, N'Dashboard', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (821, N'AppNavDragAndDrop', NULL, N'Drag and Drop', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (822, N'AppNavEmail', NULL, N'Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (823, N'AppNavFeatures', NULL, N'Features', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (824, N'AppNavForum', NULL, N'Forum', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (825, N'AppNavHome', NULL, N'Homepage', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (826, N'AppNavReadEmail', NULL, N'Read Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (827, N'AppNavScreenshots', NULL, N'Screenshots', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (828, N'AppNavSendEmail', NULL, N'Send Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (829, N'AppNavSponsors', NULL, N'Sponsors', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (830, N'AppShortName', NULL, N'BlazorBP', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (831, N'BreadCrumbadmin', NULL, N'Admin', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (832, N'BreadCrumbadminapiResources', NULL, N'API Resources', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (833, N'BreadCrumbadminapilog', NULL, N'API Audit Log', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (834, N'BreadCrumbadminclients', NULL, N'Clients', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (835, N'BreadCrumbadmindblog', NULL, N'Application Log', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (836, N'BreadCrumbadminidentityResources', NULL, N'Identity Resources', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (837, N'BreadCrumbadminmultitenancy', NULL, N'Tenant Manager', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (838, N'BreadCrumbadminroles', NULL, N'Roles Manager', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (839, N'BreadCrumbadminsettings', NULL, N'Settings', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (840, N'BreadCrumbadminsettingsemail', NULL, N'Email Configurations', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (841, N'BreadCrumbadminusers', NULL, N'Users', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (842, N'BreadCrumbdashboard', NULL, N'Dashboard', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (843, N'BreadCrumbdrag_and_drop', NULL, N'Drag and Drop', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (844, N'BreadCrumbemail', NULL, N'Send Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (845, N'BreadCrumbemail_view', NULL, N'Read Email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (846, N'BreadCrumbforum', NULL, N'Forum', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (847, N'BreadCrumbHome', NULL, N'Home', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (848, N'BreadCrumbscreenshots', NULL, N'Screenshots', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (849, N'BreadCrumbsponsors', NULL, N'Sponsors', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (850, N'BreadCrumbtodo_list', NULL, N'ToDo', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (851, N'TodoNav', NULL, N'ToDo List', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (852, N'CurrentPassword', NULL, N'Current password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (853, N'NewPassword', NULL, N'New password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (854, N'Update Password', NULL, N'Update password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (855, N'UpdatePasswordSuccessful', NULL, N'Update Password Successful', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (856, N'UpdatePasswordFailed', NULL, N'Update Password Failed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (857, N'FirstName', NULL, N'First name', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (858, N'LastName', NULL, N'Last name', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (859, N'Change Password', NULL, N'Change Password', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (860, N'User Profile', NULL, N'User Profile', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (861, N'RememberBrowser', NULL, N'Remember browser', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (862, N'ForgotAuthenticator', NULL, N'Forgot your authenticator?', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (863, N'RecoveryCode', NULL, N'Recovery code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (864, N'LockedUser', NULL, N'User is locked out', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (865, N'EmailNotConfirmed', NULL, N'Email not confirmed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (866, N'Code', NULL, N'Code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (867, N'TwoFactorAuthentication', NULL, N'Two Factor Authentication', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (868, N'BrowserRemembered', NULL, N'Browser remembered', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (869, N'RecoveryCodesLeft', NULL, N'Recovery codes left', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (870, N'AuthenticatorCode', NULL, N'Authenticator code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (871, N'VerificationCode', NULL, N'Verification Code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (872, N'VerificationCodeInvalid', NULL, N'Verification code is invalid', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (873, N'ResetAuthenticator', NULL, N'Reset Authenticator', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (874, N'EmailInvalid', NULL, N'The {0} field is not a valid e-mail address.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (875, N'FieldRequired', NULL, N'The {0} field is mandatory.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (876, N'ConcurrencyFailure', NULL, N'Optimistic concurrency failure, object has been modified.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (877, N'DefaultError', NULL, N'An unknown failure has occurred.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (878, N'DuplicateEmail', NULL, N'Email ''{0}'' is already taken.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (879, N'DuplicateRoleName', NULL, N'Role name ''{0}'' is already taken.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (880, N'DuplicateUserName', NULL, N'User Name ''{0}'' is already taken.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (881, N'InvalidEmail', NULL, N'Email ''{0}'' is invalid.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (882, N'InvalidRoleName', NULL, N'Role name ''{0}'' is invalid.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (883, N'InvalidToken', NULL, N'Invalid token.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (884, N'InvalidUserName', NULL, N'User name ''{0}'' is invalid, can only contain letters or digits.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (885, N'LoginAlreadyAssociated', NULL, N'A user with this login already exists.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (886, N'PasswordMismatch', NULL, N'Incorrect password.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (887, N'PasswordRequiresDigit', NULL, N'Passwords must have at least one digit (''0''-''9'').', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (888, N'PasswordRequiresLower', NULL, N'Passwords must have at least one lowercase (''a''-''z'').', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (889, N'PasswordRequiresNonAlphanumeric', NULL, N'Passwords must have at least one non alphanumeric character.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (890, N'PasswordRequiresUpper', NULL, N'Passwords must have at least one uppercase (''A''-''Z'').', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (891, N'PasswordTooShort', NULL, N'Passwords must be at least {0} characters.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (892, N'UserAlreadyHasPassword', NULL, N'User already has a password set.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (893, N'UserAlreadyInRole', NULL, N'User already in role ''{0}''.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (894, N'UserLockoutNotEnabled', NULL, N'Lockout is not enabled for this user.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (895, N'UserNotInRole', NULL, N'User is not in role ''{0}''.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (896, N'UnauthorizedAccess', NULL, N'Unauthorized access', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (897, N'Permissions', NULL, N'Permissions', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (898, N'Allow', NULL, N'Allow', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (899, N'Are you sure you want to delete {0}?', NULL, N'Are you sure you want to delete ''{0}''?', N'en-US', N'Global')
GO
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (900, N'Change password for {0}', NULL, N'Change password for {0}', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (901, N'ItemsDeleted', NULL, N'{0} items deleted.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (902, N'Translations', NULL, N'Translations', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (903, N'Culture', NULL, N'Culture', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (904, N'NewTranslation', NULL, N'New translation', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (905, N'Translation', NULL, N'Translation', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (906, N'Key', NULL, N'Key', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (907, N'VerifyCode', NULL, N'Verify code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (908, N'Add', NULL, N'Add', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (909, N'ReloadTranslations', NULL, N'Reload translations', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (910, N'One item found', N'{0} items found', N'One item found', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (911, N'Export', NULL, N'Export', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (912, N'Import PO file', NULL, N'Import PO file', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (913, N'File not selected', NULL, N'File not selected', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (914, N'File not valid', NULL, N'File not valid', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (915, N'File empty', NULL, N'File empty', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (916, N'PO File without a valid language', NULL, N'PO File without a valid language', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (917, N'Only PO files', NULL, N'Only PO files', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (918, N'Plural', NULL, N'Plural', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (919, N'Index', NULL, N'Index', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (920, N'Count', NULL, N'Count', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (921, N'Selector', NULL, N'Selector', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (922, N'Localization', NULL, N'Localization', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (923, N'Pluralization rules', NULL, N'Pluralization rules', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (924, N'Edit as HTML', NULL, N'Edit as HTML', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (925, N'From', NULL, N'From', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (926, N'To', NULL, N'To', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (927, N'Close', NULL, N'Close', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (928, N'Required', NULL, N'Mandatory field ', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (929, N'Rows per page', NULL, N'Rows per page', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (930, N'Send test email', NULL, N'Send test email', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (931, N'Search', NULL, N'Search', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (932, N'This address does not exist', NULL, N'This address does not exist', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (933, N'Operation not performed', NULL, N'Operation not performed', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (934, N'No result found.', NULL, N'No result found.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (935, N'Please enter a minimum of 2 characters to perform a search.', NULL, N'Please enter a minimum of 2 characters to perform a search.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (936, N'Data not available.', NULL, N'Data not available.', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (937, N'Company', NULL, N'Company', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (938, N'Address', NULL, N'Address', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (939, N'City', NULL, N'City', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (940, N'Province', NULL, N'Province', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (941, N'Country', NULL, N'Country', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (942, N'ZipCode', NULL, N'Zip Code', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (943, N'PhoneNumber', NULL, N'Phone number', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (944, N'VatIn', NULL, N'VAT', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (945, N'EnableAuthenticatorInstructions', NULL, N'<p>Download a two-factor authenticator app like Microsoft Authenticator or Google Authenticator.</p><p>Scan the QR Code or enter this key <kbd>{0}</kbd> into your two factor authenticator app. Spaces and casing do not matter.</p><img src="{1}" style="width: 200px" /><p>Once you have scanned the QR code or input the key above, your two factor authentication app will provide you with a unique code. Enter the code in the confirmation box below and confirm.</p>', N'en-US', N'Global')
INSERT [dbo].[LocalizationRecords] ([Id], [MsgId], [MsgIdPlural], [Translation], [Culture], [ContextId]) VALUES (946, N'You are not authorized to access this page', NULL, N'You are not authorized to access this page', N'en-US', N'Global')
SET IDENTITY_INSERT [dbo].[LocalizationRecords] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties]) VALUES (1, N'The cookie ''"idsrv.session"'' has set ''SameSite=None'' and must also set ''Secure''.', N'The cookie ''{name}'' has set ''SameSite=None'' and must also set ''Secure''.', N'Warning', CAST(N'2022-02-17T21:16:31.2018443' AS DateTime2), NULL, N'<properties><property key=''name''>idsrv.session</property><property key=''EventId''><structure type=''''><property key=''Id''>1</property><property key=''Name''>SameSiteNotSecure</property></structure></property><property key=''SourceContext''>Microsoft.AspNetCore.Http.ResponseCookies</property><property key=''ActionId''>da40618d-4645-46be-bd53-879044df0e5d</property><property key=''ActionName''>BlazorBoilerplate.Server.Controllers.AccountController.Login (BlazorBoilerplate.Server)</property><property key=''RequestId''>0HMFIGI22J3JF:00000004</property><property key=''RequestPath''>/api/Account/Login</property><property key=''ConnectionId''>0HMFIGI22J3JF</property></properties>')
INSERT [dbo].[Logs] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties]) VALUES (2, N'The cookie ''".AspNetCore.Identity.Application"'' has set ''SameSite=None'' and must also set ''Secure''.', N'The cookie ''{name}'' has set ''SameSite=None'' and must also set ''Secure''.', N'Warning', CAST(N'2022-02-17T21:16:31.2103891' AS DateTime2), NULL, N'<properties><property key=''name''>.AspNetCore.Identity.Application</property><property key=''EventId''><structure type=''''><property key=''Id''>1</property><property key=''Name''>SameSiteNotSecure</property></structure></property><property key=''SourceContext''>Microsoft.AspNetCore.Http.ResponseCookies</property><property key=''ActionId''>da40618d-4645-46be-bd53-879044df0e5d</property><property key=''ActionName''>BlazorBoilerplate.Server.Controllers.AccountController.Login (BlazorBoilerplate.Server)</property><property key=''RequestId''>0HMFIGI22J3JF:00000004</property><property key=''RequestPath''>/api/Account/Login</property><property key=''ConnectionId''>0HMFIGI22J3JF</property></properties>')
INSERT [dbo].[Logs] ([Id], [Message], [MessageTemplate], [Level], [TimeStamp], [Exception], [Properties]) VALUES (3, N'The cookie ''".AspNetCore.Identity.ApplicationC1"'' has set ''SameSite=None'' and must also set ''Secure''.', N'The cookie ''{name}'' has set ''SameSite=None'' and must also set ''Secure''.', N'Warning', CAST(N'2022-02-17T21:16:31.2105857' AS DateTime2), NULL, N'<properties><property key=''name''>.AspNetCore.Identity.ApplicationC1</property><property key=''EventId''><structure type=''''><property key=''Id''>1</property><property key=''Name''>SameSiteNotSecure</property></structure></property><property key=''SourceContext''>Microsoft.AspNetCore.Http.ResponseCookies</property><property key=''ActionId''>da40618d-4645-46be-bd53-879044df0e5d</property><property key=''ActionName''>BlazorBoilerplate.Server.Controllers.AccountController.Login (BlazorBoilerplate.Server)</property><property key=''RequestId''>0HMFIGI22J3JF:00000004</property><property key=''RequestPath''>/api/Account/Login</property><property key=''ConnectionId''>0HMFIGI22J3JF</property></properties>')
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([Id], [UserName], [Text], [When], [UserID]) VALUES (1, N'admin', N'erty', CAST(N'2022-02-21T20:44:06.8363533' AS DateTime2), N'09165013-a2f1-4142-f9fd-08d9f2616921')
INSERT [dbo].[Messages] ([Id], [UserName], [Text], [When], [UserID]) VALUES (2, N'admin', N'There Once was a man from nantucket', CAST(N'2022-02-21T20:44:33.1377051' AS DateTime2), N'09165013-a2f1-4142-f9fd-08d9f2616921')
INSERT [dbo].[Messages] ([Id], [UserName], [Text], [When], [UserID]) VALUES (3, N'user', N'This is a wonderful thing', CAST(N'2022-03-03T06:32:11.0929514' AS DateTime2), N'ad98c87b-3793-4021-2e3d-08d9f2623859')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
INSERT [dbo].[PluralFormRules] ([Language], [Count], [Selector]) VALUES (N'de-DE', 2, N'(n != 1)')
INSERT [dbo].[PluralFormRules] ([Language], [Count], [Selector]) VALUES (N'en-US', 2, N'(n != 1)')
INSERT [dbo].[PluralFormRules] ([Language], [Count], [Selector]) VALUES (N'fa-IR', 2, N'(n != 1)')
INSERT [dbo].[PluralFormRules] ([Language], [Count], [Selector]) VALUES (N'it-IT', 2, N'(n != 1)')
INSERT [dbo].[PluralFormRules] ([Language], [Count], [Selector]) VALUES (N'pt-PT', 2, N'(n != 1)')
GO
SET IDENTITY_INSERT [dbo].[PluralTranslations] ON 

INSERT [dbo].[PluralTranslations] ([Id], [Index], [Translation], [LocalizationRecordId]) VALUES (1, 0, N'Trovato un elemento', 513)
INSERT [dbo].[PluralTranslations] ([Id], [Index], [Translation], [LocalizationRecordId]) VALUES (2, 1, N'{0} elementi trovati', 513)
INSERT [dbo].[PluralTranslations] ([Id], [Index], [Translation], [LocalizationRecordId]) VALUES (3, 0, N'One item found', 910)
INSERT [dbo].[PluralTranslations] ([Id], [Index], [Translation], [LocalizationRecordId]) VALUES (4, 1, N'{0} items found', 910)
SET IDENTITY_INSERT [dbo].[PluralTranslations] OFF
GO
INSERT [dbo].[TenantInfo] ([Id], [Identifier], [Name], [ConnectionString]) VALUES (N'Master', N'Master', N'Master', NULL)
INSERT [dbo].[TenantInfo] ([Id], [Identifier], [Name], [ConnectionString]) VALUES (N'tenant1', N'tenant1.local', N'Microsoft Inc.', NULL)
INSERT [dbo].[TenantInfo] ([Id], [Identifier], [Name], [ConnectionString]) VALUES (N'tenant2', N'tenant2.local', N'Contoso Corp.', NULL)
GO
INSERT [dbo].[TenantSettings] ([TenantId], [Key], [Value], [Type]) VALUES (N'Master', N'MainConfiguration_Runtime', N'WebAssembly', 0)
GO

SET IDENTITY_INSERT [dbo].[Todos] ON 
INSERT [dbo].[Todos] ([Id], [Title], [IsCompleted], [CreatedOn], [ModifiedOn], [CreatedById], [ModifiedById], [IsDeleted]) VALUES (1, N'Buy 4 oranges', 0, CAST(N'2022-02-17T22:09:51.7859705' AS DateTime2), CAST(N'2022-02-18T02:34:47.6522658' AS DateTime2), N'ad98c87b-3793-4021-2e3d-08d9f2623859', NULL, 0)
INSERT [dbo].[Todos] ([Id], [Title], [IsCompleted], [CreatedOn], [ModifiedOn], [CreatedById], [ModifiedById], [IsDeleted]) VALUES (2, N'Buy 4 apples', 1, CAST(N'2022-02-17T22:09:51.7859705' AS DateTime2), CAST(N'2022-02-18T02:25:28.6328044' AS DateTime2), N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'09165013-a2f1-4142-f9fd-08d9f2616921', 0)
INSERT [dbo].[Todos] ([Id], [Title], [IsCompleted], [CreatedOn], [ModifiedOn], [CreatedById], [ModifiedById], [IsDeleted]) VALUES (3, N'Buy 2 oranges', 1, CAST(N'2022-02-17T22:09:51.7859705' AS DateTime2), CAST(N'2022-02-18T02:25:32.4236276' AS DateTime2), N'09165013-a2f1-4142-f9fd-08d9f2616921', N'09165013-a2f1-4142-f9fd-08d9f2616921', 0)
INSERT [dbo].[Todos] ([Id], [Title], [IsCompleted], [CreatedOn], [ModifiedOn], [CreatedById], [ModifiedById], [IsDeleted]) VALUES (4, N'Buy 2 peaches', 0, CAST(N'2022-02-17T22:09:51.7859705' AS DateTime2), NULL, N'ad98c87b-3793-4021-2e3d-08d9f2623859', NULL, 0)
SET IDENTITY_INSERT [dbo].[Todos] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfiles] ON 

INSERT [dbo].[UserProfiles] ([Id], [UserId], [LastPageVisited], [IsNavOpen], [IsNavMinified], [Count], [LastUpdatedDate], [TenantId]) VALUES (1, N'ad98c87b-3793-4021-2e3d-08d9f2623859', N'/dashboard', 1, 0, 2, CAST(N'2022-02-17T17:09:51.6868942' AS DateTime2), N'Master')
INSERT [dbo].[UserProfiles] ([Id], [UserId], [LastPageVisited], [IsNavOpen], [IsNavMinified], [Count], [LastUpdatedDate], [TenantId]) VALUES (2, N'09165013-a2f1-4142-f9fd-08d9f2616921', N'/', 1, 0, 0, CAST(N'2022-02-17T21:16:32.2486786' AS DateTime2), N'Master')
SET IDENTITY_INSERT [dbo].[UserProfiles] OFF
GO
ALTER TABLE [dbo].[QueuedEmails] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [cfg].[ApiResourceClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiResourceClaims_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [cfg].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiResourceClaims] CHECK CONSTRAINT [FK_ApiResourceClaims_ApiResources_ApiResourceId]
GO
ALTER TABLE [cfg].[ApiResourceProperties]  WITH CHECK ADD  CONSTRAINT [FK_ApiResourceProperties_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [cfg].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiResourceProperties] CHECK CONSTRAINT [FK_ApiResourceProperties_ApiResources_ApiResourceId]
GO
ALTER TABLE [cfg].[ApiResourceScopes]  WITH CHECK ADD  CONSTRAINT [FK_ApiResourceScopes_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [cfg].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiResourceScopes] CHECK CONSTRAINT [FK_ApiResourceScopes_ApiResources_ApiResourceId]
GO
ALTER TABLE [cfg].[ApiResourceSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ApiResourceSecrets_ApiResources_ApiResourceId] FOREIGN KEY([ApiResourceId])
REFERENCES [cfg].[ApiResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiResourceSecrets] CHECK CONSTRAINT [FK_ApiResourceSecrets_ApiResources_ApiResourceId]
GO
ALTER TABLE [cfg].[ApiScopeClaims]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ScopeId] FOREIGN KEY([ScopeId])
REFERENCES [cfg].[ApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiScopeClaims] CHECK CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ScopeId]
GO
ALTER TABLE [cfg].[ApiScopeProperties]  WITH CHECK ADD  CONSTRAINT [FK_ApiScopeProperties_ApiScopes_ScopeId] FOREIGN KEY([ScopeId])
REFERENCES [cfg].[ApiScopes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ApiScopeProperties] CHECK CONSTRAINT [FK_ApiScopeProperties_ApiScopes_ScopeId]
GO
ALTER TABLE [cfg].[ClientClaims]  WITH CHECK ADD  CONSTRAINT [FK_ClientClaims_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientClaims] CHECK CONSTRAINT [FK_ClientClaims_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientCorsOrigins]  WITH CHECK ADD  CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientCorsOrigins] CHECK CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientGrantTypes]  WITH CHECK ADD  CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientGrantTypes] CHECK CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientIdPRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientIdPRestrictions] CHECK CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientPostLogoutRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientPostLogoutRedirectUris] CHECK CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientProperties]  WITH CHECK ADD  CONSTRAINT [FK_ClientProperties_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientProperties] CHECK CONSTRAINT [FK_ClientProperties_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientRedirectUris]  WITH CHECK ADD  CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientRedirectUris] CHECK CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientScopes]  WITH CHECK ADD  CONSTRAINT [FK_ClientScopes_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientScopes] CHECK CONSTRAINT [FK_ClientScopes_Clients_ClientId]
GO
ALTER TABLE [cfg].[ClientSecrets]  WITH CHECK ADD  CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [cfg].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[ClientSecrets] CHECK CONSTRAINT [FK_ClientSecrets_Clients_ClientId]
GO
ALTER TABLE [cfg].[IdentityResourceClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityResourceClaims_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [cfg].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[IdentityResourceClaims] CHECK CONSTRAINT [FK_IdentityResourceClaims_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [cfg].[IdentityResourceProperties]  WITH CHECK ADD  CONSTRAINT [FK_IdentityResourceProperties_IdentityResources_IdentityResourceId] FOREIGN KEY([IdentityResourceId])
REFERENCES [cfg].[IdentityResources] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [cfg].[IdentityResourceProperties] CHECK CONSTRAINT [FK_IdentityResourceProperties_IdentityResources_IdentityResourceId]
GO
ALTER TABLE [dbo].[ApiLogs]  WITH CHECK ADD  CONSTRAINT [FK_ApiLogs_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApiLogs] CHECK CONSTRAINT [FK_ApiLogs_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[PluralTranslations]  WITH CHECK ADD  CONSTRAINT [FK_PluralTranslations_LocalizationRecords_LocalizationRecordId] FOREIGN KEY([LocalizationRecordId])
REFERENCES [dbo].[LocalizationRecords] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PluralTranslations] CHECK CONSTRAINT [FK_PluralTranslations_LocalizationRecords_LocalizationRecordId]
GO
ALTER TABLE [dbo].[Todos]  WITH CHECK ADD  CONSTRAINT [FK_Todos_AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Todos] CHECK CONSTRAINT [FK_Todos_AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[Todos]  WITH CHECK ADD  CONSTRAINT [FK_Todos_AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Todos] CHECK CONSTRAINT [FK_Todos_AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[UserProfiles]  WITH CHECK ADD  CONSTRAINT [FK_UserProfiles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProfiles] CHECK CONSTRAINT [FK_UserProfiles_AspNetUsers_UserId]
GO
