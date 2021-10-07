## Conversion: Binary Real to Floating Point

# Algorithm

1. Enter the real number, e.g., ``- 1010.1101``:   
2. Represent the number in scientific notation, e.g., ``- 1.0101101 x 2^3``
3. Represent the exponent in binary, e.g., ``- 1.0101101 x 2^11 (3)``
4. Identify the following components within the scientific notation:
   1. the sign of the number, e.g., ``- (negative)``:
   2. the whole number, e.g, ``1``
   3. the mantissa, e.g., ``0101101``
   4. the exponent, e.g., ``11 (3)``


5. Modify the components, based upon the desired floating point representation
   1. sign: 
      - set the value to 1 if its negative, other set it to one: ``1`` 
   2. whole number:
      - drop it!
   3. mantissa: ()
      - trim the mantissa to the desired number of bits (note we lost information)
      - add superfluous zeros on the right to obtain the required number of bits
   4. exponent: 
      - add the bias to the exponent
      - if the new exponent is negative

| Encoding  | #Bits | Sign | Exponent | Mantissa ||  Bias |
|-----------|-------|:----:|----------|---------:||------:|
| Binary16  |    16 |  1   |  5       |       10 ||  15  |
| Binary32  |    32 |  1   |  8       |       23 ||  127 |
| Binary64  |    64 |  1   |  11      |       52 ||  1024|
| Binary128 |   128 |  1   |  15      |       112||  16383|




----
# Examples

1. Binary16:
2. Binary32:
3. Binary64:
4. Binary128: