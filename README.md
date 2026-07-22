# Vehicle Comparison Web Application

A comprehensive web application for vehicle comparison developed as part of the TDW (Technologies du Développement Web) module. Built with PHP, MySQL, HTML5, CSS3, JavaScript, jQuery, and Ajax following the MVC architecture pattern.

## 🚀 Features

### User Features
- **Vehicle Comparison**: Compare up to 4 vehicles side-by-side with detailed specifications (supports cars, motorcycles, and trucks)
- **Brand & Model Exploration**: Browse vehicles by brand, model, year, and version
- **Reviews & Ratings**: Submit and view user reviews with like functionality
- **Favorites System**: Save favorite vehicles for quick access
- **Automotive News**: Stay updated with latest automotive news
- **User Authentication**: Register, login, and manage user profiles
- **Buying Guide**: Access vehicle purchasing guides

### Admin Features
- **Dashboard**: Comprehensive admin interface
- **User Management**: Validate, block, or delete user accounts
- **Vehicle Management**: Add, update, or delete vehicles and specifications
- **Brand Management**: Manage automotive brands
- **News Management**: Create, edit, publish, or delete news articles
- **Review Moderation**: Approve, reject, or delete user reviews

## 📋 Prerequisites

- PHP 8.2 or higher
- MySQL 8.3 or higher
- Apache web server
- WAMP/XAMPP/MAMP (or equivalent local server environment)
- jQuery 3.6.0 (included)

## 🏗️ Project Structure

```
TDW/
├── controllers/          # MVC Controllers 
│   ├── AcceuilController.php
│   ├── UserController.php
│   ├── VehiculeController.php
│   ├── CategoriesController.php
│   └── ...
├── models/              # MVC Models 
│   ├── UserModel.php
│   ├── VehiculeModel.php
│   ├── ConnexionModel.php
│   └── ...
├── views/               # MVC Views 
│   ├── AcceuilView.php
│   ├── UserProfileView.php
│   ├── CommonViews.php
│   └── ...
├── database/            # Database export
│   └── tdw.sql
├── assets/              # Static assets (CSS, JS)
├── images/              # Image files
├── screenshots/         # Application screenshots
├── index.php           # Entry point & routing
└── README.md
```

## 🔧 Installation

1. **Clone the repository**
```bash
git clone https://github.com/Meriem-ht/TDW.git
cd TDW
```

2. **Import the database**
- Open phpMyAdmin
- Create a new database named `tdw` (or your preferred name)
- Import `database/tdw.sql`

3. **Configure database connection**
⚠️ **Important**: Copy the example config file and configure your database credentials:
```bash
cp config/config.example.php config/config.php
```

Then edit `config/config.php` with your database settings:
```php
return [
    'db' => [
        'host' => 'localhost',
        'dbname' => 'tdw',
        'user' => 'root',
        'password' => ''
    ]
];
```


4. **Start the server**
- Start Apache and MySQL using WAMP/XAMPP
- Ensure the project is in your web root (e.g., `C:\wamp64\www\TDW`)

5. **Access the application**
- Open your browser and navigate to: `http://localhost/TDW`

## 🌐 Usage

### User Routes
- Home: `index.php?router=Page+d'acceuil`
- Login: `index.php?router=UserLogin`
- Register: `index.php?router=UserRegister`
- Profile: `index.php?router=UserProfile&id={id}`
- Comparison: `index.php?router=Comparateur`
- News: `index.php?router=News`
- Brands: `index.php?router=Marques`

### Admin Routes
- Admin Login: `index.php?router=AdminLogin`
- Admin Dashboard: `index.php?router=AcceuilAdmin`
- Categories Management: `index.php?router=categories`

## 🗄️ Database Schema

The application uses the following main tables:
- `admin` - Administrator accounts
- `user` - User accounts
- `marque` - Vehicle brands
- `vehicule` - Vehicle specifications
- `avis` - User reviews
- `news` - News articles
- `favoris` - User favorites
- `note` - User ratings

Full schema available in `database/tdw.sql`

## 🛠️ Technology Stack

- **Backend**: PHP 8.2 (MVC Architecture)
- **Database**: MySQL 8.3
- **Frontend**: HTML5, CSS3, JavaScript
- **Libraries**: jQuery 3.6.0, Ajax
- **Server**: Apache (via WAMP)

## 📸 Screenshots

### Home Page
![Home](screenshots/home.png)

### Vehicle Comparison
![Comparison](screenshots/comparison/comparison-form-1.JPG)

### Brand Details
![Brand](screenshots/brand/brand-details-1.JPG)

### Vehicle Details
![Vehicle](screenshots/vehicule/vehicle-details-1.JPG)

### Administration Dashboard
![Admin](screenshots/admin/admin-dashboard.JPG)

## 👥 Authors

- Meriem-ht
