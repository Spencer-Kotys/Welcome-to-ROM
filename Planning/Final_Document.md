# Final Document

## Proposal

## Requirements

1.  (User) (Functional)
Player will use keyboard and mouse to interact with the system.

2.  (User) (Non-Functional)
Player can customize their character.

3.  (System) (Functional)
There will be a chance the player will lose the game.

4.  (System) (Non-Functional)
There will be a morale meter.

5.  (System) (Functional)
There is an end goal for the player.

6.  (System) (Non-Functional)
There will be an open world map for the player to explore.

7.  (System) (Constraint)
The game will be 2D.

8.  (System) (Constraint)
The game will have a top down view.

9. (System) (Constraint)
Time will be internally calculated and tracked.

10. (System) (Non-Functional)
Players will have daily tasks.

11. (System) (Constraint)
A game engine will be used to create the game.

12. (System) (Constraint)
Game is available on PC.


### Use Cases

1. Users customize character

2. User moves around map

3. Users interact with NPCs

4. Users complete tasks

5. Users maintain morale meter

6. Contract Coronavirus

7. Get Contact Traced

8. Users win Game

9. Users Lose Game

### Use Case Diagram

![Use Case Diagram](https://github.com/macee/final-project-i-m-also-not-in-a-group/blob/main/Planning/Use%20Case%20Diagram.PNG)

## Architecture

### Main Scene

Godot breaks games into scenes. The main scene is the overall scene that the
player is in. An example of a main scene would be the start menu or a specific
level in the game. A scene can have many different nodes. A node in Godot is similar
to a class in other programming languages.

[Learn more about Godot scenes and nodes here](https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html)

### Supporting Scenes

Godot allows to scenes to be nested within other scenes, called instancing.
A supporting scene is something like the HUD or the character sprite itself.
What this allows for is a high level of modularity, eliminating the need to
recreate these scenes over and over again. These scenes are superimposed on the
main scene and add to the main scene's functionality.

[Learn more about Godot instancing here](https://docs.godotengine.org/en/stable/getting_started/step_by_step/instancing.html)

### Godot

Godot is a free and open source game engine that provides much of the low level
functionality required for a game to run such as interacting with rendering software.
It is also the underlining software that allows for the editing of scenes and nodes
and also the managing of interactions between scenes. Godot also allows for the
simple running of programs and an easy way to export it to a binary when finished.

[Learn more about Godot here](https://en.wikipedia.org/wiki/Godot_(game_engine))

### OpenGL

OpenGL is an open source API that is used to interact with the operating system/GPU
to render 2D and 3D graphics. Godot uses this graphics API over the more common
DirectX API because OpenGL is open source and cross platform.

[Learn more about OpenGL here](https://en.wikipedia.org/wiki/OpenGL)

### Operating System

The operating system layer is the software that interacts with the hardware and
takes OpenGL calls. It supports all of the layers above. OpenGL works with
Microsoft Windows, Apple macOS, and GNU/Linux. Godot can export to multiple
operating systems as well to web servers.

[Learn more about Godot exporting here](https://docs.godotengine.org/en/stable/getting_started/step_by_step/exporting.html)

### Architecture Diagram

![Architecture Diagram](https://github.com/macee/final-project-i-m-also-not-in-a-group/blob/main/Planning/Architecture%20Diagram.png)

## Assessment of team strategy, challenges, successes

## Assessment of complexity velocity

## Summary of results, reflection

## Demo

## Team self assessment
