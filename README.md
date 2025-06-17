# Top-Down Car Racing Game

A classic arcade-style car racing game built with HTML5 Canvas and JavaScript. Navigate your car through oncoming obstacles and try to achieve the highest score possible!

## 🎮 Game Features

- **Top-down perspective**: Classic arcade-style racing view
- **Real-time gameplay**: Smooth 60fps game loop with collision detection
- **Dynamic obstacles**: Randomly generated obstacles to avoid
- **Score tracking**: Points increase as you survive longer
- **Responsive controls**: Arrow key controls for precise car movement
- **Game over detection**: Collision system with restart capability

## 🚗 How to Play

1. Open `car-game.html` in your web browser
2. Use the **Arrow Keys** to control your car:
   - ⬅️ **Left Arrow**: Move car left
   - ➡️ **Right Arrow**: Move car right
3. Avoid the red obstacles coming towards you
4. Stay on the road (gray area with white center line)
5. Try to achieve the highest score possible!

The game ends when your car collides with an obstacle. Your score increases the longer you survive.

## 🛠️ Technologies Used

- **HTML5**: Game structure and Canvas element
- **CSS3**: Styling and layout
- **JavaScript (ES6+)**: Game logic, rendering, and animation
- **HTML5 Canvas API**: 2D graphics and game rendering
- **RequestAnimationFrame**: Smooth 60fps game loop

## 🚀 Getting Started

### Running Locally

1. Clone this repository:
   ```bash
   git clone https://github.com/tsimiz/vibecodetest.git
   cd vibecodetest
   ```

2. Open `car-game.html` in your web browser, or serve it using a local web server:
   ```bash
   # Using Python 3
   python3 -m http.server 8080
   
   # Using Node.js (if you have http-server installed)
   npx http-server
   ```

3. Navigate to `http://localhost:8080/car-game.html` in your browser

### Deployment

This project includes Azure Static Web Apps deployment configuration:

- **Infrastructure**: `infra/main.bicep` - Azure Bicep template
- **CI/CD**: `.github/workflows/deploy.yml` - GitHub Actions workflow

The game can be deployed to any static web hosting service since it's a client-side only application.

## 📁 Project Structure

```
vibecodetest/
├── car-game.html          # Main game file (HTML + CSS + JavaScript)
├── README.md             # Project documentation
├── LICENSE               # MIT License
├── infra/
│   └── main.bicep        # Azure infrastructure template
└── .github/
    └── workflows/
        └── deploy.yml    # GitHub Actions deployment workflow
```

## 🎯 Game Mechanics

- **Car Movement**: Constrained to road width with boundary collision
- **Obstacle Generation**: Random positioning and timing for dynamic gameplay
- **Collision Detection**: Rectangle-based collision system
- **Scoring System**: Time-based scoring that increases as you play
- **Performance**: Optimized game loop using `requestAnimationFrame`

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Feel free to fork this project and submit pull requests for improvements or new features!
