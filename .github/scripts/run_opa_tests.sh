opa test ./terraform/allowed_providers -v
opa test ./terraform/aws/allowed_regions -v
opa test ./terraform/aws/allowed_resource_types -v
opa test ./terraform/aws/prohibited_instance_types -v
opa test ./terraform/aws/only_private_S3_buckets -v
opa test ./terraform/azure/allowed_locations -v
opa test ./terraform/azure/allowed_resource_types -v
opa test ./terraform/azure/prohibited_vm_sizes -v
opa test ./terraform/azure/only_private_blob_storage -v

# TODO: Remove the those commands after Torque sync and old folders deletion 
opa test ./terraform/allowed_regions -v
opa test ./terraform/allowed_resource_types -v
opa test ./terraform/aws_prohibited_instance_types -v
opa test ./terraform/only_private_S3_buckets -v