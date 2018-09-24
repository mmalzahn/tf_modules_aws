# Terraform Modul für das Anlegen eines EFS Speichers

## Einbinden in ein Projekt

---

```HCL
module "<modulname>" {
  source = "github.com/mmalzahn/tf_module_efs.git"
  projectId = "<uni ID>"
  subnet_ids = "<List of SubnetIDs>"
  vpc_id = "<VPC ID>"
}
```

### Inputs

---

|Inputname|Type|Beschreibung|
|---|---|---|
|**projectId:** |[string]| eindeutige ID|
|**subnet_ids:** |[list]|List of Subnet IDs for the Endpoints|
|**vpc_id:** |[string]| VPC ID|
|**tags:** |[map]| MAP mit Tags für die Resourcen|

---
---

### Outputs

---

|Inputname|Type|Beschreibung|
|---|---|---|
|**efs_filesystem_id:** |[string]| EFS Filesystem ID|
|**efs_filesystem_dns:** |[string]| EFS Filesystem DNS|
|**efs_target_id:** |[list]| EFS Target IDs|
|**efs_target_dns:** |[list]| EFS Target DNS names|
|**efs_target_network_interface_id:** |[list]| EFS Target Network Interface IDs|
|**efs_sg_id:** |[string]| EFS Security Group ID|
|**efs_sg_arn:** |[string]| EFS Security Group ARN|

## To Do

---

- [ ] Task1
- [ ] Task2

## Known Problems

---
