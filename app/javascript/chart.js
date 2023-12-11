// app/assets/javascripts/chart.js

document.addEventListener("DOMContentLoaded", function() {
  var ctx = document.getElementById('myChart').getContext('2d');

  // Sample data for demonstration purposes
  var labels = ['C02'];
  var datasets = [{
    label: 'Room 3',
    data: [45],
    backgroundColor: 'rgba(75, 192, 192, 0.2)',
    borderColor: 'rgba(75, 192, 192, 1)',
    borderWidth: 1
  }];

  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels,
      datasets: datasets
    },
    options: {
      // Customize options as needed
    }
  });
});
