# AstroAttac

A 2D space game built with Godot 4.6.

## Gameplay

Control a green spaceship and push asteroids into a glowing collection zone to destroy them.

**Controls**: WASD or Arrow Keys to move.

## Project Structure

```
astro-attac/
├── assets/
│   ├── audio/          # Sound effects (hurt_sound.wav)
│   ├── planets/        # 10 planet sprites (planet00–planet09)
│   └── textures/       # Ship, asteroid, background, and particle textures
├── scenes/
│   ├── game.tscn       # Main scene
│   ├── player.tscn     # Player ship
│   ├── asteroid.tscn   # Asteroid
│   └── collection_area.tscn  # Collection zone
├── scripts/
│   ├── player.gd       # Player movement (WASD, force-based)
│   ├── asteroid.gd     # Asteroid random impulse on spawn
│   └── collection_area.gd  # Detects asteroids, plays sound, removes them
├── project.godot       # Godot project configuration
└── icon.svg            # Project icon
```

## How to Run

1. Install [Godot 4.6](https://godotengine.org/download)
2. Open the project in Godot
3. Press **F5** to run

## Configuration

- Resolution: 1280×720
- Physics engine: Jolt Physics
- Renderer: Forward Plus (D3D12 on Windows)
