#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Ola', 'Hallo', 'Konichiwa', 'Privet', 'Saluton'

process sayHello {

  cpus ${process.sayHello.cpus}

  input: 
    val x from cheers
  script:
    """
    sleep 10
    echo '$x mundo!'
    """
}

