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
	
### Extension Structure

We currently use the two extensions <code>EXT:tpages</code> (Fluid pagetemplates) and <code>EXT:tcontent</code> (Fluid flexible content elements)

