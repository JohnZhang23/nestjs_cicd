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
                git 'https://github.com/your-repo/nestjs-app.git' // 替换为你的仓库地址
            }
        }

        stage('Build image') {
            steps {
                echo "B===>"
                // 构建 Docker 镜像
                script {
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                echo "C===>"
                script {
                    // // 假设你已经在 Jenkins 的 SSH credentials 中设置了 EC2 实例的 SSH 密钥
                    // // 连接到 EC2 实例并运行 Docker 容器
                    // sshagent(['ec2-ssh-key']) { // 替换为 Jenkins 中存储的 SSH Key 的 ID
                    //     sh "ssh -o StrictHostKeyChecking=no ec2-user@your-ec2-public-dns 'docker pull $DOCKER_IMAGE && docker run -d --name nestjs-app --rm -p 3000:3000 $DOCKER_IMAGE'" // 替换为你的 EC2 用户名和公有 DNS
                    // }

                    sh "docker pull $DOCKER_IMAGE && docker run -d --name nestjs-app --rm -p 3000:3000 $DOCKER_IMAGE" // 替换为你的 EC2 用户名和公有 DNS
                }
            }
        }
    }
}
