function bit_sequence = image_to_bits(image)
    casted_type_image = typecast(image(:),'uint8');
    image_binary_repr = dec2bin(casted_type_image, 8) - '0';
    bit_sequence = reshape(image_binary_repr.', 1, []);
end