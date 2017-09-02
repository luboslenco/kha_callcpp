let project = new Project('mylib', __dirname);

project.addFile('cpp/mylib/**');
project.addIncludeDir('cpp/mylib');

resolve(project);
