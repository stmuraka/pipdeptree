#!/usr/bin/env bash
set -eo pipefail

usage() {
    echo "Usage: <package_name>[==<version_number>]"
}

package_name="${1}"

if [[ -z ${package_name} ]]; then
    usage
    exit 1
fi

# Activate virtual environment
source .venv/bin/activate

# install the package
echo "Getting package: ${package_name}"
pip install ${package_name} 2>&1 >/dev/null

# display the dependencies
echo ""
pipdeptree --packages ${package_name} 2>/dev/null

