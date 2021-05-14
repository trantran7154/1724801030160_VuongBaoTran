//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CodeShare.Model.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class News
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public News()
        {
            this.Comments = new HashSet<Comment>();
            this.Groups = new HashSet<Group>();
        }
    
        public int news_id { get; set; }
        public string news_name { get; set; }
        public Nullable<int> news_view { get; set; }
        public string news_content { get; set; }
        public string news_tag { get; set; }
        public Nullable<int> user_id { get; set; }
        public Nullable<System.DateTime> news_datecreate { get; set; }
        public Nullable<System.DateTime> news_dateupdate { get; set; }
        public Nullable<int> news_active { get; set; }
        public Nullable<bool> news_option { get; set; }
        public Nullable<bool> news_del { get; set; }
        public string news_img { get; set; }
        public string news_key { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Group> Groups { get; set; }
        public virtual User User { get; set; }
    }
}