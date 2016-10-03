# Installation
```bash
cd /path/to/cs137/
wget https://gist.githubusercontent.com/lpan/e50e87d04f71a46492ac68ef278ea889/raw/c94e1724f0c6e7fcfe3569d362f37898355ce2ba/init.sh
chmod -x init.sh
```

# Usage

### Generate boilerplate
```bash
# Under your cs137 directory, run: ./init.sh <assignment name> <question name>
# eg.
./init.sh a0 hello
./init.sh a3 factor
./init.sh a3 sudoku
```

### Compile & Run
```bash
# eg.
cd a3/factor
make -s
```
