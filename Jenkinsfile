node {
    stage('checkout'){
        checkout scm
    }
    stage('build-image'){
        app=docker.build('abazovic/example-app')
    }
    stage('push-image'){
        docker.withRegistry('https://registry.hub.docker','92bcb835-84db-46e8-bd01-1aeb87326d24'){
            app.push('latest')
        }
    }
}