######################################################################################################
# State removed from ses for audit.lingrino.com
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_domain_dkim.ses'
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_domain_identity.ses'
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_domain_identity_verification.ses'
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_domain_mail_from.ses'
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_identity_notification_topic.topics["Bounce"]'
# tfs rm 'module.ses_audit_lingrino_com.aws_ses_identity_notification_topic.topics["Complaint"]'
######################################################################################################

######################################################################################################
# Tailscale dns names to recreate
# locals {
#   hostnames_pi = [
#     "pi.lingrino.dev",
#     "home.lingrino.dev",
#   ]
#   hostnames_adguard = [
#     "ad.lingrino.dev",
#     "adg.lingrino.dev",
#     "adguard.lingrino.dev",
#   ]
#   hostnames_traefik = [
#     "lb.lingrino.dev",
#     "traefik.lingrino.dev",
#   ]
#   hostnames_cockpit = [
#     "cp.lingrino.dev",
#     "cockpit.lingrino.dev",
#   ]
# }

# data "aws_route53_zone" "lingrino_dev" {
#   name = "lingrino.dev"
# }

# # Hostnames for tailscale devices
# resource "aws_route53_record" "pi_lingrino_dev" {
#   for_each = toset(concat(local.hostnames_pi, local.hostnames_adguard, local.hostnames_traefik, local.hostnames_cockpit))

#   zone_id = data.aws_route53_zone.lingrino_dev.zone_id
#   name    = each.key
#   type    = "A"
#   ttl     = 300
#   records = ["100.106.105.28"]
# }

# resource "aws_route53_record" "phone_lingrino_dev" {
#   zone_id = data.aws_route53_zone.lingrino_dev.zone_id
#   name    = "phone.lingrino.dev."
#   type    = "A"
#   ttl     = 300
#   records = ["100.100.225.57"]
# }

# resource "aws_route53_record" "ipad_lingrino_dev" {
#   zone_id = data.aws_route53_zone.lingrino_dev.zone_id
#   name    = "ipad.lingrino.dev."
#   type    = "A"
#   ttl     = 300
#   records = ["100.127.107.107"]
# }

# resource "aws_route53_record" "work_lingrino_dev" {
#   zone_id = data.aws_route53_zone.lingrino_dev.zone_id
#   name    = "work.lingrino.dev."
#   type    = "A"
#   ttl     = 300
#   records = ["100.92.251.90"]
# }

# resource "aws_route53_record" "bastion_lingrino_dev" {
#   zone_id = data.aws_route53_zone.lingrino_dev.zone_id
#   name    = "bastion.lingrino.dev."
#   type    = "A"
#   ttl     = 300
#   records = ["100.89.178.71"]
# }
######################################################################################################