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
        │   │   ├── tcontent [1]
        │   │   ├── tpages [2]
        │   │   └── vhs
        │   ├── l10n
        │   ├── LocalConfiguration.php
        │   └── AdditionalConfiguration.php

<code>[1]: EXT:tpages (Fluid pagetemplates)</code>  
<code>[2]: EXT:tcontent (Fluid flexible content elements)</code>
    	
### Base Extensions

We currently use the two extensions <code>EXT:tpages</code> and <code>EXT:tcontent</code> for our predefined page templates and flexible content elements. These were first generated using <code>EXT:builder</code>. Both extensions depend on <code>EXT:vhs</code> and <code>EXT:fluidpages</code> respectively <code>EXT:fluidcontent</code>. 

