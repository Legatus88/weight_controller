var ctx = document.getElementById('weightChart');

var chartLabels = JSON.parse(ctx.getAttribute('data-dates'));
var chartData = JSON.parse(ctx.getAttribute('data-weights'));

var chart = new Chart(ctx, {
	type: 'line',
	data: {
		labels: chartLabels,
		datasets: [{
			label: 'Ваш прогресс',
			backgroundcolor: 'rgb(255, 99, 132)',
			borderColor: 'rgb(255, 99, 132)',
			data: chartData,
		}]
	},
});
