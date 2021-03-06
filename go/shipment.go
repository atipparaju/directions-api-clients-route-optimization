/* 
 * Route Optimization API
 *
 * Our Route Optimization API solves the so called vehicle routing problem fast. It calculates an optimal tour for a set of vehicles, services and constraints
 *
 * OpenAPI spec version: 1.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

package graphhopper

type Shipment struct {

	// Unique identifier of service
	Id string `json:"id,omitempty"`

	// name of shipment
	Name string `json:"name,omitempty"`

	// priority of service, i.e. 1 = high, 2 = normal, 3 = low. default is 2.
	Priority int32 `json:"priority,omitempty"`

	Pickup Stop `json:"pickup,omitempty"`

	Delivery Stop `json:"delivery,omitempty"`

	// array of capacity dimensions
	Size []int32 `json:"size,omitempty"`

	// array of required skills
	RequiredSkills []string `json:"required_skills,omitempty"`

	// array of allowed vehicle ids
	AllowedVehicles []string `json:"allowed_vehicles,omitempty"`
}
