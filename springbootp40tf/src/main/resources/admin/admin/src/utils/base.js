const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootp40tf/",
            name: "springbootp40tf",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootp40tf/front/h5/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "懂球短视频微信小程序"
        } 
    }
}
export default base
