# Ruby: Pitfalls of Directly Modifying Instance Variables

This repository demonstrates a common but subtle error in Ruby: directly modifying instance variables using `instance_variable_set` or `instance_variable_get`. While these methods can be useful in specific scenarios, they often undermine the principles of encapsulation and lead to maintainability problems.

The `bug.rb` file shows an example of directly manipulating an instance variable, bypassing any potential validation or side effects that a properly implemented setter method might provide.  The `bugSolution.rb` shows a preferred approach using a setter method.

**Why avoid directly accessing instance variables?**

* **Encapsulation:**  Direct access breaks encapsulation—the principle of hiding internal data and implementation details from the outside. This makes code harder to understand, maintain, and debug.
* **Testability:**  Setter methods allow for easier unit testing, as you can mock or stub behavior without touching internal state.
* **Maintainability:**  Future changes to how the variable is handled (e.g., adding validation or logging) become more complex if you're relying on direct access.
* **Debugging:**  Tracing issues becomes harder when variables are modified outside their intended interface.

This example highlights the importance of using accessor methods for managing instance variables to create robust and maintainable Ruby code.