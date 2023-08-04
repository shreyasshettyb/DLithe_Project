document.addEventListener("DOMContentLoaded", function() {
  // Get the canvas element
  var ctx = document.getElementById("userChart").getContext("2d");

  // Generate the chart
  var userChart = new Chart(ctx, {
    type: "line",
    data: {
      labels: ["Month 1", "Month 2", "Month 3", "Month 4", "Month 5", "Month 6"],
      datasets: [
        {
          label: "Number of Registered Users",
          data: [100, 200, 150, 300, 250, 400], // Replace with your actual data
          backgroundColor: "rgba(0, 123, 255, 0.3)",
          borderColor: "rgba(0, 123, 255, 0.8)",
          borderWidth: 2,
          pointBackgroundColor: "rgba(0, 123, 255, 0.8)",
          pointRadius: 5,
          pointHoverRadius: 8,
          fill: true
        }
      ]
    },
    options: {
      responsive: true,
      legend: {
        display: true,
        position: "top"
      },
      scales: {
        x: {
          display: true,
          title: {
            display: true,
            text: "Month"
          }
        },
        y: {
          display: true,
          title: {
            display: true,
            text: "Number of Users"
          }
        }
      }
    }
  });
});
