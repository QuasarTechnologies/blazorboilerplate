using Breeze.Sharp;
using System;

namespace BlazorBoilerplate.Shared.Dto.Db
{
    public partial class IdentityUserRole : BaseEntity
    {
        public Guid UserId { get; set; }
        public Guid RoleIdc { get; set; }
        public String Discriminator { get; set; }
        public String TenantId { get; set; }
   }
}
