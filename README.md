# awsbasics

Connect EC2 in 3 ways
1. UI -> Connect
2. Terminal

chmod 600 /path/to/pemfile.pem
ssh -i /path/to/pemfile.pem instance_name@instance.public.ip.address

3. CLI

   create instance
   
aws ec2 run-instances \
  --image-id ami-0c7217cdde317cfec \
  --instance-type t2.micro \
  --key-name key2 \
  --subnet-id subnet-04c4116a0e8216182 \
  --security-group-ids sg-06d11fbaf5660af9b \
  --region us-east-1
  --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=cliinstance}]'

connecr via ssh
