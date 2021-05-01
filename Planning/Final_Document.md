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

### Challenges

Getting GitHub to interface well with our game engine, Godot, has been one of
our biggest reoccurring issues.

After changing to a different branch, GitHub Desktop will bring changes from the
previous branch to the current branch despite no changes being made to the
current branch. A work-around to this has just been immediately discarding
changes upon a branch switch.

Another problem came up when we tried to restore stashed changes, and it broke
the entire game. This was because GitHub was treating our Godot scenes as if
they were text files, and was inserting text to identify where the changes were.
In order to fix it, we had to manually go through all the altered Godot files
and delete GitHub’s added text. The solution going forward has been to either
commit or discard changes before changing to a different branch so they are not
stashed.

Finally, early on in development, a group member pushed a change to our main
branch that broke most of the systems. This was fixed through selective
reversions and re-commits, and then the permanent solution was to have only
Spencer coordinate merging all the individual member branches into main.

A recently fixed problem turned out to be caused by the Godot engine itself.
When loading into a new scene (i.e. walking from the main hallway into the
player’s room or vice versa), the player’s morale bar would spike up in value,
seemingly at random. It turned out this was a common bug in Godot; upon
entering a new scene the physics engine automatically detects collision with
all the objects in that scene. This was an issue because player morale was set
to go up upon colliding with certain characters in the main hallway. This is
why the morale meter would spike upon loading the scene. The only fix to this
was a workaround with a 1 second timer. The timer starts when the scene loads
in, and while it’s, running collision detection is turned off. This creates a
one second buffer when loading into a new scene and it prevents all the
collisions from being immediately detected and increasing the player’s morale.
We also had to use a timer to fix a similar collision issue with the dialogue
system. Giving the game a single second to run through a couple more process
loops before impacting the player has improved overall game stability.

Communication and the assignment of specific tasks was a big issue at the
beginning of the development cycle. When all we had was a blank game file, it
was hard to assign specific tasks to certain people. This led to development
being a bit rushed in the beginning by one or two people. However, once we had
a baseline to work with and improve upon, it became much easier to coordinate
with the group, assign deadlines, and have a better idea of where the project
was going. It also became easier to assign non-coding based tasks to group
members who didn’t feel as comfortable working in Godot.

During our development process we realized that an open world game would be a
little too ambitious so we decided to represent the world through video scenes
instead. So while the player can do a multitude of different activities, most
of them are through the use of videos.

### Successes

We were able to successfully complete our project and create a video game the
encapsulates what it felt like to be a cadet during ROM. Of our requirements we
met the following:

1. Player will use keyboard and mouse to interact with the system.

2. Player can customize their character.

3. There will be a chance the player will lose the game.

4. There will be a morale meter.

5. There is an end goal for the player.

6. The game will be 2D.

7. The game will have a top down view.

8. Time will be internally calculated and tracked.

9. Players will have daily tasks.

10. A game engine will be used to create the game.

11. Game is available on PC.

## Assessment of complexity velocity

### Week 1
This week was used to set the foundation for the project. We agreed on what the game
would generally consist of, the game engine we would use, and then drafted a project
description.

Accomplished:
- Project Description
- Making Godot Project

Complexity Score Total: 4

### Week 2
This week expanded on the foundation laid in week 1. It was significantly harder,
though, because we started writing code in Godot. We got the movement system down
as well as a rough draft of the artwork and HUD that would display in game.
Getting these components done made visualizing where the game was headed much easier
and writing the first bits of Godot code served as a tutorial for the group members
who hadn't used the engine before.

Accomplished:
- Project Requirements
- Use Case Diagram
- Architecture Diagram
- Artwork prototype
- Movement system
- HUD draft
- Collision detection

Complexity Score Total: 56

### Week 3
This the most code intensive week of the project, by far. Most of the final
systems were finished (or mostly finished) and it was technically possible
to win or lose in a very rough early release of the game. While most of the
systems were present, they still needed to be brought together and play-tested.

Accomplished:
- Dialog System
- Final Map
- Day Tracking System
- Win and Lose scenes
- Covid and bagging system
- Version 0.1 Alpha

Complexity Score Total: 63

### Week 4
This week things were a bit lighter. We created the last few new
systems and then added more content to older systems, such as
writing more character dialogue and adding more cut scenes for the player
to go through. It was a bit of a catch-up week to iron out some of the bugs
of previous weeks' code as well.

Accomplished:
- Final Sprites
- Dialogue Tree
- Task Assignment System
- Final Task Cut Scenes
- Version 0.2 Alpha

Complexity Score Total: 39

### Week 5
The big workload this week came with implementing the full task tree,
which meant tying together all the systems from previous weeks, such as
time, day, task assignment, and task cut scenes into a final coherent
storyline that could be played all the way through. The final product was
quite buggy and needed refinement, but was much more playable than previous
weeks' versions.

Accomplished:
- Task Tree
- Delete old or unused code
- More dialogue implemented
- Sound effects

Complexity Score Total: 33

### Final Push
The goal with the final push was to fully iron out all the kinks and bugs
with the full-implemented task system. This took the form of playtesting
the game as much as we could. It was a tedious process because the game was
in its close to final state, meaning in order to test certain parts of the game,
you would need to play fully through other sections.

Version 1.0

## Summary of results, reflection
Overall, this project was a success. We accomplished all the requirements we
set in the first week. The game can be played all the way through from day 1 to
day 14 (assuming you don't catch covid), with minimal bugs and glitches. The player
starts the game in their room at 0600 with the next task being to fill out the medical
screening form on their desk. After filling out the form, the player is directed to turn
it in, which can be done by interacting with the HS stationed outside their room. Then
they go to morning colors, then go on a walk, then to formation and lunch, then have a
meeting with their company officer. While these tasks are being completed, the time will
go up a specific amount, generally one hour. After finishing their talk with the company
officer, the time will be 1600, the end of the work day. At this time, the next task will
read "Do as you wish," and the map opens up for the player to do whatever they want
until the time reads 22:00. Most days are the same, with some tasks during the workday
changing slightly; for example, some morning you are directed to go to breakfast instead
of colors, or go to the pool instead of go on a walk.

The dialogue systems works independent of the tasks. So when you talk to the company
officer, your roommate, or the random friend cadet, the interactions change depending
on what day it is, not the current task or time. At 22:00, the map closes down, which
forces the player to sleep if they want to advance time and go the next day. Interactions
with the friend cadet and doing certain tasks gives you a chance of catching covid. That
chance is set to 1% for most activities, and interactions that give you a chance of
catching covid also raise your morale. For instance, speaking to the friend cadet raises
your morale 10 points, but gives you a chance of catching covid. Interactions with the
company officer do not give you a chance of catching covid, but they lower your morale
by 20 points. There is also a 5% chance of getting bagged every time you interact
with your company officer, which results in a loss of 40 points. The player starts
the game with 50 morale points out of a possible maximum of 100.

There are two ways to lose the game and only one way to win. If the player's morale
reaches 0, then a lose screen immediately pops up and you must restart the game
to continue playing. If the player catches covid, they won't find out until they
go to sleep, which then brings up a lose screen rather than the sleeping cut scene.
The player wins if they go to sleep on the 13th day and don't trigger the covid lose
scene, meaning they reached the 14th day without catching covid. Generally, the player
has about a 60-70% chance of losing due to covid before reaching the final day. They
have exactly a 65% chance of being bagged by their company officer and losing
40 morale points. An exact chance for a morale loss case is hard to calculate, but
that was intended to be an unlikely scenario. It would be hard for a player to lose
due to morale since it is so easy to go complete morale boosting tasks. The morale
bar is meant more to force the player to go expose themselves to covid chances,
so they can't just sit in their room all day.

The project went really well overall, and I believe all members of the group
are happy with the final outcome. We were able to make it fairly complex,
with multiple systems interacting with each other and quite a bit of random
chance thrown in. Testing and modifying the code became very difficult towards
the end of the final push. Because there were so many systems and variables,
there was always a chance that editing one small line would set off a chain
reaction that affected all the other systems. The hardest part, however, for
most people, were the second and third weeks. Knowledge and experience with Godot
was very low for all members of the group not named Spencer. As a result, we
were pretty inefficient at writing those first few systems. For me personally,
(this is Hannah writing this part), the HUD system took over five hours of
work, most of which was spent struggling with Godot and looking up tutorials
online. Looking back, it seems ridiculous it took so long, but it's because
it was a learning experience. I reckon if we were to create the game over again
from scratch, it would take about half the amount of time because we know how
Godot works so much better. It really shows the importance of team experience
when it comes to projects like this.

The way we split up individual assignments worked well. No one person understands
every line of code in the entire final project, but we worked more efficiently as a
group because of it. The systems are all independent enough that everyone could
be coding at the same time, push to main, and generally it would merge without
any conflicts. We were able to specialize a bit more and do what were good
at. Alexander didn't feel as comfortable coding in Godot, so he worked on things
like the music, task cut scenes, sound effects, and the pause menu. Alexandra
wrote the dialogue, made the diagrams, play tested, and assigned issues in GitHub.
JC did all of the art by herself. Hannah did a lot of the heavy coding with the
movement and collision system, dialogue system, covid and bagging system, and the
final task tree. Spencer a lot of coding as well, with the task assignment system,
time and day system, and various other functions. He was also the permanent scrum
master/GitHub wizard of the team. He kept main up to date with other peoples' branches
and ensured we were completing our issues and staying on track with our sprints.
The project was definitely a team effort, and the group's cohesion, dedication, and
passion made it fun to complete, and a great learning experience.

## Demo
