﻿//SSDCPortal Code Generated from AdminController.tt
using AutoMapper;
using BlazorBoilerplate.Infrastructure.Server;
using BlazorBoilerplate.Infrastructure.Server.Models;
using BlazorBoilerplate.Infrastructure.Storage.Permissions;
using BlazorBoilerplate.Shared.Dto.Admin;
using Finbuckle.MultiTenant;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NSwag.Annotations;
using System.Threading.Tasks;
using static Microsoft.AspNetCore.Http.StatusCodes;

namespace BlazorBoilerplate.Server.Controllers
{
    /// <summary>
    /// This controller is the entry API for the platform administration.
    /// </summary>
    //[OpenApiIgnore]
    [Route("api/[controller]")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private readonly IMapper _autoMapper;
        private readonly IAdminManager _adminManager;

        public AdminController(IMapper autoMapper, IAdminManager adminManager)
        {
            _autoMapper = autoMapper;
            _adminManager = adminManager;
        }

        [HttpGet("Tenant")]
        public ApiResponse Get() => new ApiResponse(Status200OK, string.Empty,  _autoMapper.Map<TenantDto>(HttpContext.GetMultiTenantContext<TenantInfo>().TenantInfo));

        [HttpGet("Users")]
        [Authorize(Permissions.User.Read)]
        public async Task<ApiResponse> GetUsers([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0) => await _adminManager.GetUsers(pageSize, pageNumber);

        [HttpGet("Permissions")]
        [Authorize]
        public ApiResponse GetPermissions() => _adminManager.GetPermissions();

        #region Roles
        [HttpGet("Roles")]
        [Authorize(Permissions.Role.Read)]
        public async Task<ApiResponse> GetRoles([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0) => await _adminManager.GetRolesAsync(pageSize, pageNumber);

        [HttpGet("Role/{name}")]
        [Authorize]
        public async Task<ApiResponse> GetRoleAsync(string name) => await _adminManager.GetRoleAsync(name);

        
        [HttpPost("Role")]
        [Authorize(Permissions.Role.Create)]
        public async Task<ApiResponse> CreateRoleAsync([FromBody] RoleDto roleDto) => await _adminManager.CreateRoleAsync(roleDto);

        
        [HttpPut("Role")]
        [Authorize(Permissions.Role.Update)]
        public async Task<ApiResponse> UpdateRoleAsync([FromBody] RoleDto roleDto) => await _adminManager.UpdateRoleAsync(roleDto);

        
        [HttpDelete("Role/{name}")]
        [Authorize(Permissions.Role.Delete)]
        public async Task<ApiResponse> DeleteRoleAsync(string name) => await _adminManager.DeleteRoleAsync(name);
        #endregion

        #region Clients
        [HttpGet("Clients")]
        [Authorize(Permissions.Client.Read)]
        public async Task<ApiResponse> GetClients([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0) => await _adminManager.GetClientsAsync(pageSize, pageNumber);

        [HttpGet("Client/{clientId}")]
        [Authorize]
        public async Task<ApiResponse> GetClientAsync(string clientId) => await _adminManager.GetClientAsync(clientId);

        
        [HttpPost("Client")]
        [Authorize(Permissions.Client.Create)]
        public async Task<ApiResponse> CreateClientAsync([FromBody] ClientDto clientDto) => await _adminManager.CreateClientAsync(clientDto);

        
        [HttpPut("Client")]
        [Authorize(Permissions.Client.Update)]
        public async Task<ApiResponse> UpdateClientAsync([FromBody] ClientDto clientDto) => await _adminManager.UpdateClientAsync(clientDto);

        
        [HttpDelete("Client/{clientId}")]
        [Authorize(Permissions.Client.Delete)]
        public async Task<ApiResponse> DeleteClientAsync(string clientId) => await _adminManager.DeleteClientAsync(clientId);
        #endregion

        #region ApiResources
        [HttpGet("ApiResources")]
        [Authorize(Permissions.ApiResource.Read)]
        public async Task<ApiResponse> GetApiResources([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0) => await _adminManager.GetApiResourcesAsync(pageSize, pageNumber);

        [HttpGet("ApiResource/{name}")]
        [Authorize]
        public async Task<ApiResponse> GetApiResourceAsync(string name) => await _adminManager.GetApiResourceAsync(name);

        
        [HttpPost("ApiResource")]
        [Authorize(Permissions.ApiResource.Create)]
        public async Task<ApiResponse> CreateApiResourceAsync([FromBody] ApiResourceDto apiResourceDto) => await _adminManager.CreateApiResourceAsync(apiResourceDto);

        
        [HttpPut("ApiResource")]
        [Authorize(Permissions.ApiResource.Update)]
        public async Task<ApiResponse> UpdateApiResourceAsync([FromBody] ApiResourceDto apiResourceDto) => await _adminManager.UpdateApiResourceAsync(apiResourceDto);

        
        [HttpDelete("ApiResource/{name}")]
        [Authorize(Permissions.ApiResource.Delete)]
        public async Task<ApiResponse> DeleteApiResourceAsync(string name) => await _adminManager.DeleteApiResourceAsync(name);
        #endregion

        #region IdentityResources
        [HttpGet("IdentityResources")]
        [Authorize(Permissions.IdentityResource.Read)]
        public async Task<ApiResponse> GetIdentityResources([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0)
            => await _adminManager.GetIdentityResourcesAsync(pageSize, pageNumber);

        [HttpGet("IdentityResource/{name}")]
        [Authorize]
        public async Task<ApiResponse> GetIdentityResourceAsync(string name)
            => await _adminManager.GetIdentityResourceAsync(name);

        
        [HttpPost("IdentityResource")]
        [Authorize(Permissions.IdentityResource.Create)]
        public async Task<ApiResponse> CreateIdentityResourceAsync([FromBody] IdentityResourceDto identityResourceDto)
            => await _adminManager.CreateIdentityResourceAsync(identityResourceDto);

        
        [HttpPut("IdentityResource")]
        [Authorize(Permissions.IdentityResource.Update)]
        public async Task<ApiResponse> UpdateIdentityResourceAsync([FromBody] IdentityResourceDto identityResourceDto)
            => await _adminManager.UpdateIdentityResourceAsync(identityResourceDto);

        
        [HttpDelete("IdentityResource/{name}")]
        [Authorize(Permissions.IdentityResource.Delete)]
        public async Task<ApiResponse> DeleteIdentityResourceAsync(string name)
            => await _adminManager.DeleteIdentityResourceAsync(name);
        #endregion

        #region Tenants
        [HttpGet("Tenants")]
        [Authorize(Permissions.Tenant.Read)]
        public async Task<ApiResponse> GetTenants([FromQuery] int pageSize = 10, [FromQuery] int pageNumber = 0) => await _adminManager.GetTenantsAsync(pageSize, pageNumber);

        [HttpGet("Tenant/{id}")]
        [Authorize]
        public async Task<ApiResponse> GetTenantAsync(string id) => await _adminManager.GetTenantAsync(id);

        
        [HttpPost("Tenant")]
        [Authorize(Permissions.Tenant.Create)]
        public async Task<ApiResponse> CreateTenantAsync([FromBody] TenantDto tenantDto) => await _adminManager.CreateTenantAsync(tenantDto);

        
        [HttpPut("Tenant")]
        [Authorize(Permissions.Tenant.Update)]
        public async Task<ApiResponse> UpdateTenantAsync([FromBody] TenantDto tenantDto) => await _adminManager.UpdateTenantAsync(tenantDto);

        
        [HttpDelete("Tenant/{id}")]
        [Authorize(Permissions.Tenant.Delete)]
        public async Task<ApiResponse> DeleteTenantAsync(string id) => await _adminManager.DeleteTenantAsync(id);
        #endregion
    }
}
