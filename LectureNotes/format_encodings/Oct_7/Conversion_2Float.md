## Conversion: Binary Real to Floating Point

# Algorithm
The following steps can be used to convert a binary real to IEEE floating point format.  An example is provided:

1. Enter the real binary number: ``- 101011.010101``
2. Represent the number in scientific notation" ``- 1.01011010101 x 2^5``
3. Represent the exponent in binary: ``- 1.01011010101 x 2^101`` (5)
   - Note the decimal represpentation of the exponent contines to be denoted below.
4. Identify the following components within the scientific notation:
   1. the sign: ``-``
   2. the whole part: ``1``
   3. the radix: ``.``
   4. the fractional part: ``01011010101``
   5. the scientific-base: ``x 2^``
   6. the exponent: ``101`` (5)

5. Use the following table, to determine
   - the number of bits used for each encoded component, and 
   - the bias used for the exponent.

| Encoding  | Total | Sign | Exponent | Mantissa |  Bias |
| --------- | ----: | :--: | -------: | -------: | ----: |
| Comp122   |     8 |  1   |  3       |        4 |     3 |
| Binary16  |    16 |  1   |  5       |       10 |    15 |
| Binary32  |    32 |  1   |  8       |       23 |   127 |
| Binary64  |    64 |  1   |  11      |       52 |  1024 |
| Binary128 |   128 |  1   |  15      |      112 | 16383 |


6. Modify the encoded components, based upon the desired floating point representation
   1. sign: 
      - Set to ``1`` if "-", reset to ``0`` otherwise
   2. exponent: 
      - Add the bias to the exponent.
      - Pad the exponent to obtain the desired number of bits.
      - Always pad on the left side of the exponent.
      - If you have to trim the exponent or if it is negative, you can't use the specific encoding format.
   3. mantissa: 
      - Pad or trim the mantissa to obtain the desired number of bits.
      - Always pad or trim on the right side of the mantissa.
7. Concatenate the three components together:


----
# Examples

1. Comp122 (quarter):
   - Sign: ``1``
   - Expon: ``101`` (5) -->  ``1000`` ( 8 = 5 + 3)
   - Mantissa: ``01011010101`` --> ``0101`` 
   - Note: the number is to large for this encoding scheme

| S  | E (3)  | M (4) | 
| -- | ------ | ----- | 
| 1  |  err   |  0101 | 

1. Binary16 (half):
   - Sign: ``1``
   - Expon: ``101`` (5) -->  ``10100`` (20 = 5 + 15)
   - Mantissa: ``01011010101`` --> ``0101101010`` 
   - Note: precision is lost via this encoding scheme

| S  | E (5)  | M (10) | 
| -- | ------ | ----- | 
| 1  |  10010 |  0101 1010 10 | 


2. Binary32 (single):   
   - Sign: ``1``
   - Expon: ``101`` (5) -->  ``1000 0100`` (132 = 5 + 127)
   - Mantissa: ``01011010101`` --> ``010110101010000..0`` 

| S  | E (8)  | M (23) | 
| -- | ------ | ----- | 
| 1  |  1000 0100 |  0101 1010 1010 0000 0000 000 | 

3. Binary64 (double):
   - Sign: ``1``
   - Expon: ``101`` (5) -->  ``100 0000 0101`` (1029 = 5 + 1024)
   - Mantissa: ``01011010101`` --> ``0101 1010 1010 0000 00000000 00000000 00000000 000000 0000`` 

| S  | E (11)  | M (52) | 
| -- | ------ | ----- | 
| 1  |  100 0000 0101 |  0101 1010 1010 0000 00000000 00000000 00000000 000000 0000 | 


4. Binary128 (quad)
   - Sign: ``1``
   - Expon: ``101`` (5) -->  ``100 0000 0000 0100`` (16388 = 5 + 16383)
   - Mantissa: ``01011010101`` -->
     - <sup><sub>``0101 1010 1010 0000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 0`` </sup></sub>

| S  | E (15)  | M (122) | 
| -- | ------ | ----- | 
| <sup><sub> 1 </sub></sup> |  <sup><sub>100 0000 0000 0100</sub></sup> | <sup><sub> 0101 1010 1010 0000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 0</sub></sup> |
