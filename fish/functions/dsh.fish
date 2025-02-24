function dsh --description 'Exec sh into a docker container'
    docker exec -it $argv[1] /bin/sh
end
