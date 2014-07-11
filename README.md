# CMS Guide
<code>v.0.0.14.07.11</code>

## TYPO3 6.2

### Base installation

1. Create Folder <code>deploy.domain.markkom.net</code> in <code>~/webseiten/entwicklung/</code>
3. Install TYPO3 via sh script
4. Install Base Extensions via sh script

    
    
### Project Structure

    // generated with tree .
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

<code>Partials/Theme/Page.html</code>  
Contains the Theme specific CSS-, JS-files and Header Configuration. Place all Theme related CSS- and JS-asset-definitions here.

<code>Templates/Theme/BootstrapStickyFooter.html</code>  
A default theme (example) with sticky footer. Feel free to use it as a starting point for the theme-/customer-specific templates.

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
