<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)"  srcset="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-light.svg"  width=400px>
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-dark.svg"   width=400px>
      <img      alt="Fallback image description"    src="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-light.svg"     width=400px>
    </picture>
    <br>
    Full-stack E-Commerce Coffee Beans Store
    <br><br>
    <img src="https://img.shields.io/badge/stack-react%20%7C%20node.js%20%7C%20mysql-blue" alt="Stack"/>
</p>

# 
**Compresso Coffee Store** is a **full-stack web application** that implements the core features of an online shop ( + auth, order tracking, reviews, admin dashboard) using **React**, **Node.js**, and **MySQL**.
The goal is not to mimic a production marketplace but to provide a clear, complete, and maintainable example of how the pieces of an e-commerce system fit together, from user authentication to order tracking and admin operations.


> [!NOTE]
> This project was originally developed as a group project for **CS308 – Software Engineering** at Sabancı University, through the hard work of: 
> **Mustafa Topcu, Beste Bayhan, Eid Alhamali, and Ecem Akın, Orhun Ege Ozpay, Arya Hassibi**.    
> We followed **Scrum**, used **Jira**, and organized development using **Git Flow**.  
>
> The original course submission is preserved under the tag [**`team-demo-v1.0.0`**](https://github.com/aryahassibi/Compresso-Store/tree/team-demo-v1.0.0) and in the archival repo [**`aryahassibi/TEAM07`**](https://github.com/aryahassibi/TEAM07).    
> After the course, I have continued the project on my own, trying to refactor, polish, and extend it further.

---

## 📍 Key Features

- **Full E-Commerce Flow**  
    Implemented all major user flows of an online store: product discovery, availability checks, cart management, and order placement

- **Secure User Authentication**    
    Registration, login, and account management are implemented using JWT-based authentication and role-aware access control.

- **End-to-End Order Lifecycle Tracking**    
    Real-time order progress through structured states: 
    *processing ⇢ in-transit ⇢ delivered*.

- **Moderated Review & Feedback System**  
    Customers can rate and comment on products. Submissions are reviewed and approved by managers.
    
- **Search, Filtering & Sorting**  
    Server-supported search, filtering, and sorting (price, name, popularity) enable efficient product discovery.

- **Admin Panel**  
    A dedicated section to manage inventory, discounts, product visibility, and essential operational analytics.


## 📍 Tech Stack
- **Frontend:** React, Axios — modern state and data flow patterns
- **Backend:** Node.js, Express — REST API, modular controllers, middleware-driven requests
- **Database:** MySQL
- **Containerization:** Docker
- **Version Control:** Git, GitHub


## 📍 Quick Start (Docker)
The project is containerized with Docker for easy setup and deployment. For complete development instructions, see the [Development Guide 📖](./docs/DEVELOPMENT.md). Here are the most essential commands to boot up the application:

```bash 
# 1. install Docker Desktop from https://www.docker.com/products/docker-desktop
# 2. Clone the repository
# 3. Create a .env file in the project root (see Development Guide for contents)

# Start all services
docker-compose up --build
```

Access the app:
* **Frontend:** [`http://localhost:3000`](http://localhost:3000)
* **Backend:** [`http://localhost:5001`](http://localhost:5001)

To stop and remove containers:

```bash
docker-compose down
# or
docker-compose down -v   # also resets database
```


## 👥 Original Team Credits

* Beste Bayhan
* Mustafa Topcu
* Orhun Ege Ozpay
* Eid Alhamali
* Ecem Akın
* Arya Hassibi

#

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)"  srcset="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-light.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-dark.svg">
      <img      alt="Fallback image description"    src="https://raw.githubusercontent.com/aryahassibi/Compresso-Store/main/docs/assets/logo-light.svg">
    </picture>
    <br>
</p>
