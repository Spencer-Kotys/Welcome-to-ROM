# Final Document

## Proposal

### Scope

The scope includes the game files required to make the game functional through
the Godot game engine.
The external inputs will be the keyboard and mouse.
The keyboard will be used for movement (WASD/arrows) as well as text input.
The mouse will be used for selecting options.
The game will take about 45 minutes to beat with each day simulation taking
between 3 to 4 minutes.

### Context Diagram

![Context Diagram](./Context%20Diagram.png)

### Stakeholders

1. Cadets, the people who live in Chase Hall. The Cadets will play the game to
relive the experience that is ROM.

2. Developers, those who built the game. The Developers will improve their software
engineering skills and learn valuable concepts of game design. The developers will
also create graphics and audio for the game.

3. Professors, funding organization. The Professors are hosting this assignment.
They set requirements for the structure of the project.

### Description

ROM is a two dimensional simulation game, and will have a top down game design
where the camera follows the player. The player will have a morale meter which
is effected by game play, and if it reaches zero, the game ends in a loss. The
player can also lose by getting sent to Munro Hall, which would occur if the
player gets COVID-19 or gets contact traced by one of the characters the player
interacts with. When the player attends social events and interacts with other
characters to improve their morale meter, there is an increased random chance
that they can be sent down to Munro Hall or test positive for Covid. The player's
goal is to balance maintaining the morale meter with limiting the chances of
getting COVID-19. the player makes it to the end of day 14, then they win!

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

![Use Case Diagram](./Use%20Case%20Diagram.PNG)

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

![Architecture Diagram](./Architecture%20Diagram.png)

## Assessment of team strategy, challenges, successes

### Team strategy

Our teams strategy was to assign work according to ability. This means that the
best developers wrote code, while those with artistic skills drew the art, and
others contributed in the best way they could.

During each of our lab sessions we would meet to discuss the progress made this
week and decide what we wanted to work on next week. Then we would decide who
was going to work on what and assign them an issue on GitHub to take who was
doing what, along with adding a card to the project board.

In Agile development terms we would describe each week as a "scrum" where we
planned our schedule and work around.

Towards the end of the development cycle we began assigning releases to each
scrum. For example the first week we did this was v0.1-alpha and then 0.2 and
so on. For each release we would compile the game code and create a stand alone
application.

With this strategy we were able to keep moving towards a finished product.

## Assessment of complexity velocity

## Summary of results, reflection

## Demo
