# Backup

Available arguments for all backups:

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| RUN_IMMEDIATELY       | Indicates whether the backup should run immediately or not            | No       | 0             | 1                                                           |
| BACKUP_CRON           | The cron expression for scheduling the backup job                     | No       | 5 22 * * 0    | 5 22 * * 0                                                  |
| DATE_FMT              | The format for displaying the date in the backup job                  | No       | %Y-%m-%d      | %Y-%m-%d                                                    |
| MAILX_ARGS            | The arguments for the mailx command                                   | No       | N/A           | -r '<email>' -s '<subject>' -S smtp='<smtp address>' -S smtp-use-starttls -S smtp-auth=login -S smtp-auth-user='<smtp user>' -S smtp-auth-password='<smtp pass>' '<email user>' |


## DirToS3

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| AWS_DEFAULT_REGION    | The AWS region where the backup will be stored                        | Yes      | N/A           | eu-west-2                                                   |
| AWS_ACCESS_KEY_ID     | The AWS access key ID for authentication                              | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXX                                        |
| AWS_SECRET_ACCESS_KEY | The AWS secret access key for authentication                          | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                    |
| S3_BUCKET             | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
| DIR_NAME              | The name of the directory to be backed up                             | Yes      | N/A           | my-directory                                                |


## MongoToS3

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| AWS_DEFAULT_REGION    | The AWS region where the backup will be stored                        | Yes      | N/A           | eu-west-2                                                   |
| AWS_ACCESS_KEY_ID     | The AWS access key ID for authentication                              | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXX                                        |
| AWS_SECRET_ACCESS_KEY | The AWS secret access key for authentication                          | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                    |
| S3_BUCKET             | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
| MONGO_URI             | The URI of the MongoDB database to be backed up                       | Yes      | N/A           | mongodb://localhost:27017/mydatabase                        |



## PostgresToS3

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| AWS_DEFAULT_REGION    | The AWS region where the backup will be stored                        | Yes      | N/A           | eu-west-2                                                   |
| AWS_ACCESS_KEY_ID     | The AWS access key ID for authentication                              | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXX                                        |
| AWS_SECRET_ACCESS_KEY | The AWS secret access key for authentication                          | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                    |
| S3_BUCKET             | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
| PGUSER                | The Postgres database username                                        | Yes      | N/A           |                                                             |
| PGPASSWORD            | The Postgres database user password                                   | Yes      | N/A           |                                                             |
| PGHOST                | The Postgres database host                                            | Yes      | N/A           |                                                             |
| PGDBNAME              | The Postgres database name                                            | Yes      | N/A           |                                                             |


## S3ToB2

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| AWS_DEFAULT_REGION    | The AWS region where the backup will be stored                        | Yes      | N/A           | eu-west-2                                                   |
| AWS_ACCESS_KEY_ID     | The AWS access key ID for authentication                              | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXX                                        |
| AWS_SECRET_ACCESS_KEY | The AWS secret access key for authentication                          | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                    |
| S3_BUCKET             | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
| B2_BUCKET             | The name of the Backblaze B2 bucket where the backup will be stored   | Yes      | N/A           | bucket-name                                                 |
| B2_ACCOUNT_ID         | The Backblaze B2 account ID for authentication                        | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXX                                   |
| B2_ACCOUNT_KEY        | The Backblaze B2 account key for authentication                       | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                             |


## S3ToS3

| Name                  | Description                                                           | Required | Default Value | Example                                                     |
|-----------------------|-----------------------------------------------------------------------|----------|---------------|-------------------------------------------------------------|
| AWS_DEFAULT_REGION    | The AWS region where the backup will be stored                        | Yes      | N/A           | eu-west-2                                                   |
| AWS_ACCESS_KEY_ID     | The AWS access key ID for authentication                              | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXX                                        |
| AWS_SECRET_ACCESS_KEY | The AWS secret access key for authentication                          | Yes      | N/A           | XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                    |
| SRC_BUCKET            | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
| DEST_BUCKET           | The name of the S3 bucket where the backup will be stored             | Yes      | N/A           | bucket-name                                                 |
