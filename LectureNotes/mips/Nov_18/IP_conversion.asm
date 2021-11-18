# Sample program to convert the encoding of an IP address
#   integer --> dotted-decimal
#   dotted-decimal -> integer
# to it's dotted decimal equivalent

# Example i2dd:
#   Input:  -2102989117  (0x826eec3)
#   Output: 130.166.238.195

# Example dd2i:
#   Input: 130 166 238 195
#   Output: 0x826eec3

# Algorithm i2dd:
#   0. include some support code: syscall_macros.asm
#   1. a0 = read integer (0..2^32)
#   2. split integer into four bytes
#      - t0 = X[0:7] 
#      - t1 = X[8:15] 
#      - t2 = X[16:23] 
#      - t3 = X[24:31] 
#   3. print each of the bytes as integers separated with a "."

# Algorithm dd2i:
#   0. include some support code: syscall_macros.asm
#   1. (t0, t1, t2, t3) = read 4 bytes (each 0..2^8)
#   2. shift the each byte to be appropropriately postioned
#   3. merge the words together
#   3. print the resulting integer

