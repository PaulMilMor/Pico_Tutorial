function logging(message)
    -- funcion para loggear, el segundo argumento define un archivo donde se escribe el log
    -- en windows se puede seguir el log con Get-Content log.p8l -Wait -Tail 30
    printh(" log: " ..message.."", "pico_tutorial/log")
    -- para hacer un f-string se usa ""..var..""
end

function breakpoint()
    -- detiene la ejecucion y permite correr prints o cosas así para ver el valor de una variable en tiempo real
    stop()

end