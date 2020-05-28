from setuptools import setup

setup(
    name='LinuxASMCallGraph',
    version='1.3',
    packages=['CallGraph', 'CallGraph.utils'],
    license='GPL-3.0',
    entry_points={
        'console_scripts': [
            'callgraph = CallGraph.CallGraph:Main',
        ]
    }
)
