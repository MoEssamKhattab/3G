function restored_bit_stream = reciever(received_signal, f_c, T_b, n)
    restored_bit_stream = zeros(1, length(received_signal)/n);
    
    basis_function = generate_basis_functions(f_c, modulation_technique, T_b, n);
    index = 1;
    
    for i= 1: 2*n: length(received_signal)- 2*n+1       %loop on each symbol
        symbol = received_signal(i:i+2*n-1);
        
        observation_vector = detector(symbol, basis_function);
        
        estimate = decision_making_device(observation_vector);
        
        restored_bit_stream(index:index+1) = estimate;
        
        index = index +2;
    end
end

