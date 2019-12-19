output "conn_strings" {
   value = ["${oci_database_autonomous_database.atp_db.connection_strings}"]
}

output "conn_urls" {
   value = ["${oci_database_autonomous_database.atp_db.connection_urls}"]
}


resource "local_file" "conn_string_file" {
   content = "#!/bin/bash\nexport ATP_CONN_STRING=${lookup(oci_database_autonomous_database.atp_db.connection_strings[0],"medium")}\nexport ATP_OCID=${oci_database_autonomous_database.atp_db.id}"
    filename = "./scripts/atp_env.sh"
}


