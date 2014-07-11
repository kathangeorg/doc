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
        └──  typo3conf
           ├── ext
           │   ├── builder
           │   ├── fluidcontent
           │   ├── fluidpages
           │   ├── flux
           │   ├── tcontent [1]
           │   ├── tpages [2]
           │   └── vhs
           ├── l10n
           ├── LocalConfiguration.php
           └── AdditionalConfiguration.php

<code>[1]: EXT:tpages (Fluid pagetemplates)</code>  
<code>[2]: EXT:tcontent (Fluid flexible content elements)</code>
    	
### Base Extensions

We currently use the two extensions <code>EXT:tpages</code> and <code>EXT:tcontent</code> for our predefined page templates and flexible content elements. These were first generated using <code>EXT:builder</code>. Both extensions depend on <code>EXT:vhs</code> and <code>EXT:fluidpages</code> respectively <code>EXT:fluidcontent</code>. 

#### EXT:tpages

    tpages/
    ├── Classes
    │   └── Controller
    ├── Configuration
    │   ├── TsConfig
    │   │   ├── Page
    │   │   │   ├── config.txt
    │   │   │   └── rte.txt
    │   │   └── User
    │   │       └── config.txt
    │   └── TypoScript
    │       ├── constants.txt
    │       └── setup.txt
    ├── ext_emconf.php
    ├── ext_icon.gif
    ├── ext_tables.php
    └── Resources
        ├── Private
        │   ├── Layouts
        │   │   └── Page.html
        │   ├── Partials
        │   │   ├── Core
        │   │   │   └── Page.html
        │   │   └── Theme
        │   │       ├── Page.html
        │   │       └── Theme.html
        │   └── Templates
        │       └── Page
        │           ├── BootstrapStickyFooter.html
        │           ├── BootstrapStyleguide.html
        │           └── MyPageTemplate.html
        └── Public
            ├── Core
            │   ├── Bootstrap
            │   │   ├── css
            │   │   │   ├── bootstrap.css
            │   │   │   └── bootstrap.min.css
            │   │   ├── fonts
            │   │   │   ├── glyphicons-halflings-regular.eot
            │   │   │   ├── glyphicons-halflings-regular.svg
            │   │   │   ├── glyphicons-halflings-regular.ttf
            │   │   │   └── glyphicons-halflings-regular.woff
            │   │   └── js
            │   │       ├── bootstrap.js
            │   │       └── bootstrap.min.js
            │   ├── jQuery
            │   │   ├── js
            │   │   │   └── jquery-1.9.1.min.js
            │   │   └── transit
            │   │       └── js
            │   │           └── jquery.transit.js
            │   ├── js
            │   │   ├── html5shiv.js
            │   │   ├── html5shiv.min.js
            │   │   └── respond.min.js
            │   └── modernizr
            │       └── js
            │           └── modernizr-2.6.2.min.js
            ├── Css
            │   ├── fonts
            │   │   ├── glyphicons-halflings-regular.eot
            │   │   ├── glyphicons-halflings-regular.svg
            │   │   ├── glyphicons-halflings-regular.ttf
            │   │   └── glyphicons-halflings-regular.woff
            │   ├── structure
            │   │   └── tpages_structure.css
            │   └── visual
            │       ├── bootstrap.css
            │       ├── doc.css
            │       └── tpages_visual.css
            ├── Icons
            │   ├── Bootstrap.png
            │   └── stickyFooter.jpg
            └── Theme
                ├── Bootstrap
                │   └── css
                │       └── stickyFooter.css
                └── css
                    └── base.css
