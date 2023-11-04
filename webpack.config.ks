const HTMLWebPackPlugin = require('html-webpack-plugin');

module.exports = {
    devtool: "source-map",
    entry: "./src/index.js",
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: { loader: "babel-loader" }
            },
            {
                test: /\.html$/,
                use: [{ loader: "html-loader" }]
            },
            {
                test: /\.css$/,
                use: [ "style-loader", "css-loader"]
            },
            {
                test: /\.(png|jpeg|jpg|jpe?g|gif)$/i,
                use: [ "file-loader"]
            }
        ]
    },
    resolve: {
        extensions: [".js", ".jsx"]
    },
    plugin: [
        new HTMLWebPackPlugin({
            template: './public/index.html '
        })
    ]
}