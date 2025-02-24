function dsh --description 'Exec sh into a kubernetes pod'
    kubectl exec -it $argv[1] -- /bin/sh
end
