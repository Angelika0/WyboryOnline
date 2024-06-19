README
This README will guide you through the steps necessary to get the WyboryOnline application up and running.

Ruby version
Ensure you have Ruby version 3.2.0 installed.

System dependencies
Make sure you have the following system dependencies installed:
    
    SQLite3
    Node.js
    Yarn
    Bundle
Configuration

Clone the repository to your local machine:
    
    git clone https://github.com/your-username/WyboryOnline.git
    cd WyboryOnline
    
Install the required gems:
   
    bundle install

    
Install JavaScript dependencies:
   
    yarn install

Database creation
Set up the database by running the following commands:
   
    rails db:create
    rails db:migrate

Database initialization
If you have seed data, you can initialize the database with it:

    rails db:seed
How to run the test suite

To run the test suite, use the following command:
   
    rails test
    
Services (job queues, cache servers, search engines, etc.)
Ensure any background jobs, cache servers, or search engines are properly configured and running if your application uses them. Refer to their respective documentation for setup instructions.

Deployment instructions
Precompile assets:

    rails assets:precompile

Ensure your production environment is correctly set up and the database is migrated:

    RAILS_ENV=production rails db:migrate
    
Start the server:
    
    rails server -e production
Logging
Logs are configured to be written to both the standard output and a file. You can find the logs in the log directory of the application root.

Additional Notes
Ensure you have environment variables configured if your application requires them.
Regularly check for updates to your dependencies and apply them as needed.
Follow best practices for security, including keeping your gems and packages up-to-date.
If you encounter any issues or have questions, feel free to open an issue on the GitHub repository.
