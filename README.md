# TicketBox Backend 🎟️

<p align="center">
  <img src="https://nestjs.com/img/logo-small.svg" width="120" alt="NestJS Logo" />
  <img src="https://www.mysql.com/common/logos/logo-mysql-170x115.png" width="120" alt="MySQL Logo" />
  <img src="https://jwt.io/img/logo.svg" width="120" alt="JWT Logo" />
</p>

<p align="center">
  <b>TicketBox Backend</b> — REST API cho hệ thống quản lý sự kiện và bán vé
</p>

<p align="center">
  <img src="https://img.shields.io/badge/build-passing-brightgreen" alt="Build Status" />
  <img src="https://img.shields.io/badge/license-MIT-blue" alt="License" />
  <img src="https://img.shields.io/badge/node-%3E%3D16-orange?logo=node.js" alt="NodeJS" />
  <img src="https://img.shields.io/badge/nestjs-9.0-red?logo=nestjs" alt="NestJS" />
</p>

---

## Description

TicketBox Backend cung cấp API cho hệ thống quản lý sự kiện và bán vé.  
Được xây dựng bằng **NestJS** + **TypeORM** + **MySQL/TiDB Cloud**, hỗ trợ đầy đủ các chức năng cần thiết cho một ứng dụng ticketing.

---

## Features

- [x] **Events Management**: tạo, chỉnh sửa, xóa sự kiện.
- [x] **Organizer Module**: quản lý nhà tổ chức, logo, thông tin liên hệ.
- [x] **Ticket Booking**: đặt vé, quản lý đơn hàng, chi tiết vé.
- [x] **User Authentication**: đăng ký, đăng nhập, JWT tokens.
- [x] **Roles & Permissions**: phân quyền Admin/User.
- [x] **File Uploads**: upload nhiều loại ảnh (sự kiện, nhà tổ chức, logo).
- [x] **Swagger API Docs**: tài liệu API tự động.
- [x] **Database**: MySQL/TiDB Cloud với SSL.
- [x] **CI/CD**: Deploy trên Render.

---

## Tech Stack

- **Backend**: NestJS, TypeORM  
- **Database**: MySQL / TiDB Cloud  
- **Auth**: JWT  
- **Deploy**: Render  

---

## Getting Started

### 1. Clone repo
```bash
git clone https://github.com/nvu281205-del/backend.git
cd backend
```
### 2.Install dependecies
```bash
npm install
```
### 3.Setup environment variables
Tạo file .env
```bash
 # Database
DB_HOST=YOUR_DB_HOST
DB_PORT=YOUR_DB_PORT
DB_USER=YOUR_DB_USER
DB_PASS=YOUR_DB_PASS
DB_NAME=YOUR_DB_NAME

# JWT config
JWT_SECRET=YOUR_JWT_SECRET
ACCESS_TOKEN_EXPIRES=?   # điền thời gian hết hạn access token, ví dụ 1d
REFRESH_TOKEN_EXPIRES=?  # điền thời gian hết hạn refresh token, ví dụ 7d
```
### 4.Run Backend
```bash
npm run start:dev
```
