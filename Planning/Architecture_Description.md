# Architecture

## Main Scene

The main scene is specific area in the game that the character is in. This is what
the player will mostly see.

## Supporting Scenes

Supporting scenes are things like the HUD or the character sprit itself. These
are superimposed on the main scene and add to the main scene functionality.

## Godot

Godot is an open source game engine that provides much of the low level functionality
required for a game to run such as interacting with rendering software.

## OpenGL

OpenGL is an open source API that is used to interact with the operating system/GPU to render
2D and 3D graphics.

## Operating System

The operating system layer is the software that interacts with the hardware and
takes OpenGL calls. It supports all of the layers above. OpenGL works with
Microsoft Windows, Apple Mac OS, and GNU/Linux.
