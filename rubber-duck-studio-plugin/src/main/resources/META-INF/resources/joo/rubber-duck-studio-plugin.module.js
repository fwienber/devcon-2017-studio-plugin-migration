joo.loadModule("${project.groupId}", "${project.artifactId}");
joo.loadStyleSheet("joo/resources/css/rubber-duck.css");
coremediaEditorPlugins.push({
  "name": "Rubber Duck Plugin",
  "mainClass": "com.acme.RubberDuckStudioPlugin"
});
