#!/bin/bash

# Test configuration for build script - Updated for GeoServer 2.27.x
export MIDDLE_STABLE="27"
export DOCKER_REPO="enterlight/geoserver"
export DOCKERFILE_PATH="./Dockerfile"

# Set minimal test versions to avoid long downloads
export NIGHTLY_MASTER_VERSION=""  # Skip nightly builds for test
export NIGHTLY_STABLE_VERSION=""  # Skip nightly builds for test
export NIGHTLY_MAINT_VERSION=""   # Skip nightly builds for test
export STABLE_VERSION="2.27.2"    # Test with current stable version
export MAINT_VERSION=""            # Skip maintenance for test
export IGNORE_VERSIONS=""
export NEWEST_VERSION="2.27.2"

echo "=== Testing Build Script with enterlight/geoserver ==="
echo "DOCKER_REPO: $DOCKER_REPO"
echo "Versions to build: $STABLE_VERSION"
echo ""

# Run the build script
source hooks/build
