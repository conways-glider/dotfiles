function kbash --description 'Exec bash into a kubernetes pod'
    kubectl exec -it $argv[1] -- /bin/bash
end
