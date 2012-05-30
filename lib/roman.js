(function() {
  var TestClass,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  TestClass = (function() {

    function TestClass() {
      this.myValue = __bind(this.myValue, this);
    }

    TestClass.value = 5;

    TestClass.prototype.myValue = function() {
      return this.value;
    };

    return TestClass;

  })();

}).call(this);
