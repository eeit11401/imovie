$(function() {
    "use strict";

     // chart 1
	 
		  var ctx = document.getElementById('chart1').getContext('2d');
		
			var myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"],
					datasets: [{
						label: 'New Visitor',
						data: [3, 3, 8, 5, 7, 4, 6, 4, 6, 3],
						backgroundColor: '#fff',
						borderColor: "transparent",
						pointRadius :"0",
						borderWidth: 3
					}, {
						label: 'Old Visitor',
						data: [7, 5, 14, 7, 12, 6, 10, 6, 11, 5],
						backgroundColor: "rgba(255, 255, 255, 0.25)",
						borderColor: "transparent",
						pointRadius :"0",
						borderWidth: 1
					}]
				},
			options: {
				maintainAspectRatio: false,
				legend: {
				  display: false,
				  labels: {
					fontColor: '#ddd',  
					boxWidth:40
				  }
				},
				tooltips: {
				  displayColors:false
				},	
			  scales: {
				  xAxes: [{
					ticks: {
						beginAtZero:true,
						fontColor: '#ddd'
					},
					gridLines: {
					  display: true ,
					  color: "rgba(221, 221, 221, 0.08)"
					},
				  }],
				   yAxes: [{
					ticks: {
						beginAtZero:true,
						fontColor: '#ddd'
					},
					gridLines: {
					  display: true ,
					  color: "rgba(221, 221, 221, 0.08)"
					},
				  }]
				 }

			 }
			});  
		
		
    // chart 2

		var ctx = document.getElementById("chart2").getContext('2d');
			var myChart = new Chart(ctx, {
				type: 'doughnut',
				data: {
					labels: ["Direct", "Affiliate", "E-mail", "Other"],
					datasets: [{
						backgroundColor: [
							"#ffffff",
							"rgba(255, 255, 255, 0.70)",
							"rgba(255, 255, 255, 0.50)",
							"rgba(255, 255, 255, 0.20)"
						],
						data: [5856, 2602, 1802, 1105],
						borderWidth: [0, 0, 0, 0]
					}]
				},
			options: {
				maintainAspectRatio: false,
			   legend: {
				 position :"bottom",	
				 display: false,
				    labels: {
					  fontColor: '#ddd',  
					  boxWidth:15
				   }
				}
				,
				tooltips: {
				  displayColors:false
				}
			   }
			});
		
			var scriptJSON = document.createElement('script');
			var xhr = new XMLHttpRequest();
			xhr.open("GET","<c:url value='roomAnalysis' />", true);
			xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xhr.send();
			console.log("jalfshkjadnfjl");
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					console.log("inside");
					var rooms = JSON.parse(xhr.responseText);
					analysisF(rooms);
//	 				var divs = document.getElementById("somedivS");
//	 				divs.innerHTML = content;
				}
			}
			
			function analysisF(content){
			var figure ="";
			figure += "var chart = Highcharts.chart('container', {" + 

			  "title: {" + 
			    "text: '包廂使用率(%)'" + 
			  "}," + 

			  "subtitle: {" + 
			    "text: 'hi'" + 
			  "}," + 

			  "xAxis: {" + 
			    "categories: ["+content.roomName+"]" + 
			  "}," + 

			  "series: [{" + 
			    "type: 'column'," + 
			    "colorByPoint: true," + 
			    "data: ["+content.roomRate+"]," + 
			    "showInLegend: false" + 
			  "}]" + 

			"});";

					scriptJSON.innerHTML = figure;
					$("#hiFigure").before(scriptJSON);
			}


				$('#plain').click(function () {
				  chart.update({
				    chart: {
				      inverted: false,
				      polar: false
				    },
				    subtitle: {
				      text: 'Plain'
				    }
				  });
				});

				$('#inverted').click(function () {
				  chart.update({
				    chart: {
				      inverted: true,
				      polar: false
				    },
				    subtitle: {
				      text: 'Inverted'
				    }
				  });
				});

				$('#polar').click(function () {
				  chart.update({
				    chart: {
				      inverted: false,
				      polar: true
				    },
				    subtitle: {
				      text: 'Polar'
				    }
				  });
				});
		
		
   });	 
   