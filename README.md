
About stereo-pipeline-arm-feedstock
===================================

Feedstock for building [NASA Ames Stereo Pipeline](https://github.com/NeoGeographyToolkit/StereoPipeline) on the Mac Arm architecture. The approach for now is very different than employed in the [regular feedstock](https://github.com/NeoGeographyToolkit/stereopipeline-feedstock), hence the separate repository.

Feedstock license: [Apache 2.0](https://github.com/NeoGeographyToolkit/stereo-pipeline-arm-feedstock/blob/main/LICENSE).

Stereo Pipeline license: Apache 2.0.

Summary: A suite of tools for producing terrain models published by NASA.

[Installing Stereo Pipeline](https://stereopipeline.readthedocs.io/en/latest/installation.html#conda-intro)

How to build
============

 - Clone this feedstock on a Mac Arm machine and cd to it.
 - Set:
 ```
    export OSX_SDK_DIR=$HOME/osx_sdk
```
- Run:
```
   python build-locally.py
```

Feedstock maintainers
=====================

* [@oleg-alexandrov](https://github.com/oleg-alexandrov)
