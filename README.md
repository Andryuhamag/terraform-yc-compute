## Terraform модуль для создания `compute instance` в `Yandex Cloud`

Входные памаретры модуля:

| Название параметра | Тип           | Описание                          | Значение по умолчанию                   |
|--------------------|---------------|-----------------------------------|-----------------------------------------|
| `zone`             | `string`      | Зона доступности                  | "ru-central1-a"                         |
| `name`             | `string`      | Имя сервера в `YC`                | "instance"                              |
| `hostname`         | `string`      | Внутреннее имя сервера            | "instance"                              |
| `platform_id`      | `string`      | Платформа сервера                 | "standard-v1"                           |
| `labels`           | `map(string)` | Метки сервера                     | name = "instance", environment = "test" |
| `cores`            | `number`      | Количество vCPU                   | 2                                       |
| `core_fraction`    | `number`      | Гарантированная доля vCPU (%)     | 20                                      |
| `memory`           | `number`      | Количество RAM                    | 2                                       |
| `imade_id`         | `string`      | ID образа для сервера             | Нет                                     |
| `disk_type`        | `string`      | Тип диска                         | "network-hdd"                           |
| `disk_size`        | `number`      | Размер диска                      | 20                                      |
| `subnet_id`        | `string`      | ID подсети                        | Нет                                     |
| `sg_id`            | `string`      | ID группы безопасности            | Нет                                     |
| `nat`              | `bool`        | Публичный адрес                   | false                                   |
| `user-data`        | `string`      | Параметры настройки пользователей | Нет                                     |

Пример использования:

```
...
variable "instance_labels" {
  description = "A set of key/value label pairs of the instance"
  type        = map(string)
  default = {
    name        = "example-instance"
    environment = "production"
    group       = "group-1"
  }
}
...
module "example-instance" {
  source        = "git@github.com:Andryuhamag/terraform-yc-compute.git"
  zone          = "ru-central1-a"
  name          = "example-instance-1"
  hostname      = "example-instance-1"
  platform_id   = "standard-v1"
  labels        = var.instance_labels
  cores         = 2
  core_fraction = 20
  memory        = 2
  imade_id      = "fd88bokmvjups3o0uqes" # family_id: ubuntu-2204-lts
  disk_size     = 40
  subnet_id     = "<Existing subnet ID>"
  sg_id         = "<Existing security group ID>"
  nat           = true
  user-data     = file("./cloud-config.yaml")
}
```