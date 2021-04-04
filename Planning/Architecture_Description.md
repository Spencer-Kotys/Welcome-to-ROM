# Architecture

## Main Scene

Godot breaks games into scenes. The main scene is the overall scene that the
player is in. An example of a main scene would be the start menu or a specific
level in the game. A scene can have many different nodes. A node in Godot is similar
to a class in other programming languages.

[Learn more about Godot scenes and nodes here](https://docs.godotengine.org/en/stable/getting_started/step_by_step/scenes_and_nodes.html)

## Supporting Scenes

Godot allows to scenes to be nested within other scenes, called instancing.
A supporting scene is something like the HUD or the character sprit itself.
What this allows for is a high level of modularity, eliminating the need to
recreate these scenes over and over again. These scenes are superimposed on the
main scene and add to the main scene's functionality.

[Learn more about Godot instancing here](https://docs.godotengine.org/en/stable/getting_started/step_by_step/instancing.html)

## Godot

Godot is a free and open source game engine that provides much of the low level
functionality required for a game to run such as interacting with rendering software.
It is also the underlining software that allows for the editing of scenes and nodes
and also the managing of interactions between scenes. Godot also allows for the
simple running of programs and an easy way to export it to a binary when finished.

[Learn more about Godot here](https://en.wikipedia.org/wiki/Godot_(game_engine))

## OpenGL

OpenGL is an open source API that is used to interact with the operating system/GPU
to render 2D and 3D graphics.

[Learn more about OpenGL here](https://en.wikipedia.org/wiki/OpenGL)

## Operating System

The operating system layer is the software that interacts with the hardware and
takes OpenGL calls. It supports all of the layers above. OpenGL works with
Microsoft Windows, Apple macOS, and GNU/Linux.
