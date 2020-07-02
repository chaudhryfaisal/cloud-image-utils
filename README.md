# cloud-image-utils
# Example usage

```bash
IMG="chaudhryfaisal/cloud-image-utils"
FILE=ubuntu-user-seed-data
cat > $FILE <<EOF
#cloud-config
password: secret_password_here
chpasswd: { expire: False }
ssh_pwauth: True
EOF
docker run --rm -it -w /ws -v $(pwd)/:/ws $IMG $FILE.iso $FILE
```