function grep --wraps=rg
    rg --json $argv | delta
end
