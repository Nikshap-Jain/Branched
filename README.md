# Branched - Linktree Clone

A Ruby on Rails application that allows users to create a single link page to showcase all their social media profiles and online presence. Similar to Linktree, this application helps content creators, influencers, and businesses share multiple links through one customizable URL.

## 🌟 Features

- **User Authentication**: Secure user registration and login system using Devise
- **Custom Link Trees**: Create personalized link pages with your social media handles
- **SEO-Friendly URLs**: Clean, readable URLs using FriendlyId gem
- **Multiple Style Options**: Choose from different visual themes (default, dark, light, colorful, minimal)
- **Social Media Integration**: Support for Instagram, YouTube, and X (Twitter) profiles
- **Responsive Design**: Mobile-first design that works on all devices
- **User Dashboard**: Manage multiple link trees from a single account
- **Public Sharing**: Share your tree with anyone using a clean, branded URL
- **Account Management**: Update profile information without password requirements

## 🛠️ Tech Stack

- **Backend**: Ruby on Rails 7.1.5
- **Database**: SQLite3 (development), easily configurable for PostgreSQL/MySQL
- **Authentication**: Devise gem
- **URL Slugs**: FriendlyId gem
- **Frontend**: HTML, CSS, JavaScript with Rails' Stimulus and Turbo
- **Styling**: Custom CSS with responsive design
- **Containerization**: Docker support included

## 📋 Prerequisites

Before running this application, make sure you have the following installed:

- Ruby 3.2.2
- Rails 7.1.5+
- SQLite3
- Node.js and npm (for asset compilation)
- Git

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Nikshap-Jain/LinktreeClone.git
cd LinktreeClone
```

### 2. Install Dependencies

```bash
# Install Ruby gems
bundle install

# Install JavaScript dependencies
npm install
```

### 3. Database Setup

```bash
# Create and migrate the database
rails db:create
rails db:migrate

# Optional: Seed the database with sample data
rails db:seed
```

### 4. Start the Server

```bash
rails server
```

Visit `http://localhost:3000` in your browser to see the application.

### 5. Using Docker (Alternative)

```bash
# Build the Docker image
docker build -t branched .

# Run the container
docker run -p 3000:3000 branched
```

## 📱 Usage

### For Users:

1. **Sign Up**: Create a new account with your email
2. **Create Tree**: Add your social media handles (Instagram, YouTube, X)
3. **Customize**: Choose a visual style that matches your brand
4. **Share**: Use your clean URL (e.g., `yoursite.com/trees/your-name`) to share all your links
5. **Manage**: Edit, update, or delete your trees from your dashboard

### For Visitors:

- View any public tree by visiting the shared URL
- See all social media links in one organized page
- Enjoy a clean, mobile-friendly experience

## 🏗️ Project Structure

```
LinktreeClone/
├── app/
│   ├── controllers/
│   │   ├── trees_controller.rb      # Main CRUD operations for trees
│   │   ├── home_controller.rb       # Landing page controller
│   │   └── users/                   # Custom Devise controllers
│   ├── models/
│   │   ├── user.rb                  # User model with Devise
│   │   └── tree.rb                  # Tree model with validations
│   ├── views/
│   │   ├── trees/                   # Tree management views
│   │   ├── home/                    # Landing page views
│   │   └── devise/                  # Authentication views
│   └── assets/
│       └── stylesheets/             # Custom CSS files
├── config/
│   └── routes.rb                    # Application routes
├── db/
│   ├── migrate/                     # Database migrations
│   └── schema.rb                    # Current database schema
└── Dockerfile                       # Docker configuration
```

## 🎨 Customization

### Adding New Social Platforms

1. Add new fields to the Tree model migration
2. Update the Tree model with appropriate validations
3. Modify the tree form and display views
4. Add styling for the new platform

### Styling Options

The application supports multiple themes:

- **Default**: Clean, professional look
- **Dark**: Dark mode theme
- **Light**: Bright, minimal design
- **Colorful**: Vibrant colors and gradients
- **Minimal**: Ultra-clean, text-focused design

## 🔧 Configuration

### Environment Variables

Create a `.env` file for sensitive configurations:

```env
SECRET_KEY_BASE=your_secret_key
DATABASE_URL=your_database_url
RAILS_ENV=development
```

### Database Configuration

For production, update `config/database.yml` to use PostgreSQL or MySQL instead of SQLite.

## 🧪 Testing

```bash
# Run the test suite
rails test

# Run system tests with browser
rails test:system
```

## 📊 Database Schema

### Users Table

- `email`: User's email address
- `encrypted_password`: Secure password storage
- `reset_password_token`: For password recovery

### Trees Table

- `name`: Display name for the tree
- `instagram`: Instagram handle (required)
- `youtube`: YouTube channel handle (optional)
- `x`: X (Twitter) handle (optional)
- `style`: Visual theme selection
- `slug`: SEO-friendly URL slug
- `user_id`: Foreign key to Users table

## 🚀 Deployment

### Heroku Deployment

1. Create a new Heroku app
2. Add PostgreSQL addon
3. Configure environment variables
4. Deploy using Git

### Docker Deployment

1. Build the Docker image
2. Push to your container registry
3. Deploy to your hosting platform

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Author

**Nikshap Jain**

- GitHub: [@Nikshap-Jain](https://github.com/Nikshap-Jain)
- Email: nikshapjain12@gmail.com

## 🙏 Acknowledgments

- Inspired by Linktree's simple yet powerful concept
- Built with Ruby on Rails framework
- Uses Devise for authentication
- Styled with custom CSS for a unique look

## 📞 Support

If you have any questions or need help with the setup, please open an issue on GitHub or contact the author directly.

---

**Made with ❤️ by Nikshap Jain**
