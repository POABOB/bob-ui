# 清空dist目錄中的舊文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不壓縮的CSS文件bob-ui.css
echo '正在生成bob-ui.css文件...'
npx postcss src/tuitui-ui.css -o dist/tuitui-ui.css -u postcss-import autoprefixer --no-map 

# 打包出被壓縮的CSS文件bob-ui.min.css
echo '正在生成bob-ui.min.css文件...'
npx postcss src/tuitui-ui.css -o dist/tuitui-ui.min.css -u postcss-import autoprefixer cssnano --no-map 