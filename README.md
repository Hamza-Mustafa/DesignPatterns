# Design Patterns
Design patterns are extremely useful for helping you break down complex systems into components / Reuseable solution to common problems.

GANG OF FOUR : ---------------------------------------------------------------------------
Design Patterns: Elements of Reusable Object-Oriented Software, published in 1994 and authored by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides, collectively referred to as the Gang of Four (GoF)

## 1- Singleton Pattern --------------------------

The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time.

An instance of a class is traditionally known as an object.

Note: Apple uses this approach a lot. For example: UserDefaults.standard, UIApplication.shared, UIScreen.main, FileManager.default all return a Singleton object.

first consider other ways to accomplish your task, singletons are not appropriate if you’re simply trying to pass information from one view controller to another. Instead, consider passing models via an initializer or property.

Singleton are create ways to organize your code that needs to initialize only once and available every where inside application or code. It initializes your class instance single time only with static property and it will share your class instance globally.

To ensure there is only one instance of your singleton, you must make it impossible for anyone else to make an instance. Swift allows you to do this by marking the initializers as private. You can then add a static property for the shared instance, which is initialized inside the class.

## 2- # Factory Pattern --------------------------

The factory pattern separates the implementation details of creating objects from the common interface that allows users to generically use the object.

What makes this pattern really useful is that each class is in charge of its implementation and can do anything as long as it adheres to the protocol

Encapsulation of concrete types which are bound by a common interface. In this case such knowledge would belong to one type, a factory. Factory’s consists of method set (static or not), which returns instances of the common interface type and has meaningful names so we know which one must be called for a specific purpose.

Our factory hides the need to know the type of object created because we will use our interface methods when we want to do anything with the created object. The added benefit of doing this is that we can add, change, or remove concrete objects from our factory without changing our client code!

## 3- Builder Pattern --------------------------

Builder Pattern provides intermediate layer for the object creation
we can modify all the properties of an object with the help of the method provided inside builder layer
and for the properties we dont wanna change will pick default configuration from builder class
for the object creation we always rely on the build object method of the builder class

Problem in this practice is we have to set values of all the attributes everytime we make burger and all attributes remain in memory
 
Builder Function :
it is responsible for creating burger object which is used for customized values and set default values

## 4- Prototype Pattern --------------------------

The prototype pattern creates new objects by copying an existing object, known as the prototype.

it is useful when you have a very basic configuration for an object and you'd like to give (clone) those predefined values to another one.

This approach has some benefits, one is for example that you don't have to subclass, but you can configure clones individually. This also means that you can remove a bunch of boilerplate (configuration) code if you are going to use prototypes.
