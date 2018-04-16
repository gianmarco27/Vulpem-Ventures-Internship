PGP acronym for (Pretty Good Privacy) Combines both Symmetric and Asymmetric Encryption, PGP is preferable to use when you have to keep communications with multiple partners and you want them to use their own key to decrypt your messages, this way any single conversation with each of them will be decrypted differently and therefore won't allow others to decrypt it unless they posses the recipient's private key. Through this mechanism PGP allows its users then to authenticate and digitally sign the data they send to each other thanks to the unicity of their public and private key.

In depth PGP uses: 
- a Session key (changing for every message and shared with the message itself)
	This key is a random number generated from the random movements of your mouse and the keystrokes you type. 

- Recipient's Public key (which is used to encrypt the session key via RSA)
- Recipient's Private key (used by the recipient to decrypt the session key and decrypt the messagge)

the RSA algoryth is very secure but in the meantime heavy to execute and would require chaining (BAD due to extra overhead and slowness) on large chunk of bites (117 bits per "round"), this way rather then encrypting the whole messagge directly with the public key via RSA, a session key is used.

Flowcrypt uses public key servers to obtain the PUBLIC PGP key of the recipient of your mail, if available, your PRIVATE PGP key is instead located client side on your PC and you should keep a backup of it. If lost there is no copy therefore you won't be able to read the messages you received ever again.

Public and Private keys are matematically related and therefore from a public key the private can always be derived given enough computational power and time.
The key for this process to be secure is picking a large enough private key. The bigger the key, the more secure.