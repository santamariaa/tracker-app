(function() {
 "use strict";

 angular.module("app").controller("relationshipsCtrl",["$scope", "$http", function($scope, $http){
     
     $scope.setup = function(){
        $scope.user_id = window.user_id
       $http.get('api/v1/relationships.json?user_id=' + $scope.user_id).then(function(response){
        
            var relationships = response.data;

            $('#pie_graph').highcharts({
             chart: {
                 plotBackgroundColor: null,
                 plotBorderWidth: null,
                 plotShadow: false,
                 type: 'pie'
             },
             title: {
                 text: 'Browser Productivity Breakdown'
             },
             tooltip: {
                 pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
             },
             plotOptions: {
                 pie: {
                     allowPointSelect: true,
                     cursor: 'pointer',
                     dataLabels: {
                         enabled: true,
                         format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                         style: {
                             color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                         }
                     }
                 }
             },
             series: [{
                 name: 'Brands',
                 colorByPoint: true,
                 data: relationshipsArray(relationships)
             }]
            });

        });

     };

     function relationshipsArray(relationships){
        var arr = [];

        for (var i = 0; i < relationships.length; i++) {
            var relationship = relationships[i];
            var obj = {
                name: relationship.url,
                y: relationship.total_time
            }

            arr.push(obj)
        };

        return arr;

     }

     window.scope = $scope; 
   }]);
}());