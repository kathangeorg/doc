# MARKKOM CMS Manual
<code>
    v.0.0.15.01.23
</code>

## TYPO3 6.2

Aktuell <code>150123</code> setzen wir die TYPO3 CMS Version <code>6.2.x</code> ein. Das <code>MARKKOM CMS Manual</code> dokumentiert die Struktur eines TYPO3 Projekts.

### Projekt Struktur

    // generated with tree .
    /
    └── migrations
    └── typo3_src
    └── prototype
    └── development
    └── production
        ├── typo3_src -> ../typo3_src/TYPO3.CMS-6-2-x
        ├── typo3 -> typo3_src/typo3
        ├── fileadmin
        │   └── admin
        │       ├── ...
        │       └── ...
        ├── index.php -> typo3/index.php [*]
        └──  typo3conf
           ├── ext
           │   ├── builder
           │   ├── fluidcontent
           │   ├── fluidpages
           │   ├── flux
           │   ├── t2config [1]
           │   ├── t2page [2]
           │   ├── t2pagecustom [2a]
           │   ├── t2content [3]
           │   ├── t2contentcustom [3a]
           │   └── vhs
           ├── l10n
           ├── LocalConfiguration.php
           └── AdditionalConfiguration.php

#### Legende

    [*] index.php
        Basis index.php
            Symlinks auf Dateien sind Bei Domainfactory leider nicht möglich. 
            Daher inkludieren wir die index.php via "<?php require_once('typo3_src/index.php') ?>"
        
    [1] EXT:t2config
        Basiskonfiguration für TYPO3
            Hier werden alle Basiskonfigurationen (TypoScript, TsConfig Page und User) vorgenommen. 
            Auch werden hier die Standard SEO-Einstellungen (für die EXT:metaseo) vorgenommen.
            Daneben werden Standard TypoScript Module (Navigation, Breadcrumb...) definiert. 
    
    [2] EXT:t2page
        Basis Template/BackendLayout Konfiguration
            Hier werden wir die Basis Einstellungen für die Page-Templates zusammengefasst.
            Daneben werden alle Standard-Libraries (Bootstrap, jQuery, jQuery Transit...) eingebunden.
        
    [2a] EXT:t2pagecustom
        Kundenspezifische Templates/Backend Layouts

    [3] EXT:t2content
        Fluid-Content-Element Sammlung
        
    [3a] EXT:t2contentcustom
        Kundenspezifische Konfiguration der EXT:t2content Elemente und Content Elemente

    	
### Basis Extensions

Aktuell kommen fünf von MARKKOM entwickelte Extensions (Baukasten) zum Einsatz - <code>EXT:t2config [1]</code>, <code>EXT:t2page [2]</code>, <code>EXT:t2pagecustom [2a]</code>, <code>EXT:t2content [3]</code> und <code>EXT:t2contentcustom [3a]</code>.

for our predefined page templates and flexible content elements. These were first generated using <code>EXT:builder</code>. Both extensions depend on <code>EXT:vhs</code> and <code>EXT:fluidpages</code> respectively <code>EXT:fluidcontent</code>. 

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
        │   └── Templates
        │   │   ├── Core
        │           └── Page
        │               ├── BootstrapStickyFooterTable.html
        │               └── BootstrapStyleguide.html
        └── Public
            ├── Assets
            │   ├── Core
            │   │   ├──Libraries
            │   │       ├── Bootstrap
            │   │   │       ├── css
            │   │   │   │       ├── bootstrap.css
            │   │   │   │       └── bootstrap.min.css
            │   │           ├── fonts
            │   │   │           ├── glyphicons-halflings-regular.eot
            │   │   │           ├── glyphicons-halflings-regular.svg
            │   │   │           ├── glyphicons-halflings-regular.ttf
            │   │   │           └── glyphicons-halflings-regular.woff
            │   │   │          └── js
            │   │               ├── bootstrap.js
            │   │               └── bootstrap.min.js
            │           ├── jQuery
            │   │           ├── js
            │   │   │           └── jquery-1.9.1.min.js
            │   │               └── Plugins
            │   │                   └── transit
            │   │                       └── js
            │   │                           └── jquery.transit.js
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
            │   ├── Core
            │   ├── Theme
            │   ├── Bootstrap.png
            │   └── stickyFooter.jpg
            └── Theme
                ├── Bootstrap
                │   └── css
                │       └── stickyFooter.css
                └── css
                    └── base.css

##### Default Configuration

<code>Configuration/TypoScript/constants.txt</code> and <code>Configuration/TypoScript/setup.txt</code>  
Contain the default TS configuration:  
    
    plugin.tx_tpages {
        view {
        [...]
        }
        settings {
    	    development {
    	    [...]
    	    }
    	    production {
    	    [...]
    	    }
        }
    }
    
The settings should be graphically configurable using the WYSIWYG-Constants editor:

    # customsubcategory=tpageconfigurationmetadev=tpages: meta [development]
    meta {
        #cat=plugin.tx_tpages/tpageconfigurationmetadev/a; type=string; label=<meta name="robots" content="" />
        robots = NOINDEX,NOFOLLOW,NOARCHIVE
    }
    
##### Default Partials and Templates

<code>Partials/Core/Page.html</code>  
Contains the Core CSS-, JS-asset-definitions and Header Configuration (e.g Meta-Tags).

<code>Templates/Theme/BootstrapStickyFooterTable.html</code>  
A default theme (example) with sticky footer. Feel free to use it as a starting point for the theme-/customer-specific templates.

#### EXT:tpage

<code>Partials/Default/Page.html</code>  
Contains the Theme specific CSS-, JS-files and Header Configuration. Place all Theme related CSS- and JS-asset-definitions here.



#### EXT:tcontent

    tcontent/
    ├── Classes
    │   └── Controller
    ├── Configuration
    │   └── TypoScript
    │       ├── constants.txt
    │       └── setup.txt
    ├── ext_emconf.php
    ├── ext_icon.gif
    ├── ext_tables.php
    └── Resources
        ├── Private
        │   ├── Layouts
        │   │   ├── Content.html
        │   │   └── Page.html
        │   └── Templates
        │       ├── Content
        │       │   ├── BootstrapButtonLink.html
        │       │   ├── BootstrapRow.html
        │       │   ├── MyContentElement.html
        │       │   └── VideoJs.html
        │       └── Page
        │           └── MyPageTemplate.html
        └── Public
            ├── Icons
            │   ├── col-lg.png
            │   ├── col-md.png
            │   ├── col-sm.png
            │   ├── col-xs.png
            │   ├── icon-gk.png
            │   ├── icon-markkom-64x64-in-use.png
            │   ├── icon-markkom-64x64.png
            .   ...
            └── videoJs
                ├── css
                │   ├── font
                │   │   ├── vjs.eot
                │   │   ├── vjs.svg
                │   │   ├── vjs.ttf
                │   │   └── vjs.woff
                │   ├── video-js.css
                │   ├── videoJs.css.css
                │   ├── video-js.less
                │   └── video-js.min.css
                ├── demo.captions.vtt
                ├── demo.html
                ├── img
                │   ├── big_buck_bunny_poster.jpg
                │   └── ico_play.png
                ├── js
                │   ├── video.dev.js
                │   ├── video.js
                │   └── videoJs.js0.js
                ├── swf
                │   └── video-js.swf
                └── video
                    ├── big_buck_bunny.mp4
                    ├── big_buck_bunny.ogv
                    └── big_buck_bunny.webm
