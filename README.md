# Logistics Management System

A role-based logistics management system with QR scanning capabilities, built with Next.js, TypeScript, and MariaDB.

![App Preview](https://via.placeholder.com/800x400.png?text=App+Screenshot+Preview) <!-- Add real screenshot later -->

## Features

- **Role-Based Access Control**
  - Admin: Manage users/vehicles, export logs
  - Accountant: View/export activity logs
  - Dispatcher: QR-based vehicle verification
- **QR Scanner Integration**
  - Real-time vehicle check-in/check-out
  - Mobile-friendly camera interface
- **Modern Dashboard**
  - Data tables with CRUD operations
  - CSV/PDF export functionality
- **Secure Authentication**
  - JWT token validation
  - Protected API routes

## Tech Stack

**Frontend**  
- Next.js 14 (App Router)
- TypeScript
- MUI (Material-UI) + Tailwind CSS
- React QR Scanner

**Backend**  
- Node.js/Express.js
- Prisma ORM
- JWT Authentication

**Database**  
- MariaDB (MySQL-compatible)

**Tools**  
- Docker (for MariaDB)
- Vercel (Frontend Deployment)
- GitHub Actions (CI/CD)

## Getting Started

### Prerequisites
- Node.js 18+
- Docker
- MariaDB/MySQL

### Installation

1. **Clone Repository**
   ```bash
   git clone https://github.com/<your-username>/logistics-system.git
   cd logistics-system
