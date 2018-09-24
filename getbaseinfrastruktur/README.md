# Terraform Modul für die Bereitstellung von Daten aus dem Backend

## Funktion & Anwendung

Auslesen und standartiesierte Bereitstellung der Backenddaten über ein Modul

## Einbinden in ein Projekt

---

```HCL
module "<modulname>" {
  source = "github.com/mmalzahn/tf_module_getbaseinfrastruktur.git"
  key_name = "<keyname>"
  key_path = "<path for keyfiles>"
}
```

### Inputs

---

|Inputname|Type|Beschreibung|
|---|---|---|
|**remote_state_bucket_region:** |[string]| AWS Region des Buckets|
|**remote_state_bucket:** |[string]|Bucketname|
|**remote_state_key:** |[string]| Key (Name) des Statefiles|

---
---

### Outputs

---

|Outputname|Type|Beschreibung|
|---|---|---|


## To Do

---

- [ ] Task1
- [ ] Task2

## Known Problems

---
