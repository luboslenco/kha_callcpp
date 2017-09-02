let project = new Project('Empty');

project.addSources('Sources');
project.addLibrary('mylib');

resolve(project);
