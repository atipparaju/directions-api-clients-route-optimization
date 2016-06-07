using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model
{

    /// <summary>
    /// 
    /// </summary>
    [DataContract]
    public class Service :  IEquatable<Service>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Service" /> class.
        /// </summary>
        public Service()
        {
            
        }

        
        /// <summary>
        /// Unique identifier of service
        /// </summary>
        /// <value>Unique identifier of service</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }
  
        
        /// <summary>
        /// type of service
        /// </summary>
        /// <value>type of service</value>
        [DataMember(Name="type", EmitDefaultValue=false)]
        public string Type { get; set; }
  
        
        /// <summary>
        /// priority of service, i.e. 1 = high, 2 = normal, 3 = low. default is 2.
        /// </summary>
        /// <value>priority of service, i.e. 1 = high, 2 = normal, 3 = low. default is 2.</value>
        [DataMember(Name="priority", EmitDefaultValue=false)]
        public int? Priority { get; set; }
  
        
        /// <summary>
        /// name of service
        /// </summary>
        /// <value>name of service</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }
  
        
        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name="address", EmitDefaultValue=false)]
        public Address Address { get; set; }
  
        
        /// <summary>
        /// duration of service, i.e. time in ms the corresponding activity takes
        /// </summary>
        /// <value>duration of service, i.e. time in ms the corresponding activity takes</value>
        [DataMember(Name="duration", EmitDefaultValue=false)]
        public long? Duration { get; set; }
  
        
        /// <summary>
        /// array of time windows. currently, only a single time window is allowed
        /// </summary>
        /// <value>array of time windows. currently, only a single time window is allowed</value>
        [DataMember(Name="time_windows", EmitDefaultValue=false)]
        public List<TimeWindow> TimeWindows { get; set; }
  
        
        /// <summary>
        /// array of capacity dimensions
        /// </summary>
        /// <value>array of capacity dimensions</value>
        [DataMember(Name="size", EmitDefaultValue=false)]
        public List<int?> Size { get; set; }
  
        
        /// <summary>
        /// array of required skills
        /// </summary>
        /// <value>array of required skills</value>
        [DataMember(Name="required_skills", EmitDefaultValue=false)]
        public List<string> RequiredSkills { get; set; }
  
        
        /// <summary>
        /// array of allowed vehicle ids
        /// </summary>
        /// <value>array of allowed vehicle ids</value>
        [DataMember(Name="allowed_vehicles", EmitDefaultValue=false)]
        public List<string> AllowedVehicles { get; set; }
  
        
  
        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Service {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  Priority: ").Append(Priority).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Address: ").Append(Address).Append("\n");
            sb.Append("  Duration: ").Append(Duration).Append("\n");
            sb.Append("  TimeWindows: ").Append(TimeWindows).Append("\n");
            sb.Append("  Size: ").Append(Size).Append("\n");
            sb.Append("  RequiredSkills: ").Append(RequiredSkills).Append("\n");
            sb.Append("  AllowedVehicles: ").Append(AllowedVehicles).Append("\n");
            
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as Service);
        }

        /// <summary>
        /// Returns true if Service instances are equal
        /// </summary>
        /// <param name="obj">Instance of Service to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Service other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Id == other.Id ||
                    this.Id != null &&
                    this.Id.Equals(other.Id)
                ) && 
                (
                    this.Type == other.Type ||
                    this.Type != null &&
                    this.Type.Equals(other.Type)
                ) && 
                (
                    this.Priority == other.Priority ||
                    this.Priority != null &&
                    this.Priority.Equals(other.Priority)
                ) && 
                (
                    this.Name == other.Name ||
                    this.Name != null &&
                    this.Name.Equals(other.Name)
                ) && 
                (
                    this.Address == other.Address ||
                    this.Address != null &&
                    this.Address.Equals(other.Address)
                ) && 
                (
                    this.Duration == other.Duration ||
                    this.Duration != null &&
                    this.Duration.Equals(other.Duration)
                ) && 
                (
                    this.TimeWindows == other.TimeWindows ||
                    this.TimeWindows != null &&
                    this.TimeWindows.SequenceEqual(other.TimeWindows)
                ) && 
                (
                    this.Size == other.Size ||
                    this.Size != null &&
                    this.Size.SequenceEqual(other.Size)
                ) && 
                (
                    this.RequiredSkills == other.RequiredSkills ||
                    this.RequiredSkills != null &&
                    this.RequiredSkills.SequenceEqual(other.RequiredSkills)
                ) && 
                (
                    this.AllowedVehicles == other.AllowedVehicles ||
                    this.AllowedVehicles != null &&
                    this.AllowedVehicles.SequenceEqual(other.AllowedVehicles)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                
                if (this.Id != null)
                    hash = hash * 57 + this.Id.GetHashCode();
                
                if (this.Type != null)
                    hash = hash * 57 + this.Type.GetHashCode();
                
                if (this.Priority != null)
                    hash = hash * 57 + this.Priority.GetHashCode();
                
                if (this.Name != null)
                    hash = hash * 57 + this.Name.GetHashCode();
                
                if (this.Address != null)
                    hash = hash * 57 + this.Address.GetHashCode();
                
                if (this.Duration != null)
                    hash = hash * 57 + this.Duration.GetHashCode();
                
                if (this.TimeWindows != null)
                    hash = hash * 57 + this.TimeWindows.GetHashCode();
                
                if (this.Size != null)
                    hash = hash * 57 + this.Size.GetHashCode();
                
                if (this.RequiredSkills != null)
                    hash = hash * 57 + this.RequiredSkills.GetHashCode();
                
                if (this.AllowedVehicles != null)
                    hash = hash * 57 + this.AllowedVehicles.GetHashCode();
                
                return hash;
            }
        }

    }
}
