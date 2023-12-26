%%The Encoder and the Modulator (QPSk Encoder)

function transmitted_signal = transmitter(bit_stream, f_c, A_b, T_b, n) 
%n #samples/bit === the number of samples representing each bit
    if (f_c < (10/T_b))
        warning("The carrier frequency (fc) must be at least 10 times the bit rate (Rb)")
    end

    n_total = n*length(bit_stream);     % total number of samples 
    
    transmitted_signal = zeros(1, n_total);
    E_b = A_b^2 * T_b;
    basis_function = generate_basis_functions(f_c, T_b, n);

    for i=1 : 2 : length(bit_stream)
        %following the grey-coding
        sign_1 = (-1)^(bit_stream(i)+1);
        sign_2 = (-1)^(bit_stream(i+1)+1);
        transmitted_signal((i-1)*n +1 : (i+1)*n) = sign_1* sqrt(E_b) * basis_function(1,:) ...
                                                 + sign_2* sqrt(E_b) * basis_function(2,:);
    end    
end