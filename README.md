# Amazon Clone

**A Full-Stack Amazon Clone with Admin Panel**

---

## 🔗 GitHub Repository

You can find the project repository on [GitHub](https://github.com/Nahid-web/amazon_clone).

---

## Tech Stack

### 🛠️ Backend

- **Node.js**
- **Express.js**
- **MongoDB**
- **Mongoose**
- **Cloudinary**

### 🎨 Frontend

- **Flutter**
- **Provider** (for State Management)

---

## Features

### 🛒 User Features

- **Email & Password Authentication**
- **Persisting Authentication State**
- **Search Products**
- **Filter Products** (by Category)
- **View Product Details**
- **Product Ratings and Reviews**
- **Daily Deals Section**
- **Manage Shopping Cart**
- **Checkout with Google Pay / Apple Pay**
- **Order Management**
  - View Order History
  - Order Details & Status Tracking
- **Sign Out**

### 🔑 Admin Panel Features

- **View All Products**
- **Add New Products**
- **Delete Existing Products**
- **View Customer Orders**
- **Update Order Status**
- **View Total Earnings**
- **Earnings Insights**
  - Category-based Earnings (Graphical Representation)

---

## 📸 Screenshots

Here are some screenshots of the project:

### 🛠️ Backend Database (Mongodb)

  <img src="https://github.com/user-attachments/assets/7a7669e3-b36a-4d9c-9d1d-e3f934afdc6e" alt="Mongodb Database" width="60%" />

### 📷 Media Storage (Cloudinary)

  <img src="https://github.com/user-attachments/assets/03a24663-bbc5-41d5-8f6c-fb2602fa1279" alt="Cloudinary Media" width="70%" />

### 📝 Auth Screen

<img src="https://github.com/user-attachments/assets/44ee043e-72ef-4962-aa7a-be8e1a438543" alt="Admin Panel" width="50%">

### 📦 Admin Screen

<img src="https://github.com/user-attachments/assets/ff3a3728-9fff-4fef-a6cd-600b611ea0df" alt="Admin Panel" width="50%">

### ➕ Add Product Screen

<img src="https://github.com/user-attachments/assets/e719e0f2-c8d8-4861-b1b5-3f31554270a3" alt="Add Product Screen" width="50%">

### 🌟 Home Screen

<img src="https://github.com/user-attachments/assets/029d1748-321d-483f-8dce-1d19bf510a23" alt="Home Page" width="50%">

### 👤 Account Screen

<img src="https://github.com/user-attachments/assets/16178dfa-325e-4957-9fd9-5ba82b49c830" alt="Account Page" width="50%">

### 🛍️ Product Details Screen

<img src="https://github.com/user-attachments/assets/f8e9b618-eb46-4376-92d5-9c64ef9e5e55" alt="Product Details Page" width="50%">

### 🗃️ Category Product Item

<img src="https://github.com/user-attachments/assets/8a0fe7bc-253f-4961-b5b5-d8b38cb388ed" alt="Category Product Item" width="50%">

### 🔍 Search Results Screen

<img src="https://github.com/user-attachments/assets/704a555a-6e01-4c9d-ad48-88f7afce48ae" alt="Search Results Page" width="50%">

### 🛒 Cart Screen

<img src="https://github.com/user-attachments/assets/0a9ea778-5eef-493f-bd51-d54f0c972cbb" alt="Cart Page" width="50%">

### 💳 Buy Screen

<img src="https://github.com/user-attachments/assets/3d407213-fec4-48d4-99fc-44e15f39d560" alt="Buy Page" width="50%">

---

## Getting Started

Follow these steps to set up the project locally:

## 🚀 Running Locally

To run this project locally, follow the steps below:

### 🎨 Frontend Setup (Client Side)

1. Create & open **.env** file and making variable name as **SERVER_URL** placeholder **IP** with your local machine's address.

2. **Setup Cloudinary**: - Create a new Cloudinary Project and enable unsigned operations in settings.
   Update the following values in lib/features/admin/services/admin_services.dart:
   -- In .env file Create Clodunary Credential and create and assign your Cloudinary Cloud Name & Upload Preset.

   ```bash
   # Cloudinary credentials
   CLOUDINARY_CLOUD_NAME=Your_Cloud_Name
   CLOUDINARY_UPLOAD_PRESET=Your_Upload_preset

   ```

3. Install Flutter Dependencies & Run the App:

   ```bash
   flutter pub get
   open -a simulator # for ios
   flutter run
   ```

### 🔧 Backend Setup (Server Side)

1. Clone the repository and navigate to the `amazon_clone/server` folder.

2. **Setup MongoDB**:

   - Create a new **MongoDB Project & Cluster**.
   - Click on **Connect** and follow the instructions to get your connection URI.
   - Replace the MongoDB URI in **server/.env** crete and assign url in **DB_URL**. Also add PORT in **server/env** file.

3. **Install Dependencies & Run the Server**:
   ```js
   cd server
   npm install
   npm run dev  # For continuous development
   # OR
   npm start    # To run the server one time
   ```
   ***
   ## Feedback
   If you have any feedback, please reach out to me at nahidamin266@gmail.com.

---

---

## Feedback

## If you have any feedback, please reach out to me at nahidamin266@gmail.com.
