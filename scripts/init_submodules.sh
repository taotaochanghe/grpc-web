#!/bin/bash
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
set -ex

cd "$(dirname "$0")"/..
# git submodule --quiet update --init --recursive
# curl cip.cc
git submodule  update --init --recursive
(cd third_party/closure-library && git checkout tags/v20201102)
(cd third_party/protobuf && git checkout tags/v3.15.6)
