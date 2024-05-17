1-安装husky

单个项目安装
npm install husky --save-dev
全局安装
npm install husky -g


2-配置husky

npx husky install

执行完毕后，会在项目根目录下生成.husky文件夹，里面包含.gitignore文件，.git/hooks文件夹
husky的本质就是：在husky install 时设置 ~/.husky 目录为 git hooks 目录。


3-添加pre-commit钩子

在自动生成的.husky文件夹下，添加pre-commit文件，文件名必须正确，并添加自定义脚本内容
注意添加权限： chmod +x .husky/pre-commit