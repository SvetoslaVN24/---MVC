# Laravel Project

This repository contains a Laravel-based web application. This README will guide you through the setup and running of the project.

## Requirements

- PHP 8.0 or higher
- Composer
- Node.js and NPM
- MySQL or another database supported by Laravel

## Starting the Server

You can start the server using one of the following methods:

### Method 1: Separate Development Servers

Run the Laravel development server:
```bash
php artisan serve
```

In a separate terminal, compile and hot-reload assets:
```bash
npm run dev
```

The Laravel server will typically run at http://localhost:8000

### Method 2: Combined Development Server

Alternatively, use our custom command to start both servers simultaneously:
```bash
php artisan server:dev
```

## Project Structure

The project follows Laravel's MVC (Model-View-Controller) architecture:

- `app/` - Contains the core code of the application
- `config/` - Contains all configuration files
- `database/` - Contains database migrations and seeders
- `public/` - Contains publicly accessible files and the entry point
- `resources/` - Contains views and uncompiled assets
- `routes/` - Contains all route definitions
- `tests/` - Contains automated tests


