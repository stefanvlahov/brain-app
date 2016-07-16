(function() {
  "use strict";

  angular.module("app").controller("brainCtrl", function($scope, $http, $window){
    var questionHolder;
    var landingUrl = "http://" + $window.location.host + "/api/v1/survey/results";

    $scope.setup = function() {
      $scope.nextQuestion(1);
    };

    $scope.nextQuestion = function(currentQID){
      currentQID++;
      $http.get("/api/v1/survey/questions/" + currentQID + ".json").then(function(response){
          console.log(response);
        if (response.status === 200) {
            $scope.currentQuestion = response.data.question;
            // console.log(response.data.question);
            $scope.questionHolder = response.data.id;
            $scope.choices = response.data.answers;
        }
    });

    $scope.submitAnswer = function(choice){
      $http.post("/api/v1/results", {'answer_id': choice}).then(function(response){
        if ($scope.questionHolder < 11) {
            $scope.nextQuestion($scope.questionHolder);
        } else {
            $window.location.href = landingUrl;
        }
      });
    };
  };
});
}());
