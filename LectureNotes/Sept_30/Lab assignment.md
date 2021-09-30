# Lab assignment for September 30, 2021


1. Decode the following bit pattern for each of the given domains:
   (If a component has an illegal pattern so say.)
   1. Pattern: 110000001100010011000000110001
   1. Domains:
      - Octal String: 
      - Hex String: 
      - BCD String: 
      - Base64 String: 
      - ASCII String: 


1. Before we send a message over the network, we send a string of binary digits to announce our intent.  This string is composed of 7 hexidemical digits, each with the value of "16# 2A".  This string is then immediately followed by the Start of Frame (SOF) deliminator, which is a 8-bit value of "10# 213".  We then can proceed with sending our message.

   1. For each of the following question, provide the binary string...
      - What is the binary bit pattern of the preamble?
      - What is the binary bit pattern of the SOF deliminator?


1. For the following binary sequence that represents a UTF-8 string, identify each of the individual characters of the string.  Note that you do *NOT* have decode the string, just identify each character

   - 1100100110101001011010011110100110101001101010010101001

   1. Character #1:
   1. Character #2:
   1. Character #3:
   1. Character #4:
   1. Character #5:
   1. Character #6: NA


1. The following is a binary sequence that was found in the destination IP address of an IP packet.  
   - 10000010101001101110111011000011

   1. What is the host that was to receive this packet?
      - Perform the following steps:
        1. separate the number into bytes (also known as octets)
        1. convert each octent into decimal
        1. join each of the decial numbers together separated by a '.'
        1. run the command ``host`` with the dotted number you generated as its first arguement
      - You should now be able to answer the question.

# Example Usage of a Supporting Tool
  1. https://www.sandbox.csun.edu/~steve/binaryValues/binaryMappings.html
     * "2# 101101001".toDec()  
     * "2# 101101001".toHex()  
     * "2# 101101001".toBin()  
     * "2# 101101001".nibbles() 
     * "2# 101101001".bytes()
     * "2# 101101001".seperate(6)  // separate in groups of 6
     * "2# 101101001".chop(6)      // chop into individual numbers with 6 digits each
     * [ "10# 2A", "8# 23" ].fuse(2)      // fuse together to obtain a binary number
