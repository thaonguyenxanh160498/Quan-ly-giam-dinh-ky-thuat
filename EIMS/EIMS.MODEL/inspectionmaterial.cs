//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EIMS.MODEL
{
    using System;
    using System.Collections.Generic;
    
    public partial class inspectionmaterial
    {
        public string code { get; set; }
        public string evidencecode { get; set; }
        public string materialcode { get; set; }
        public string note { get; set; }
        public string edituser { get; set; }
        public Nullable<System.DateTime> edittime { get; set; }
        public Nullable<short> @lock { get; set; }
        public Nullable<System.DateTime> lockdate { get; set; }
        public string whois { get; set; }
        public string quantitycode { get; set; }
        public Nullable<decimal> amount { get; set; }
        public Nullable<System.DateTime> pickupdate { get; set; }
        public string staffcode { get; set; }
    }
}
