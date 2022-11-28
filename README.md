# CMPUT681-Final-Project

## Prerequisites

### Install LLVM/Clang

```bash
$> sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang
```

### Install Bazel

```bash
$> sudo apt install apt-transport-https curl gnupg
$> curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
$> sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
$> echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
$> sudo apt update && sudo apt install bazel
```

## Run Benchmarks

```bash
$> git clone --recurse-submodules https://github.com/Samarium150/CMPUT681-Final-Project.git
$> cd CMPUT681-Final-Project/scripts
$> chmod u+x run_benchmarks.sh
$> ./run_benchmarks.sh
```

Results are in `scripts/results/` after running the script.
