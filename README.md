Simple Codec
===========

A Simple Perceptual Audio Coder (and decoder)

The original version was written in 2002 as a school project.
[Click here to view the original report](http://perceptualentropy.com/coder.html)

I recently made some improvements that improve the audio quality.
I analyzed the masking function implementation, applied a more suitable masking function by lower the overall gain and adjust the spreading function.
I also applied an temporal masking to the encoder. It will abandon the components that will not be heard by human ear because of simoutaneous masking. 
Listen to some samples below:

## Audio Examples
Encoded Sounds: ([Click Here to Downloads These Sounds](http://www.perceptualentropy.com/newsounds/sounds.zip))

|Original|128kbps|64kbps|32kbps|
|--------|-------|------|------|
|[Flute](http://www.perceptualentropy.com/newsounds/fluteA.wav)|[Flute](http://www.perceptualentropy.com/newsounds/fluteB.wav)|[Flute](http://www.perceptualentropy.com/newsounds/fluteD.wav)|[Flute](http://www.perceptualentropy.com/newsounds/fluteF.wav)|
|[Drums](http://www.perceptualentropy.com/newsounds/drumsA.wav)|[Drums](http://www.perceptualentropy.com/newsounds/drumsB.wav)|[Drums](http://www.perceptualentropy.com/newsounds/drumsD.wav)|[Drums](http://www.perceptualentropy.com/newsounds/drumsF.wav)|
|[Speech](http://www.perceptualentropy.com/newsounds/speechA.wav)|[Speech](http://www.perceptualentropy.com/newsounds/speechB.wav)|[Speech](http://www.perceptualentropy.com/newsounds/speechD.wav)|[Speech](http://www.perceptualentropy.com/newsounds/speechF.wav)|


## Resource

http://eemedia.ee.unsw.edu.au/contents/elec9344/LectureNotes/Chapter%2013.pdf

https://ccrma.stanford.edu/~bosse/proj/node16.html

https://www.mp3-tech.org/programmer/docs/audiopaper1.pdf

http://www.cs.tut.fi/~sgn14006/PDF/L08-coding.pdf
