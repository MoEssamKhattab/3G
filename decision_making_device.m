function estimate = decision_making_device(observation_vector)
    [~, I] = max(observation_vector);
            
    switch (I)
        case 1
            estimate = [1 0];
        case 2
            estimate = [0 0];
        case 3
            estimate = [0 1];
        case 4
            estimate = [1 1];
    end
end