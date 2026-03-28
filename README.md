# Web Sport Rental System (Terraform)

---

## Step by Step สำหรับอาจารย์

### การติดตั้ง:

* Terraform CLI
* AWS CLI

---

## 1. สร้าง AWS Security Credentials

1. เข้า AWS Console
2. คลิกชื่อ Account (มุมขวาบน) → **My Security Credentials**
3. ไปที่ **Access Keys**
4. กด **Create Access Key**
5. ดาวน์โหลดไฟล์ `.csv`

เก็บ:

* Access Key
* Secret Key

---

## 2. ตั้งค่า AWS CLI

เปิด Floder เสร็จแล้ว เปิด Terminal แล้วรัน:

```bash
aws configure
```
กรอกข้อมูลจากไฟล์ `.csv` ที่ดาวน์โหลดมา:

* AWS Access Key
* AWS Secret Key
* Region (เช่น `ap-southeast-1`)
* Output format: `json`

---

## 3. สร้าง Key Pair

1. ไปที่ AWS → EC2 → Key Pairs
2. กด **Create Key Pair**
3. ตั้งชื่อ เช่น:

```text
example-key
```

4. ดาวน์โหลดไฟล์ `.pem`

---

## 4. เตรียม Terraform Project

สร้างไฟล์:

```bash
main.tf
variables.tf
output.tf
```
หลังจากนั้นนำโค้ดจากตัวอย่างใน GitHub Repository มาใส่ในแต่ละไฟล์ตามลำดับ
---

##  6. อธิบายโครงสร้าง

###  variables.tf

ใช้กำหนดค่าต่าง ๆ เช่น:

*
* region
* instance type
* instance name
* key pair 
* ในส่วนของ key pair ให้ใส่ชื่อที่ตรงกับที่สร้างใน AWS (เช่น `example-key`)

---

###  main.tf

กำหนด:

* AWS Provider
* Security Group (เปิด port 22, 80)
* EC2 Instance
* ติดตั้ง Apache, PHP, MySQL
* Clone โปรเจคจาก GitHub
* Import Database

---

### 🔹 output.tf

ใช้แสดง:

* Public IP
* URL สำหรับเข้าใช้งานเว็บ

---

## 7. Deploy ด้วย Terraform

ไปที่โฟลเดอร์โปรเจค แล้วรัน:

```bash
terraform init
```

---

```bash
terraform plan
```

---

```bash
terraform apply
```

พิมพ์:

```bash
yes
```

---

## 8. เข้าใช้งานระบบ

หลังจาก deploy สำเร็จ:

```bash
terraform output
```

จะได้ Public IP

---

เปิดใน browser:

```bash
http://<public-ip>
```

---

## 10. ลบ Infrastructure

```bash
terraform destroy
```

พิมพ์:

```bash
yes
```
