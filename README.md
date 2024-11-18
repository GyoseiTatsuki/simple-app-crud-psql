IP serveur de Développement : http://20.19.81.140:8088
IP serveur de Production : http://20.19.80.212:8088

Fonctionnement du projet :
Dans un premier temps l'image est construite et déployer sur docker-hub. https://hub.docker.com/repository/docker/gyosei/myapp/general
Il y a deux déploiement :
    - Développement : 
        - Serveur de développement qui quand un push est fait sur la branche "main" récupère l'image docker du projet et la déploie.
    - Production :
        - Serveur de Production qui récupère l'image quand un nouveau tag est mis.



Garnier Kylian
