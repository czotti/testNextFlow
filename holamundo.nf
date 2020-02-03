#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola', 'Ola', 'Hallo', 'Konichiwa', 'Privet', 'Saluton'

process sayHello {
  echo true 
  
  input: 
    val x from cheers
  script:
    """
    sleep 2
    echo '$x mundo! (with $task.cpus cpus)'
    """
}

