Spoon Frontend
=============

A front end for spoon in pharo.

Install:

~~~
Metacello new
    baseline: 'Spoon';
    repository: 'github://juliendelplanque/spoonfrontend/repository';
    load.
~~~

Add Spoon as a dependency of your project by adding the following to your metacello config:

~~~
spec baseline: 'Spoon' with: [
    spec repository: 'github://fstephany/spoonfrontend/repository' ].
~~~
