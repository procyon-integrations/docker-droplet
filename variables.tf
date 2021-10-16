variable "size" {
    type = string
}

variable "os_image" {
    type = string
}

variable "droplet_name" {
    type = string
}

variable "region" {
    type = string
}

variable "ssh_key_names" {
    type = list
}

variable "token" {
    type = string
}

variable "docker_image" {
    type = string
}

variable "docker_run_flags" {
    type = string
}