INCLUDE GLOBALS.ink
->start
// This is a simple interactive story using Ink

TITLE: A Simple Adventure

=== start ===
You find yourself in a forest. The trees are tall and the air is fresh.
What would you like to do?

* Look around
    The forest is peaceful, with sunlight streaming through the leaves.
    * Continue walking -> walking
    * Sit and rest -> resting

* Call out for help
    Your voice echoes through the trees, but there’s no response.
    * Try again -> call_again
    * Give up -> walking

=== walking ===
You decide to continue walking. After a while, you come across a fork in the path.
Do you want to go left or right?

* Go left
    You find a beautiful clearing filled with flowers.
    The adventure ends peacefully. 
    -> END

* Go right
    You encounter a deep, dark cave. Do you enter?

    * Yes
        The cave is dark and foreboding, but you find treasure inside!
        -> END

    * No
        You decide to stay safe and walk back home.
        -> END

=== resting ===
You sit down and rest for a while. It’s calm and relaxing.
Eventually, you decide to continue on your journey. -> walking

=== call_again ===
You call out again, but this time you hear rustling in the bushes. 
It’s just a squirrel.
You decide to move on. -> walking
