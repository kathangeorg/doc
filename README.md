# CMS Guide

## TYPO3 6.2

### Project Structure

    /
    └── typo3_src
    └── typo3
        ├── typo3_src -> ../typo3_src/TYPO3.CMS-6.2.x
        ├── typo3 -> typo3_src/typo3
        ├── fileadmin
        │   └── admin
        │       ├── news
        │       └── powermail
        ├── index.php
        ├── typo3conf
        │   ├── ext
        │   │   ├── builder
        │   │   ├── fluidcontent
        │   │   ├── fluidpages
        │   │   ├── flux
        │   │   ├── tcontent
        │   │   ├── tpages
        │   │   └── vhs
        │   ├── l10n
        │   ├── LocalConfiguration.php
        │   └── AdditionalConfiguration.php
    	
### Extension Structure

We currently use the two extensions <code>EXT:tpages</code> (Fluid pagetemplates) and <code>EXT:tcontent</code> (Fluid flexible content elements)

