#! Change these values
ssh_key_names       = [""] # Example: ["first_key_name", "second_key_name"]
droplet_name        = "" # Name that will be displayed in control panel
size                = "" # Reference below
docker_image        = "" # Example: registry.digitalocean.com/<registry>/<image>:<version>
docker_run_flags    = "" # -d flag is included by default

# Think before changing
region          = "fra1" # Reference below
os_image        = "ubuntu-21-04-x64"


# Sizes:
# s-1vcpu-1gb
# s-2vcpu-2gb
# s-2vcpu-4gb
# s-4vcpu-8gb
# s-6vcpu-16gb
# s-8vcpu-32gb
# s-16vcpu-64gb
# s-24vcpu-128gb
# s-32vcpu-192gb

# Regions:
# nyc1	New York City, United States	
# nyc2	New York City, United States	
# nyc3	New York City, United States
# ams2	Amsterdam, the Netherlands
# ams3	Amsterdam, the Netherlands
# sfo1	San Francisco, United States
# sfo2	San Francisco, United States
# sfo3	San Francisco, United States
# sgp1	Singapore
# lon1	London, United Kingdoml
# fra1	Frankfurt, Germany
# tor1	Toronto, Canada
# blr1	Bangalore, India