function observation_vector = detector(symbol, basis_function)
    % Mimicking what happens in the matched filter; cross-correlating
    % the symbol with the each of the possible transmitted signals,
    % then taking the max value as our observable element (as if
    % sampled at t=T which is the max value of conv/xcorr)

    % Observable elements
    % according to grey-code
    x1 = max(xcorr(symbol, basis_function(1,:)));    % observable_element_1
    x2 = max(xcorr(symbol, basis_function(2,:)));    % observable_element_2

    observation_vector = [x1 x2];
end