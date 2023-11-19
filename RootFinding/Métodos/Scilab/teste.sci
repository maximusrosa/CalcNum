// Define x values
x = linspace(0, 1, 100);

// Define y values as a function of x
y = sin(x);

// Create the plot
plot(x, y);

// Add grid lines
xgrid();

// Add labels
xlabel('x');
ylabel('sin(x)');
title('Plot of sin(x) with grid lines');
