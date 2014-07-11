# CMS Guide

## TYPO3 6.2

### Project Structure

    /
    +-- typo3
    |   +-- fileadmin
    |   |   +-- admin
    |   |       +-- ext_key
    |   |           +-- Resources
    |	|	            +-- ...
    |   +-- typo3conf
    |       +-- ext
    |       |   +-- builder
    |       |   +-- flux
    |       |   +-- fluidpages
    |       |   +-- fluidcontent
    |       |   +-- vhs
    |       |   +-- tpages [1]
    |       |   +-- tcontent [2]
    |       +-- LocalConfiguration.php
    |       +-- AdditionalConfiguration.php
    .
    .
    .
	
	
    typo3
    ├── fileadmin
    │   ├── _processed_
    │   ├── _temp_
    │   │   └── index.html
    │   └── user_upload
    │       ├── big_buck_bunny.mp4
    │       ├── big_buck_bunny.ogv
    │       ├── big-buck-bunny_poster.jpg
    │       ├── big_buck_bunny.webm
    │       ├── index.html
    │       └── _temp_
    ├── index.php
    ├── typo3conf
    │   ├── ENABLE_INSTALL_TOOL
    │   ├── ext
    │   │   ├── builder
    │   │   ├── fluidcontent
    │   │   ├── fluidpages
    │   │   ├── fluidpages_bootstrap
    │   │   ├── flux
    │   │   ├── mk_content
    │   │   ├── mkpageschild
    │   │   ├── mkpagesparent
    │   │   ├── tcontent
    │   │   ├── tpages
    │   │   └── vhs
    │   ├── l10n
    │   ├── LocalConfiguration.php
    │   └── PackageStates.php
    	
### Extension Structure

We currently use the two extensions <code>EXT:tpages</code> (Fluid pagetemplates) and <code>EXT:tcontent</code> (Fluid flexible content elements)

