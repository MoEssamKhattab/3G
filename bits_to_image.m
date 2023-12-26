function image = bits_to_image(image_size, image_class, bit_sequence)
    reshaped_8_bit_seq = reshape(bit_sequence, 8, []);      % select each 8 bits
    char_repr_8_bit_seq = char(reshaped_8_bit_seq+'0');     % ASCII code of 0's and 1's to a string of 0's and 1's
    image_dec_repr = uint8(bin2dec(char_repr_8_bit_seq.')); 
    type_casted_image = typecast(image_dec_repr, image_class);
    image = reshape(type_casted_image, image_size);
end