Readability-Pharo
=================

**Determine readability and comprehension difficulty for contemporary English text.**

* [Pharo 9.0](http://pharo.org/) reference platform.
* Examples and tests included.

## Metrics Included

* [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index)
* [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index)
* [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Flesch Reading Ease](https://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests#Flesch_reading_ease)
* [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index)
* [SMOG Grade](http://en.wikipedia.org/wiki/SMOG)

## Install

In a Playground, _Do it_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/Readability-Pharo:v1.0.0/src';
  baseline: 'Readability';
  load.
```

## Example Usage

In a Playground, _Do it_:

```smalltalk
GTPlayground openUrl: 'http://ws.stfx.eu/N07H5OFUTG00'.
```

...or _Inspect it_:

```smalltalk
Readability examples.
```

## Ports

* [Objective-C](https://github.com/brackendev/Readability-Objective-C)
* [Pharo](https://github.com/brackendev/Readability-Pharo)
* [Swift](https://github.com/brackendev/Readability-Swift)
* [VisualWorks](https://github.com/brackendev/Readability-VisualWorks)

## Author

Bracken Spencer

* [GitHub](https://www.github.com/brackendev)
* [LinkedIn](https://www.linkedin.com/in/brackenspencer/)
* [Twitter](https://twitter.com/brackendev)

## License

Readability-Pharo is released under the MIT license. See the LICENSE file for more info.
