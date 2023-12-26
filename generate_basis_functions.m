function basis_functions = generate_basis_functions(f_c, T_b, n)
    t_step = T_b / n;

    t_symbol = 0 : t_step : 2*T_b - t_step;
    basis_functions = zeros(2, length(t_symbol));

    basis_functions(1,:) = sqrt(1/T_b) * cos(2*pi*f_c* t_symbol);
    basis_functions(2,:) = sqrt(1/T_b) * sin(2*pi*f_c* t_symbol);
end