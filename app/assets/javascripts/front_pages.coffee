# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# randomScalingFactor = ->
#   Math.round Math.random() * 100
#
# @four_charts = (id_value, array) ->
#
#   #the array passed in, is wrong.
#   array_date = [1,20,20,20,20]
#   organic_array = [1,10,30,40,50]
#   paid_array = [1,20,20,10,10]
#   viral_array = [1,20,33,22,11]
#   non_paid_array = [1,20,2,2,20]
#
#   # i = 0
#   # while i < array.length
#   #   array_date = array[i]["date"]
#   #   organic_array = array[i]["organic"]
#   #   paid_array = array[i]["paid"]
#   #   viral_array = array[i]["viral"]
#   #   non_paid_array = array[i]["dailyReach"]
#
#   data =
#   labels: array_date
#   datasets: [
#     {
#       label: 'Daily reach'
#       fillColor: 'rgba(146,123,209,0.4)'
#       strokeColor: 'rgba(146,123,209,0.4)'
#       pointColor: 'rgba(146,123,209,0.4)'
#       pointStrokeColor: '#fff'
#       pointHighlightFill: '#fff'
#       pointHighlightStroke: 'rgba(146,123,209,0.4)'
#       data: non_paid_array
#     }
#     {
#       label: 'Organic'
#       fillColor: 'rgba(231,226,74,0.4)'
#       strokeColor: 'rgba(231,226,74,0.4)'
#       pointColor: 'rgba(231,226,74,0.4)'
#       pointStrokeColor: '#fff'
#       pointHighlightFill: '#fff'
#       pointHighlightStroke: 'rgba(231,226,74,0.4)'
#       data:organic_array
#     }
#     {
#       label: 'Viral'
#       fillColor: 'rgba(227,0,53,0.4)'
#       strokeColor: 'rgba(227,0,53,0.4)'
#       pointColor: 'rgba(227,0,53,0.4)'
#       pointStrokeColor: '#fff'
#       pointHighlightFill: '#fff'
#       pointHighlightStroke: 'rgba(227,0,53,0.4)'
#       data: viral_array
#     }
#     {
#       label: 'Paid'
#       fillColor: 'rgba(220,220,220,0.4)'
#       strokeColor: 'rgba(220,220,220,0.4)'
#       pointColor: 'rgba(220,220,220,0.4)'
#       pointStrokeColor: '#fff'
#       pointHighlightFill: '#fff'
#       pointHighlightStroke: 'rgba(220,220,220,0.4)'
#       data: paid_array
#     }
#   ]
#
#   options =
#   animation: false
#   scaleShowGridLines: false
#   scaleGridLineColor: 'rgba(0,0,0,.05)'
#   scaleGridLineWidth: 1
#   scaleShowHorizontalLines: true
#   scaleShowVerticalLines: true
#   bezierCurve: true
#   bezierCurveTension: 0.4
#   pointDot: true
#   pointDotRadius: 4
#   pointDotStrokeWidth: 1
#   pointHitDetectionRadius: 20
#   datasetStroke: false
#   datasetStrokeWidth: 2
#   datasetFill: true
#   legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend legend \"><% for (var i=0; i<datasets.length; i++){%><li class=\"left_margin_10\"><div class=\"smallsquare float_left\" style=\"background-color:<%=datasets[i].strokeColor%>\"></div><span class=\"float_left left_margin_10 right_margin_8 \"><%if(datasets[i].label){%><%=datasets[i].label%><%}%> </span> </li><%}%></ul>"
#
#   ctx = document.getElementById("#{id_value}").getContext('2d')
#   myNewChart = new Chart(ctx).Line(data, options);
#   legend = myNewChart.generateLegend()
#   $("##{id_value}_legend").append(legend)
#   return myNewChart
#
#
# barChartData =
#   labels: [
#     'January'
#     'February'
#     'March'
#     'April'
#     'May'
#     'June'
#     'July'
#   ]
#   datasets: [
#     {
#       fillColor: 'rgba(220,220,220,0.5)'
#       strokeColor: 'rgba(220,220,220,0.8)'
#       highlightFill: 'rgba(220,220,220,0.75)'
#       highlightStroke: 'rgba(220,220,220,1)'
#       data: [
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#       ]
#     }
#     {
#       fillColor: 'rgba(151,187,205,0.5)'
#       strokeColor: 'rgba(151,187,205,0.8)'
#       highlightFill: 'rgba(151,187,205,0.75)'
#       highlightStroke: 'rgba(151,187,205,1)'
#       data: [
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#         randomScalingFactor()
#       ]
#     }
#   ]
#
# window.onload = ->
#   ctx = document.getElementById('canvas').getContext('2d')
#   window.myBar = new Chart(ctx).Bar(barChartData, responsive: true)
#   return
