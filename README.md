# Book Me Bus System

## Overview

**Book Me Bus** is an ASP.NET-based web application designed to simplify the bus booking process by providing a user-friendly interface for searching, booking, and managing bus tickets. This project is still under development, with several key features implemented and others in progress.

## Project Plan

### 1. Introduction
- **Objective:** Develop an efficient and user-friendly bus booking system.

### 2. Background
- **Market Research:** Analyzed existing bus booking systems and user needs.
- **User Needs:** Requirements gathered through surveys and interviews.
- **Regulatory Requirements:** Considered legal requirements for online bookings.

### 3. Challenges and Opportunities
- **Challenges:** Competition, integration with bus operators, data security, scalability.
- **Opportunities:** Unique features like real-time tracking and discounts.

### 4. Functionalities and Features
- **Search and Booking:** Completed.
- **Register/Login:** Backend implementation is pending.

### 5. UX/UI
- Conducted user research, created wireframes and prototypes, and performed usability testing, focusing on design principles.

### 6. System Design
- **Architecture:** Client-server architecture.
- **Database Design:** SQL Server database schema in place.

### 7. Back-end Functionalities Implementation
- User Management
- Bus Schedule Management
- Booking System
- Admin Panel

### 8. Technologies
- **Frontend:** ASP.NET
- **Backend:** C#
- **Database:** SQL Server

### 9. Summary
- **Recap:** An overview of the project plan.
- **Timeline:** Outlined milestones and deadlines.
- **Team Roles:** Defined responsibilities and roles.
- **Next Steps:** Begin the initial setup and design phase.

## Installation and Setup

### Prerequisites
- **ASP.NET Core 5.0 or higher**: Ensure you have the latest version installed.
- **SQL Server**: Set up a local or remote SQL Server instance.

### Step-by-Step Setup Guide

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/book-me-bus.git
   cd book-me-bus
   ```

2. **Run the Application**
   - import database
   - Rebuild the solution
   - change connetion string at PassengerDetail.aspx.cs and SearchTicket.aspx.cs
     ![image](https://github.com/user-attachments/assets/b1fc4efe-0117-4180-bcb4-4afd7d0c3490)
     ![image](https://github.com/user-attachments/assets/e2a3b3dd-53ec-4438-9fcb-55be4a7b2cba)

   - Press `F5` or click on the "Run" button in Visual Studio to start the project.
   - The application should open in your default browser at `https://localhost:5001`.

### How to Add New Functions (e.g., Register/Login)
1. **Backend Implementation**:  
   - The `Register` and `Login` functionalities need to be implemented in the backend.
   - Update the `AccountController.cs` to handle user registration and authentication.
   - Use ASP.NET Identity for user management, which simplifies tasks like password hashing, user validation, and cookie management.
  

## Contributing

If you'd like to contribute to this project:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Open a pull request.

