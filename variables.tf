variable "oci_tenancy_ocid" {}
variable "oci_user_ocid" {}
variable "oci_fingerprint" {}
variable "oci_private_key_path" {}
variable "oci_compartment_ocid" {}
variable "oci_region" {}

variable "ssh_public_key" {}
variable "atp_admin_password" {}

variable "oci_test_image" {
  default = "ocid1.image.oc1.iad.aaaaaaaa5qjfahpwztfurnuun23vlu7o5tiiijyjkrsfbtf4cgcdo4z5gena"
}
