#
# Cookbook Name:: silkjs
# Recipe:: default
# Author:: Richard Bullington-McGuire <richard@moduscreate.com>
#
# Copyright (c) 2012 Modus Create, Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

if platform?("debian", "ubuntu")
  include_recipe "apt"
end
include_recipe "git"

silkjs_src = node[:silkjs][:src]
silkjs_user = node[:silkjs][:user]
silkjs_git = node[:silkjs][:git]
silkjs_readme = silkjs_src + File::Separator + "README.md"

# Bash trick with "set -o pipefail" courtesy of Stack Overflow
# Question:
#  http://stackoverflow.com/questions/985876/tee-and-exit-status
# Question asked by pachanga:
#  http://stackoverflow.com/users/47422/pachanga
# Answered by Ville Laurikari:
#  http://stackoverflow.com/users/7446/ville-laurikari
# Answer: 
#  http://stackoverflow.com/a/999259

bash "clone_silkjs" do
  cwd Etc.getpwnam(silkjs_user).dir
  user silkjs_user
  code "set -o pipefail; git clone #{silkjs_git} #{silkjs_src} 2>&1 | logger -t silkjs"
  not_if {File.exists?(silkjs_readme)}
end

bash "update_silkjs" do
  cwd Etc.getpwnam(silkjs_user).dir
  user silkjs_user
  code "set -o pipefail; cd #{silkjs_src} 2>&1 && git pull 2>&1 | logger -t silkjs"
end

include_recipe 'silkjs'
