function dbash --description 'Exec bash into a docker container'
    docker exec -it $argv[1] /bin/bash
end
