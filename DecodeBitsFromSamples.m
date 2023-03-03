function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,fs)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%   case_type:      The sampling frequency used to generate the sample sequence
%   fs:             The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence

if (nargin <= 2)
    fs = 1;
end

switch case_type
    
    case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
        % I don't know how this works so for now the reciever is just a
        % short circuit
        rec_bit_seq = rec_sample_seq;
        %%%
    case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        % I don't know how this works so for now the reciever is just a
        % short circuit
        index_samples = 1;
        index_bits = 1;
        rec_bit_seq = zeros(1, length(rec_sample_seq)/fs);
        while index_bits <= length(rec_bit_seq)
            curr_samples_arr = rec_sample_seq(1, index_samples: index_samples + fs-1);
            if sum(curr_samples_arr) < fs/2
                rec_bit_seq(index_bits) = 0;
            else
                rec_bit_seq(index_bits) = 1;
            end
            index_samples = index_samples + fs;
            index_bits = index_bits + 1;
        end
        %%%
    case 'part_3'
        %%% WRITE YOUR CODE FOR PART 3 HERE
        % I don't know how this works so for now the reciever is just a
        % short circuit
        rec_bit_seq = rec_sample_seq;
        %%%
end