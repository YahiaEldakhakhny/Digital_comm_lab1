function bit_seq = GenerateBits(N_bits)
    %
    % Inputs:
    %   N_bits:     Number of bits in the sequence
    % Outputs:
    %   bit_seq:    The sequence of generated bits
    %
    % This function generates a sequence of bits with length equal to N_bits

    bit_seq = zeros(1,N_bits);
    %%% WRITE YOUR CODE HERE
    % randi(f, r, c) is a built-in function in matlab that returns a
    % r x c matrix of random integers in the intervel [1, f] (it starts
    % from 1 by default) so I made it draw random integers from the
    % interval [1, 2] then I subtracted 1 to make all the numbers 0s and 1s
    bit_seq = randi(2,1, N_bits) - 1;
end
    %%%