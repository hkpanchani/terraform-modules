# availability_zone    = "ap-south-1"
allocated_storage    = "15"
engine               = "mysql"
engine_version       = "8.0"
instance_class       = "db.t3.micro"
name                 = "Fantasy"
username             = "admin"
password             = "admin123"
parameter_group_name = "default.mysql8.0"
apply_immediately    = true
identifier           = "fantasy"
# max_allocated_storage = 4500                       # Enter the value if you want to enable storage autoscaling Value must be Minimum 21 GiB and Maximum 65,536 GiB
# iops = 80000                                     #  Enter the value if you want to go for IOPs based storage class
# multi_az = false                                  # enter value of value of multi az deployment default is false.
# publicly_accessible = false                        # enter the value if you want your DB to publicly accessible. Defaults is false
# port = 3307                                         # enter the port of your DB. Defaults is 3306
copy_tags_to_snapshot = true                           #Copy all Instance tags to snapshots. Default is true
performance_insights_enabled = false
monitoring_interval = 5                             #To disable enter value = 0, Valid Values: 0, 1, 5, 10, 15, 30, 60.
log_export = true
enabled_cloudwatch_logs_exports = {}
enabled_cloudwatch_logs_exports_mysql_mariaDB = ["audit", "error", "general", "slowquery"]
backup_retention_period = "4"
auto_minor_version_upgrade = true 
# deletion_protection = true                     # default is true and set to false