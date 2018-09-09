node {
    stage('checkout'){
        checkout scm
    }
    stage('build-image'){
        app=docker.build('abazovic/example-app')
    }
    stage('push-image'){
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
            app.push('latest')
        }
    }
}