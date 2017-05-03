# devcon-2017-studio-plugin-migration
An example of migrating a CoreMedia Studio Plugin to Ext JS 6 and Jangaroo 4, including some MXML magic

To have this example working on your machine, start with a CM8 (7.1 or 7.5 should work) Blueprint workspace.

This repository contains a new extension, so the files should be located under `modules/extensions/rubber-duck`.

    cd modules/extensions
    
    git clone https://github.com/fwienber/devcon-2017-studio-plugin-migration.git rubber-duck

There are git tags for different states of the example code. Create a `current` branch and start with the `start` tag:

    git checkout -b current start

The new module has to be added to `modules/extensions/pom.xml` and its BOM-POM has to be imported in the
`dependency-management` section of your root POM like so:

      <dependency>
        <groupId>com.coremedia.blueprint</groupId>
        <artifactId>rubber-duck-bom</artifactId>
        <version>${project.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>

You may have to adapt `groupId` and/or `version` to your individual workspace setup.

Then, you should be able to rebuild your CM8 workspace and end up with a new Studio Plugin: Rubber Duck!

Afterwards, you can try to migrate the plugin yourself by following the instructions in the commits, or your can
move through the demo commits one by one, using

    git reset --hard `git rev-list HEAD..master | tail -1`
    
(Sorry, no DOS equivalent for that. When using Windows, just find out the SHA of the next commit and reset there.)

Next check-point is the tag `cms-9-workspace`, which is when the automatic migration steps are finished.
Your auto-migrated workspace now has to be moved to a CMS 9 Blueprint Workspace (dxp-blueprint).
There, again you have to modify two POMs:
Add the new extension module `rubber-duck` to `modules/extensions/pom.xml` and add the BOM-dependecy-management
from above to `blueprint-parent/pom.xml`.

A few commits later (tag `works`), you can rebuild your CMS 9 Blueprint Workspace and should see the talking rubber
duck in your CMS 9 Studio.

All following commits on branch `master` are just refactorings to illustrate Jangaroo 4 "Flex" features, so they do
not change the behavior of the plugin. However, you are encouraged to build each step and observe the new
implementation in a browser debugging tool.

Have fun!
