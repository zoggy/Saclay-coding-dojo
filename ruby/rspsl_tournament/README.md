# Rock-Scissor-Paper-Lizard-Spock Tournament

This randori is based on a implementation of the Rock-Scissor-Paper-Lizard-Spock game in a "tournament" fashion. Explanations 
about this game [here](http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock). (Maybe you are already familiar of this
game from the Big-Bang Theory series...)

## The rules:

* Scissors cuts Paper
* Paper covers Rock
* Rock crushes Lizard
* Lizard poisons Spock
* Spock smashes scissors
* Scissors decapitates Lizard
* Lizard eats Paper
* Paper disproves Spock
* Spock vaporizes Rock
* Rock crushes Scissors

## The "death match"

The Rock-Scissor-Paper-Lizard-Spock dead match input is encoded as a list, where the elements are 2-element lists that encode a player's name and
a player's strategy. Ex:

``` ruby
	[ [ "Rajesh", "Paper" ], [ "Sheldon", "Scissors" ] ]
```

... returns the list ["Sheldon", "Scissors"] since Scissors cuts Paper

## The tournament

The tournament input is encoded as a bracketed array of games, that is, each element can be considered its own tournament. Ex: 

``` ruby
	[
		[
			[ ["Rajesh", "Paper"], ["Sheldon", "Scissors"] ],
			[ ["Penny", "Rock"],  ["Howard", "Lizard"] ],
		],
		[ 
			[ ["Leonard", "Lizard"], ["Leslie", "Paper"] ],
			[ ["Bernadette", "Paper"], ["Stuart", "Spock"] ]
		]
	]
```
... returns the list ["Penny", "Rock"] since ... yeah... you've figured it out...
	
## Assumptions

* You can assume that the array is well formed (that is, there are 2^n players, and each one participates in exactly one match per round).