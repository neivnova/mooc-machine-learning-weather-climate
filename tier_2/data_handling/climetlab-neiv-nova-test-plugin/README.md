## climetlab-neiv_nova_test_plugin

A dataset plugin for climetlab for the dataset neiv-nova-test-plugin-main.


Features
--------

In this README is a description of how to get the dataset(s) provided by the python package neiv_nova_test_plugin.

## Datasets description

There are two datasets: 

### 1 : `main`
TODO: write documentation.


### 2 : TODO
No second dataset yet.


## Using climetlab to access the data

See the [demo notebooks](https://github.com/neivnova/climetlab-neiv-nova-test-plugin/tree/main/notebooks)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/neivnova/climetlab-neiv-nova-test-plugin/main?urlpath=lab)


- [demo_main.ipynb](https://github.com/neivnova/climetlab-neiv-nova-test-plugin/tree/main/notebooks/demo_main.ipynb)
[![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/neivnova/climetlab-neiv-nova-test-plugin/blob/main/notebooks/demo_main.ipynb) 
[![Open in colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/neivnova/climetlab-neiv-nova-test-plugin/blob/main/notebooks/demo_main.ipynb) 
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/neivnova/climetlab-neiv-nova-test-plugin/main?filepath=notebooks/demo_main.ipynb)
[<img src="https://deepnote.com/buttons/launch-in-deepnote-small.svg">](https://deepnote.com/launch?name=MyProject&url=https://github.com/neivnova/climetlab-neiv-nova-test-plugin/tree/main/notebooks/demo_main.ipynb)


- TODO.


The climetlab python package allows easy access to the data with a few lines of code such as:
``` python

!pip install climetlab climetlab-neiv-nova-test-plugin
import climetlab as cml
ds = cml.load_dataset("neiv-nova-test-plugin", date="20201231")
ds.to_xarray()
```


Support and contributing
------------------------

Either open a issue on github if this is a github repository, or send an email to email@example.com.

LICENSE
-------

See the LICENSE file.
(C) Copyright 2023 European Centre for Medium-Range Weather Forecasts.
This software is licensed under the terms of the Apache Licence Version 2.0
which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
In applying this licence, ECMWF does not waive the privileges and immunities
granted to it by virtue of its status as an intergovernmental organisation
nor does it submit to any jurisdiction.

Authors
-------

Neiv Nova and al.

See also the CONTRIBUTORS.md file.
