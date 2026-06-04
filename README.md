About earthlens-split-feedstock
===============================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/earthlens-feedstock/blob/main/LICENSE.txt)

Home: https://github.com/serapeum-org/earthlens

Package license: GPL-3.0-or-later

Summary: Remote sensing package for downloading satellite and climate data

Development: https://github.com/serapeum-org/earthlens

Documentation: https://serapeum-org.github.io/earthlens/

earthlens is a Python package for downloading satellite and climate
data from multiple sources, including the Climate Hazards Center
(CHIRPS / CHIRP / CHIRTS / WBGT / SPI / SPEI / CHC_CMIP6, via FTP),
ERA5 on AWS S3, the ECMWF Climate Data Store via cdsapi, and Google
Earth Engine. It provides a unified `EarthLens` facade that lazily
loads each backend so the optional SDK for a backend you don't use
never has to be installed.

The core `earthlens` package ships only the CHC (FTP) backend's
requirements. The optional backends are packaged as separate
metapackages that depend on `earthlens` plus the relevant SDK:

  * `earthlens-s3` — boto3 (ERA5-on-S3 backend)
  * `earthlens-ecmwf` — cdsapi (ECMWF/CDS backend)
  * `earthlens-gee` — earthengine-api + rtree (Google Earth Engine)
  * `earthlens-all` — pulls in every optional backend


Current build status
====================


<table><tr>
    <td>All platforms:</td>
    <td>
      <a href="https://github.com/conda-forge/earthlens-feedstock/actions/workflows/conda-build.yml">
        <img src="https://github.com/conda-forge/earthlens-feedstock/actions/workflows/conda-build.yml/badge.svg?event=push&branch=main">
      </a>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-earthlens-green.svg)](https://anaconda.org/conda-forge/earthlens) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/earthlens.svg)](https://anaconda.org/conda-forge/earthlens) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/earthlens.svg)](https://anaconda.org/conda-forge/earthlens) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/earthlens.svg)](https://anaconda.org/conda-forge/earthlens) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-earthlens--all-green.svg)](https://anaconda.org/conda-forge/earthlens-all) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/earthlens-all.svg)](https://anaconda.org/conda-forge/earthlens-all) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/earthlens-all.svg)](https://anaconda.org/conda-forge/earthlens-all) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/earthlens-all.svg)](https://anaconda.org/conda-forge/earthlens-all) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-earthlens--ecmwf-green.svg)](https://anaconda.org/conda-forge/earthlens-ecmwf) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/earthlens-ecmwf.svg)](https://anaconda.org/conda-forge/earthlens-ecmwf) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/earthlens-ecmwf.svg)](https://anaconda.org/conda-forge/earthlens-ecmwf) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/earthlens-ecmwf.svg)](https://anaconda.org/conda-forge/earthlens-ecmwf) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-earthlens--gee-green.svg)](https://anaconda.org/conda-forge/earthlens-gee) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/earthlens-gee.svg)](https://anaconda.org/conda-forge/earthlens-gee) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/earthlens-gee.svg)](https://anaconda.org/conda-forge/earthlens-gee) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/earthlens-gee.svg)](https://anaconda.org/conda-forge/earthlens-gee) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-earthlens--s3-green.svg)](https://anaconda.org/conda-forge/earthlens-s3) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/earthlens-s3.svg)](https://anaconda.org/conda-forge/earthlens-s3) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/earthlens-s3.svg)](https://anaconda.org/conda-forge/earthlens-s3) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/earthlens-s3.svg)](https://anaconda.org/conda-forge/earthlens-s3) |

Installing earthlens-split
==========================

Installing `earthlens-split` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

Once the `conda-forge` channel has been enabled, `earthlens, earthlens-all, earthlens-ecmwf, earthlens-gee, earthlens-s3` can be installed with `conda`:

```
conda install earthlens earthlens-all earthlens-ecmwf earthlens-gee earthlens-s3
```

or with `mamba`:

```
mamba install earthlens earthlens-all earthlens-ecmwf earthlens-gee earthlens-s3
```

It is possible to list all of the versions of `earthlens` available on your platform with `conda`:

```
conda search earthlens --channel conda-forge
```

or with `mamba`:

```
mamba search earthlens --channel conda-forge
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search earthlens --channel conda-forge

# List packages depending on `earthlens`:
mamba repoquery whoneeds earthlens --channel conda-forge

# List dependencies of `earthlens`:
mamba repoquery depends earthlens --channel conda-forge
```


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance,
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information, please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating earthlens-split-feedstock
==================================

If you would like to improve the earthlens-split recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/earthlens-split-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@MAfarrag](https://github.com/MAfarrag/)

