function keyword($scope) {
    $scope.pre_set_keywords = ['small-business', 'tech', 'office products', 'ecofriendly'];
    $scope.keywords = [];
    $scope.kw = '';
    
    $scope.add_kw = function(word) {
    	word_string = (word || this.kw);
    	words = word_string.split(' ');
    	this.keywords = this.keywords.concat(words).getUnique();
    	this.kw = '';
    };
   
    $scope.remove_kw = function(word) {
    	for(var i = 0, l = this.keywords.length; i < l; ++i){
    		if (this.keywords[i] == word) {
				this.keywords.remove(i, i);
    			break;
    		}
    	}
    };
}

angular.module('app', []).directive('onEnter', function() {
    return function(scope, element, attrs) {
        element.bind("keydown keypress", function(event) {
            if(event.which === 13) {
                scope.$apply(function(){
                    scope.$eval(attrs.onEnter);
                });

                event.preventDefault();
            }
        });
    };
});

Array.prototype.getUnique = function(){
   var u = {}, a = [];
   for(var i = 0, l = this.length; i < l; ++i){
      if(u.hasOwnProperty(this[i])) {
         continue;
      }
      a.push(this[i]);
      u[this[i]] = 1;
   }
   return a;
}

Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};
