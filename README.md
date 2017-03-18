# Adaptation of [Design Pattern for Humans](https://github.com/kamranahmedse/design-patterns-for-humans/blob/master/README.md) to Vala
Just an adaptation from the **PHP** examples to **Vala**, no goal on discussing, questioning or improving the indicated code.

## Numbering
	1. Creational
	  1. Simple Factory
	  2. Factory Method 
	  3. Abstract Factory
	  4. Builder
	  5. Prototype (See notes)
	  6. Singleton
	2. Structural
	  1. Adapter
	  2. Bridge
      3. Composite
      4. Decorator
      5. Facade
      6. Flyweight
      7. Proxy
	3. Behavioral
	  1. Chain of Responsibilty
	  2. Command
	  3. Iterator (See notes)
	  4. Mediator
	  5. Memento
	  6. Observer
	  7. Visitor
	  8. Strategy
	  9. State
	  10. Template Method
## Use
Just do
```shell
    make
```
To run the programs, do:
```shell
    ./build/<name of the pattern>
```
## Notes:
Object cloning is a bit controversial and there's no native clone method on GLib.Object class. To simplify, a clone method was added to the example class. The Iterator pattern example depends on PHP SPL Iterable and on the Vala example I'll use LibGee. This was done merely to recreate the **PHP** examples into runnable **Vala** code. I avoided dependencies but to simplify I added a libgee dependency to allow the use of HashMaps, ArrayLists and Iterables.

### Dependencies:
    - Valac
    - GLib
    - Libgee (0.8)
    
    Tested on Fedora 23, 25.
