// Jenkinsfile
pipeline {
    agent any

    environment {
        // 定义环境变量
        DOCKER_IMAGE = 'nestjs-app' // 替换为你的 Docker 镜像名
    }

    stages {

        stage('Clone repository') {
            
            steps {
                echo "A===>"
                // 从 GitHub 克隆代码
                git 'https://github.com/JohnZhang23/nestjs_cicd.git' // 替换为你的仓库地址
            }
        }

        // stage('Build image') {
        //     steps {
                
        //         // 构建 Docker 镜像
        //         // 进入到 git 代码文件夹 (补全代码)
        //         // 然后执行和 Jenkinsfile 同级文件 Dockerfile 构建Docker镜像 (补全代码)
        //          // 构建 Docker 镜像
        //         script {
        //             docker.build env.DOCKER_IMAGE
        //         }
        //     }
        // }

        stage('Build Docker image') {
            steps {
                echo "B===>"
                // 构建 Docker 镜像
                script {
                    // 如果 Jenkinsfile 与 Dockerfile 在同一目录下
                    sh 'docker build -t $DOCKER_IMAGE .'
                }
            }
        }

         stage('Run Docker container') {
            steps {
                echo "C===>"
                // 运行 Docker 容器
                // script {
                //     // 停止旧的容器（如果存在）
                //     sh 'docker stop my-nestjs-app || true'
                //     sh 'docker rm my-nestjs-app || true'
                //     // 运行新的容器
                //     sh 'docker run -d --name my-nestjs-app -p 3000:3000 $DOCKER_IMAGE'
                // }
            }
        }

    }
}
