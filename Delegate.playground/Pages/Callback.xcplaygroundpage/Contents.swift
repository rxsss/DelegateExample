let callback: (String, Bool) -> String

callback = { name, bool in
    if bool {
        print(name.count)
    } else {
        print(name)
    }
    return name
}

callback("qwerty", false)





