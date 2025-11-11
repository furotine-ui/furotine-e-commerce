# Create/update .env file
$envContent = @"
MONGODB_URI=mongodb+srv://furotine_db_user:your_new_password_here@cluster0.kmn8rfr.mongodb.net/sample_mflix?retryWrites=true&w=majority
PORT=5000
JWT_SECRET=your_secure_jwt_secret_here
NODE_ENV=development
"@

# Write to .env file
$envContent | Out-File -FilePath .\.env -Force

# Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Green
npm install

# Start the server
Write-Host "Starting the server..." -ForegroundColor Green
npm run dev
