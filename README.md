Readability-Pharo
=================

**Metrics to determine readability and comprehension difficulty for contemporary English text.**

* [Pharo 7.0](http://pharo.org/) reference platform.
* Examples and tests included.

## Metrics Included

* [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index)
* [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index)
* [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests)
* [Flesch Reading Ease](https://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests#Flesch_reading_ease)
* [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index)
* [SMOG Grade](http://en.wikipedia.org/wiki/SMOG)

## Install

In a Pharo playground, evaluate:

```smalltalk
Metacello new 
  repository: 'github://brackendev/Readability-Pharo';
  baseline: 'Readability';
  load.
```

## Example Usage

In a Pharo playground, evaluate:

```smalltalk
GTPlayground openUrl: 'http://ws.stfx.eu/N07H5OFUTG00'.
```

Or evaluate:

```smalltalk
Readability examples.
```

## Ports

* [Objective-C](http://brackendev.github.io/Readability-Objective-C/)
* [Swift](http://brackendev.github.io/Readability-Swift/)
* [VisualWorks](https://brackendev.github.io/Readability-VisualWorks/)

## Acknowledgements

* [E.A. Smith, EdD and R.J. Senter, PhD](https://apps.dtic.mil/dtic/tr/fulltext/u2/667273.pdf), for the [Automated Readability Index](http://en.wikipedia.org/wiki/Automated_Readability_Index).
* [Meri Coleman and T.L. Liau](https://psycnet.apa.org/record/1975-22007-001) for the [Coleman–Liau Index](http://en.wikipedia.org/wiki/Coleman–Liau_index).
* [Rudolf Flesch](https://en.wikipedia.org/wiki/Rudolf_Flesch) and [J. Peter Kincaid](https://en.wikipedia.org/wiki/J._Peter_Kincaid) for the [Flesch-Kincaid Grade Level](http://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests).
* [Rudolf Flesch](https://en.wikipedia.org/wiki/Rudolf_Flesch) for the [Flesch Reading Ease](https://en.wikipedia.org/wiki/Flesch–Kincaid_readability_tests#Flesch_reading_ease).
* Robert Gunning for the [Gunning Fog Index](http://en.wikipedia.org/wiki/Gunning_fog_index).
* [G. Harry McLaughlin](https://ogg.osu.edu/media/documents/health_lit/WRRSMOG_Readability_Formula_G._Harry_McLaughlin__1969_.pdf) for the [SMOG Grade](http://en.wikipedia.org/wiki/SMOG).
* The [Pharo team](https://github.com/orgs/pharo-project/people) and [contributors](https://github.com/pharo-project/pharo/graphs/contributors) for [Pharo](http://pharo.org/), the pure object-oriented programming language and a powerful environment, focused on simplicity and immediate feedback.
* [Sven Van Caekenberghe](https://github.com/svenvc) for [Shared Smalltalk Workspaces](http://ws.stfx.eu/), a free web service to share Smalltalk workspaces.

## Author

[brackendev](https://www.github.com/brackendev)

## License

Readability-Pharo is released under the MIT license. See the LICENSE file for more info.
