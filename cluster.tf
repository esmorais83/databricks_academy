resource "databricks_cluster" "mycluster" {
    num_workers = 0
    cluster_name = "mycluster_tfc"
    idempotency_token = "mycluster_tfc"
    spark_version = "11.3.x-cpu-ml-scala2.12"
    node_type_id = "i3.xlarge"
    autotermination_minutes = 30
    data_security_mode = "SINGLE_USER"
}
