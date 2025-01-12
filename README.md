# Amazon Clone

**A Full-Stack Amazon Clone with Admin Panel**

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
