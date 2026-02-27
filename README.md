<p align="center">
  <img src="https://nestjs.com/img/logo-small.svg" width="120" alt="NestJS Logo" />
  <img src="https://reactjs.org/logo-og.png" width="120" alt="React Logo" />
  <img src="https://www.mysql.com/common/logos/logo-mysql-170x115.png" width="120" alt="MySQL Logo" />
</p>

<p align="center">
  <b>TicketBox 🎟️</b> — Event & Ticket Management System
</p>

<p align="center">
  <a href="https://github.com/your-org/ticketbox/actions"><img src="https://img.shields.io/github/actions/workflow/status/your-org/ticketbox/ci.yml?branch=main" alt="Build Status" /></a>
  <a href="https://www.npmjs.com/package/nestjs"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NestJS Version" /></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="License" /></a>
  <a href="https://discord.gg/yourdiscord"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
</p>

# TicketBox 🎟️

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)
![Node](https://img.shields.io/badge/node-%3E%3D16.0.0-orange)

## Description <!-- omit in toc -->

TicketBox là một hệ thống quản lý sự kiện và bán vé trực tuyến, được xây dựng bằng **NestJS** và **React**.  
Dự án này cung cấp REST API backend và frontend để người dùng có thể tìm kiếm sự kiện, đặt vé, quản lý đơn hàng, và theo dõi thông tin chi tiết.

Demo: <https://ticketbox-demo.example.com>  
Frontend repo: <https://github.com/your-org/ticketbox-frontend>

---

## Table of Contents <!-- omit in toc -->

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Environment Variables](#environment-variables)
- [Contributors](#contributors)
- [Support](#support)

---

## Features

- [x] **Events Management**: tạo, chỉnh sửa, xóa sự kiện.
- [x] **Ticket Booking**: đặt vé, thanh toán, quản lý đơn hàng.
- [x] **User Authentication**: đăng ký, đăng nhập, JWT tokens.
- [x] **Roles & Permissions**: phân quyền Admin/User.
- [x] **Organizer Module**: quản lý nhà tổ chức sự kiện.
- [x] **File Uploads**: upload ảnh sự kiện (local/S3).
- [x] **Internationalization (I18N)**: hỗ trợ đa ngôn ngữ (vi/en).
- [x] **Swagger API Docs**: tài liệu API tự động.
- [x] **Database**: MySQL/TiDB Cloud với TypeORM.
- [x] **Docker Support**: dễ dàng deploy.
- [x] **CI/CD**: Github Actions.

---

## Tech Stack

- **Backend**: NestJS, TypeORM, MySQL/TiDB Cloud
- **Frontend**: React, Axios, React Router
- **Auth**: JWT, Passport
- **Storage**: Local uploads, Amazon S3
- **Infra**: Docker, Render/Heroku

---

## Getting Started

### 1. Clone repo
```bash
git clone https://github.com/your-org/ticketbox.git
cd ticketbox
### 2.Istall depedencies
npm install
### 3.Setup environment variables
DB_HOST=
DB_PORT=
DB_USER=
DB_PASS=
DB_NAME=

JWT_SECRET=
ACCESS_TOKEN_EXPIRES=
REFRESH_TOKEN_EXPIRES=
### 4.Run Web
npm run start:dev



Nest is [MIT licensed](https://github.com/nestjs/nest/blob/master/LICENSE).
