#!/usr/bin/env python
# coding: utf-8
from setuptools import setup, find_packages
import sys

version = '0.0.1'

setup(
        name='awesome', # パッケージ名。他と被らないように適当に決める
        namespace_packages=['awesome'],
        version=version,
        description='Awesome utility.', # 短い説明
        long_description=open('README.md').read(),
        classifiers=[ # pypi登録用
            'Programming Language :: Python',
            'Programming Language :: Python :: 2',
            'License :: OSI Approved :: BSD License',
            ],
        keywords=['misc', 'awesome'],  # pypi登録用
        author='Tetsuya HAMAMOTO',
        author_email='temmings@gmail.com',
        url='http://h.amamoto.to/',
        license='BSD', # pypi登録用
        install_requires=[
            #'fs',
            #'pytz',
            #'SQLAlchemy',
            #'pyodbc',
            #'mysql-connector-python',
            ],
        packages=find_packages(),
        setup_requires=['pytest-runner'],
        tests_require=['pytest'],
        entry_points={
            "console_scripts": [
                "awesome = awesome.main:main",
                ]
            },
        )
