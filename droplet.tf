data "digitalocean_ssh_key" "keys" {
    for_each = toset(var.ssh_key_names)
    name = each.value
}

resource "digitalocean_droplet" "server" {
    image   = "${var.os_image}"
    name    = "${var.droplet_name}"
    region  = "${var.region}"
    size    = "${var.size}"
    user_data = templatefile("cloud-init.sh.tpl", {
        token = "${var.token}",
        docker_image = "${var.docker_image}",
        docker_run_flags = "${var.docker_run_flags}"
    })
    ssh_keys = [for value in data.digitalocean_ssh_key.keys: value.id]
}

output "IPv4_address" {
    value = digitalocean_droplet.server.ipv4_address
}
output "droplet_name" {
    value = digitalocean_droplet.server.name
}
output "image" {
    value = digitalocean_droplet.server.image
}
output "region" {
    value = digitalocean_droplet.server.region
}
output "size" {
    value = digitalocean_droplet.server.size
}
output "hourly_price" {
    value = digitalocean_droplet.server.price_hourly
}
