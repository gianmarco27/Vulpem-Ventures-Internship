"Uncle" blocks in Ethereum are stale blocks that didn't get to the main blockchain

Ethereum in order to mantain the network decentralized has a different way of managing those blocks,
since uncle blocks contribute in mantaining the net more secure by providing valid proof of work of validated previous blocks, therefore Uncle blocks' miners still get rewarded for the valid blocks generated.

To achieve a correct rewarding of the miners Ethereum makes use of the GHOST protocol (Greedy Heaviest Observed SubTree).

This Protocol determines which is the main Blockchain, not by picking the longest chain but the one containing the most computational proof (PoS).

Due to this choiche miners are incetivized to include up to 2 uncle blocks headers (maximum allowed to protect from uncle blocks spamming and with the maximum depth of 7 ancestors in the past) in their block by validating them, not only because their blockchain would result the heaviest and therefore earn the major reward, but also because for every uncle block validated they get an additional +3,125% of the current reward.

Miners of uncle block that were validated in the blockchain are awarded a percentage of the current award, following this rate:

7-n/8 where n is the generation distance from the soft fork block. 

uncle block will be worth 7/8
nephew blocks 6/8 and so on..

the gas from the transactions in an uncle block isn't spent, the content of the block is destroyed and reinserted in the transaction pool
