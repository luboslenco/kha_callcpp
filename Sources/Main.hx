package;

import kha.System;

@:headerCode('
#include "MyClass.h"
')
class Main {

	public static function main() {

		System.init({title: "Empty", width: 800, height: 600}, function() {

			var result = 0;

			untyped __cpp__('MyClass* myClass = new MyClass();');
			untyped __cpp__('result = myClass->testFunction();');
			trace('Result: ' + result);

			untyped __cpp__('result = MyClass::staticFunction();');
			trace('Result: ' + result);
		});
	}
}
