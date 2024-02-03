// Test case 1: Simple linear equation
f = @(t, u) 2*t + u; // dy/dt = 2t + y
u0 = 1; // Initial value of y
t0 = 0; // Initial value of t
t_fin = 1; // Final value of t
h = 0.1; // Step size
expected_result = 2.71828; // Expected value of y at t_fin
computed_result = euler(u0, t0, t_fin, f, h);
assert(abs(computed_result - expected_result) < 1e-5, "Test case 1 failed");

// Test case 2: Non-linear equation
f = @(t, u) u^2; // dy/dt = y^2
u0 = 1; // Initial value of y
t0 = 0; // Initial value of t
t_fin = 1; // Final value of t
h = 0.1; // Step size
expected_result = 1.10517; // Expected value of y at t_fin
computed_result = euler(u0, t0, t_fin, f, h);
assert(abs(computed_result - expected_result) < 1e-5, "Test case 2 failed");

// Test case 3: System of equations
f = @(t, u) [u(2); -u(1)]; // d^2y/dt^2 = -y
u0 = [0; 1]; // Initial values of y and dy/dt
t0 = 0; // Initial value of t
t_fin = 1; // Final value of t
h = 0.1; // Step size
expected_result = [0.54030; -0.84147]; // Expected values of y and dy/dt at t_fin
computed_result = euler(u0, t0, t_fin, f, h);
assert(norm(computed_result - expected_result) < 1e-5, "Test case 3 failed");