// Reusing class instance in multiple functions
package;

import kha.System;

@:headerCode('
#include "MyClass.h"
')

@:headerClassCode('MyClass* myClass;')
class Test {

	public function new() {

		System.init({title: "Empty", width: 800, height: 600}, function() {
			init();
			trace('Result: ' + getResult());
		});
	}

	function init() {
		untyped __cpp__('this->myClass = new MyClass();');
	}

	function getResult():Int {
		var result = 0;
		untyped __cpp__('result = this->myClass->testFunction();');
		return result;
	}
}
