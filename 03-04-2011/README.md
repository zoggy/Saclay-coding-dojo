# Proposition 1 - Random text generator

Let's teach our computer how to write marvelous random texts... (and maybe publish them in a scientific conference for example).

## Using markov chains

Generating a true random text in ruby can be somehow easy:

``` ruby
	(1..100).map{(("a".."z").to_a + [" "] * 10)[rand(40)]}.join
```
However, our goal is to generate a sentence as close as possible from english, like this. 

``` ruby
	Can you put a few years of your twin-brother Alfred, 
	who was apt to rally round a bit. 
	I should strongly advocate the blue with milk
```

One way of doing this is using [Markov chains](http://en.wikipedia.org/wiki/Markov_chain).

The main idea of a markov chain is to analyze past events in order to predict future events. In that way, a common use of markov chains coulb be the parsing of texts and the analysis of which words 
(or characters) are commonly followed by another words. A pseudo-random text can be generated in a more elegant way following this idea.

## Objective

The main objective of this randori is to generate random text form an input (preferentially, a big one) indicating the starting word and the numbers of phrases to be generated. Ex:

``` ruby
	mc = Markov.new(File.read("Lord of the rings - The two towers"))
	mc.generate("One", 5)
```

We can use some input examples from [Project Gutenberg](http://www.gutenberg.org/).

## Pitfalls

* TDD for random techiniques can be difficult to design.
* Ponctuation can be difficult to handle.
* Do we need to handle upcase?