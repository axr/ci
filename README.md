[The AXR Project](http://axrproject.org/)
===============
The AXR Project is a revolutionary open source project that will fundamentally
improve our tools to create web sites and apps.

It's much in the style of current web standards, using plain text files linked
together to create the final site, but with a complete separation of content and
presentation, where the content is pure semantic data written in XML, and the
presentation and behavior layer is written in HSS, a new language based on CSS,
but with many powerful features, such as hierarchical notation, object
orientation, modularization for code reuse, expressions (math), vector graphics,
references (bindings between objects), and a very long etc.

The AXR library and applications are written in C++. The core library's only
dependency is Qt, which we use for parsing XML, rendering the graphics, shared
pointers, containers, and other functionality.

CI
===
This repository hosts the configurations for the AXR Project's future continuous
integration system. In the meantime, it provides developers with the necessary
information to set up a local continuous integration system or to manually build
release packages.

The machines directory contains details of the each virtual machine instance used
for building packages, such as the operating system, version, setup script, and
list of schemes.

The schemes directory contains processes that each machine will run through in
order to produce build artifacts, and the filenames of the build artifacts to be
released.

License
=======
The terms to use and redistribute all source code for the AXR project WILL
CHANGE in the future, since it will include clauses not included in any of the
available free software licenses, mostly in aspects that will ensure the
integrity of AXR as a web publishing platform.

Meanwhile, all code is distributed under the terms of the GNU General Public
License (GPL), to enable the collaboration among all parties involved in the
development of AXR. Until certain maturity is reached, you SHOULD NOT include
this code in any program, except for development and testing purposes.

---

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

*See the LICENSE file for the full license text.*

Where to file bug reports
=========================
Please create a new issue here: https://github.com/axr/ci/issues/new. To
make the process of fixing bugs easier, developers need to know what causes the
problem and also what platform(s) it affects. Be as detailed as possible, and
make sure to include the following points in your bug report:

 - What is happening
 - What you expected to happen
 - How to reproduce the issue
 - Your operating system and version
 - The version of AXR that is affected

Continuous Integration status
=============================
<table>
    <tr>
        <th>Module</th>
        <th>Status</th>
    </tr>
    <tr>
        <td>Core</td>
        <td><a href="http://travis-ci.org/axr/core"><img src="https://secure.travis-ci.org/axr/core.png" alt="Build Status" /></a></td>
    </tr>
    <tr>
        <td>Browser</td>
        <td><a href="http://travis-ci.org/axr/browser"><img src="https://secure.travis-ci.org/axr/browser.png" alt="Build Status" /></a></td>
    </tr>
    <tr>
        <td>Plugin</td>
        <td><a href="http://travis-ci.org/axr/plugin"><img src="https://secure.travis-ci.org/axr/plugin.png" alt="Build Status" /></a></td>
    </tr>
    <tr>
        <td>Examples</td>
        <td><a href="http://travis-ci.org/axr/examples"><img src="https://secure.travis-ci.org/axr/examples.png" alt="Build Status" /></a></td>
    </tr>
    <tr>
        <td>Specification</td>
        <td><a href="http://travis-ci.org/axr/specification"><img src="https://secure.travis-ci.org/axr/specification.png" alt="Build Status" /></a></td>
    </tr>
    <tr>
        <td>Extras</td>
        <td><a href="http://travis-ci.org/axr/extras"><img src="https://secure.travis-ci.org/axr/extras.png" alt="Build Status" /></a></td>
    </tr>
</table>
