data "google_dns_managed_zone" "main" {
  name = "alexhayward"
}


resource "google_dns_record_set" "ns1" {
  managed_zone = data.google_dns_managed_zone.main.name
  name    = "ipa.${data.google_dns_managed_zone.main.dns_name}"
  type    = "NS"
  ttl     = 1800

  rrdatas = ["ns1.digitalocean.com.", "ns2.digitalocean.com.","ns3.digitalocean.com." ]
  
}



