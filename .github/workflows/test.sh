name=""
  if [ "true" != "false" ]; then
    name="${name} -name *.js"
  fi
  if [ "true" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.md"
  fi
  if [ "true" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.json"
  fi
  if [ "false" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.repl"
  fi
  if [ "false" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.R"
  fi
  if [ "false" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.c"
  fi
  if [ "false" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.ts"
  fi
  if [ "false" != "false" ]; then
    if [ -n "${name}" ]; then
      name="${name} -o"
    fi
    name="${name} -name *.py"
  fi
  files=$(find . -type f \( ${name} \) |
    grep -E ".*" |
    shuf -n 100 | tr '\n' ' ')
