#!/usr/bin/env python
# (C) Copyright 2023 European Centre for Medium-Range Weather Forecasts.
# This software is licensed under the terms of the Apache Licence Version 2.0
# which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
# In applying this licence, ECMWF does not waive the privileges and immunities
# granted to it by virtue of its status as an intergovernmental organisation
# nor does it submit to any jurisdiction.


import io
import os

import setuptools


def read(fname):
    file_path = os.path.join(os.path.dirname(__file__), fname)
    return io.open(file_path, encoding="utf-8").read()


package_name = "climetlab_neiv_nova_test_plugin"  # noqa: E501

version = None
lines = read(f"{package_name}/version").split("\n")
if lines:
    version = lines[0]

assert version


extras_require = {}

setuptools.setup(
    name=package_name,
    version=version,
    description=(
        "A dataset plugin for climetlab for the dataset neiv-nova-test-plugin"  # noqa: E501
    ),
    long_description=read("README.md"),
    long_description_content_type="text/markdown",
    author="Neiv Nova",
    author_email="neiv.nova@gmail.com",
    url="http://github.com/neivnova/climetlab-neiv-nova-test-plugin",
    license="Apache License Version 2.0",
    packages=setuptools.find_packages(),
    include_package_data=True,
    install_requires=["climetlab>=0.10.0"],
    extras_require=extras_require,
    zip_safe=True,
    entry_points={
        "climetlab.datasets": [
            # End-users will use cml.load_dataset("neiv-nova-test-plugin", ...)
            # see the tests/ folder for a example.
            "neiv-nova-test-plugin= climetlab_neiv_nova_test_plugin.main:Main",  # noqa: E501
            # Other datasets can be included here
            # "neiv-nova-test-plugin-dataset-2= climetlab_neiv_nova_test_plugin.main2:Main2",  # noqa: E501
        ]
        # source plugins would be here
        # "climetlab.sources": []
    },
    keywords="meteorology",
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: Apache Software License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: Implementation :: CPython",
        "Programming Language :: Python :: Implementation :: PyPy",
        "Operating System :: OS Independent",
    ],
)
