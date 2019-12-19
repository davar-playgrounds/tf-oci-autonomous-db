resource "oci_database_autonomous_database" "atp_db" {
    display_name = "atp-db"
    admin_password = "${var.atp_admin_password}"
    compartment_id = "${var.oci_compartment_ocid}"
    cpu_core_count = "1"
    data_storage_size_in_tbs = "1"
    db_name = "atpdb"

    db_workload = "OLTP"
    is_auto_scaling_enabled = false
    is_dedicated = false
    is_free_tier = false
}



