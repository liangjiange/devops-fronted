安装nodejs lts最新版

npm install -g @vue/cli

vue create project-name

选择Manually select features

选择Babel、Router、Vuex、CSS、Pre-processors、Linter、Unit

选择Sass/SCSS(with node-sass)

选择ESLint +Prettier

选择Lint on save

如果出现
Cannot download "https://github.com/sass/node-sass/releases/download/v3.13.1

set SASS_BINARY_SITE=https://npm.taobao.org/mirrors/node-sass/

重新初始化项目

npm run serve

npm run build

npm install

npm install axios --save

npm i element-ui -S


#### vue工程打包成docker镜像

docker build -t devops-fronted .

docker build -t xxx .


> node-sass不能安装的问题解决

将unsafe-perm设为true

可以先 npm install node-sass --unsafe-perm

或者 npm config set unsafe-perm true

install from mirror in china

先全局安装
npm install -g mirror-config-china --registry=http://registry.npm.taobao.org

再在项目中
npm install node-sass