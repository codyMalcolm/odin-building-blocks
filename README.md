# Building Blocks

## About

This is a collection of projects for the Odin Project. You can read more about the first set of projects [here](https://www.theodinproject.com/courses/ruby-programming/lessons/building-blocks), and the second set of projects [here](https://www.theodinproject.com/lessons/advanced-building-blocks).

## First set: Caesar Cipher, Stock Picker, and Substrings
There's not much to say about these. For the Caesar cipher, the "tests" are a description. For the stock picker, in the result of a tie, the match with the last buy date is the result that is returned. It always makes a buy, even if a loss is unavoidable. For all three projects, I left the informal tests in.

## Second set: Bubble Sort and Enumerable Methods
Most of the enumberable methods were very easy, although in some cases I didn't know that these methods worked with hashes, so that was helpful. But inject! I thought I understood the ins and outs of inject, but now I understand it so much more than before. As an example, I'd never given thought to how it determines the type of inital value to use when no parameter is provided. Further, I'd never considered the value of the initial parameter if the type of data you're working with is different than the output you want (for example, if you want to return an Integer that represents the total number of characters in an array of Strings). Very cool stuff. A note, I decided not to use my_each to facilitate the later methods. This is technically a big violation of DRY, since using my_each would eliminate all the `if Array (do x) elsif Hash (do y)` blocks, but the point here is to build a greater understanding of the Enumerable methods so I pursued this in that spirit.
