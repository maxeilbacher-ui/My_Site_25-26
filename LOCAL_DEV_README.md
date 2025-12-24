"cd" to the THIS folder first in terminal

run these one by one:

brew install mkcert

mkcert -install

mkcert localhost

... then when you run "npm run dev" it will start the server using a secure connection (https:// not http://) and then web audio blah blah is "allowed".
