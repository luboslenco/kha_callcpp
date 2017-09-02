# kha_callcpp

Example on including C++ code and then calling it. A simple class is defined in `Libraries/mylib` and added to `khafile.js`.

```cpp
class MyClass {
public:
	MyClass();
	int testFunction(); // return 6
	static int staticFunction(); // return 7
};
```

Afterwards, C++ class is accessed from Haxe:

```hx
// ...
var result = 0;

// Construct class and call function
untyped __cpp__('MyClass* myClass = new MyClass();');
untyped __cpp__('result = myClass->testFunction();');

// Call static function
untyped __cpp__('result = MyClass::staticFunction();');
// ...
```

Clone repository and run:

```
git clone --recursive https://github.com/luboslenco/kha_callcpp
node Kha/make --run
```

Expected output:

```
Main.hx:18: Result: 6
Main.hx:21: Result: 7
```
