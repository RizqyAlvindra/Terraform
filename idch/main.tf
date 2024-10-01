terraform {
  required_providers {
    idcloudhost = {
      version = "0.1.0"
      source  = "bapung/idcloudhost"
    }
  }
}

provider "idcloudhost" {
    auth_token = "kbWtbKEi8ZzNaQV6vYsiYKGocNXPKh2T"
}

resource "idcloudhost_vm" "testvm" {
    name = "testvm"
    os_name = "ubuntu"
    os_version= "20.04"
    disks = 20
    vcpu = 1
    memory = 1024
    username = "dummy"
    initial_password = "Sembarang1"
    billing_account_id = 1200157626
    backup = false
}

resource "idcloudhost_floating_ip" "testip" {
    name = "my_test_ip"
    billing_account_id = 1200157626
}
