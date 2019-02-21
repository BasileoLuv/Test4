from setuptools import setup
from datetime import datetime
import os
from setuptools.command.install import install as InstallCommand


class Install(InstallCommand):
    """ Customized setuptools install command which uses pip. """

    def run(self, *args, **kwargs):
        import pip
        pip.main(['install', '.'])
        InstallCommand.run(self, *args, **kwargs)


setup(
    name="Python-Calculator",
    version='0.4.4-SNAPSHOT',
    packages=['calc'],
    test_suite="tests",
    scripts=[
        'calculator_app.py',
        'service.py',
        'README.md',
        'newcommit.txt',
        'curr-snapshot.txt',
        'releaseornot.sh'],
    install_requires=['Flask'],
)
