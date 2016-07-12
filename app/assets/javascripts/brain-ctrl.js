(function() {
  "use strict";

  angular.module("app").controller("brainCtrl", function($scope, $http){
    var questionHolder;

    $scope.setup = function() {
      $scope.nextQuestion(1);
    };

    $scope.nextQuestion = function(currentQID){
      currentQID++;
      $http.get("/api/v1/survey/questions/" + currentQID + ".json").then(function(response){
        if (response.length) {
          $scope.currentQuestion = response.data.question;
          questionHolder = response.data.id;
          $scope.choices = response.data.answers;
        } else {
          $http.get("/api/v1/survey/results").then(function(response){

          });
        }

      });
    };

    $scope.submitAnswer = function(choice){
      $http.post("/api/v1/user_answers", {'answer': $scope.choice}).success(function(response){
        $scope.nextQuestion(questionHolder);
      });
    };
});
}());
