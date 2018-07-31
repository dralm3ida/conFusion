'use strict';

angular.module('confusionApp')
.constant("baseURL","http://localhost:3100/")
.service('menuFactory', ['$resource', 'baseURL', function($resource, baseURL) {

	this.getDishes = function(){
       	return $resource(baseURL+"dishes/:id",null,  {'update':{method:'PUT' }});
    };
	this.getPromotions = function(){
		return $resource(baseURL+"promotions/:id",null,  {'update':{method:'PUT' }});
	};
}])

.factory('corporateFactory', ['$resource', 'baseURL', function($resource, baseURL) {    
	var corpfac = {};
  
  	corpfac.getLeaders = function(){
		return $resource(baseURL+"leadership/:id",null,  {'update':{method:'PUT' }});
	};
    return corpfac;
        }])

.factory('feedbackFactory', ['$resource', 'baseURL', function($resource, baseURL) {    
	var feedfac = {};
  
  	feedfac.getFeedbacks = function(){
		return $resource(baseURL+"feedback/:id");
	};
    return feedfac;
        }])
;