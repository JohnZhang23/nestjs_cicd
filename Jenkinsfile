// Jenkinsfile

pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo "A===>"
                script {
                    // 此处调用 Docker Pipeline 插件提供的 'docker' 命令
                    sh 'docker build -t nestjs-app .'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                echo "B===>"
                script {
                    // 此处调用 Docker Pipeline 插件提供的 'docker' 命令
                    sh 'docker run -d --name nestjs-app-instance nestjs-app'
                }
            }
        }
    }
}



// pipeline {
//     agent any

//     environment {
//         // 定义环境变量
//         DOCKER_IMAGE = 'nestjs-app' // 替换为你的 Docker 镜像名
//     }

//     stages {

//         stage('Clone repository') {
            
//             steps {
//                 echo "A===>"
//             }
//         }



//         stage('Build Docker image') {
//             steps {
//                 echo "B===>"
//                 // 构建 Docker 镜像
//                 script {
//                     // 如果 Jenkinsfile 与 Dockerfile 在同一目录下
//                     sh 'docker build -t $DOCKER_IMAGE .'
//                 }
//             }
//         }

//          stage('Run Docker container') {
//             steps {
//                 echo "C===>"
//                 // 运行 Docker 容器
//                 // script {
//                 //     // 停止旧的容器（如果存在）
//                 //     sh 'docker stop my-nestjs-app || true'
//                 //     sh 'docker rm my-nestjs-app || true'
//                 //     // 运行新的容器
//                 //     sh 'docker run -d --name my-nestjs-app -p 3000:3000 $DOCKER_IMAGE'
//                 // }
//             }
//         }

//     }
// }
