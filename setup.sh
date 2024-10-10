#!/bin/sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "This is macOS"
    brew install pre-commit terraform-docs tflint trivy
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if grep -q Microsoft /proc/version; then
        echo "This is Windows (WSL)"
        # WSL向けの処理を書く
    else
        echo "This is Linux"
        # Linux向けの処理を書く
    fi
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "This is Windows (Git Bash or Cygwin)"
    # Windows向けの処理を書く
else
    echo "Unknown OS"
    exit2
fi

pre-commit --version
pre-commit install
