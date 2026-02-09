Le jenkins que j'ai utilisé pour faire ce devoir n'avait pas accès aux commandes docker telles que : "docker compose build" et "docker compose up -d" que j'utilise dans mon jenkinsfile.

Mes builds jenkins echouaient donc et j'ai décidé que commenter les stages : 'Build Docker Images' et 'Start Containers' de mon jenkinsfile et d'ensuite lancer manuellement les commandes précédentes afin de vérifier que tout foncionnait bien.

Ce faisant j'ai pu observer que la liaison entre petclinic et mysql était réussie et que le projet se lançait bien une fois que les deux containers étaient healthy.

J'ai décomenter les deux stages pour le rendu en espérant que le jenkins que vous utilisez a bien accès aux commandes docker mais si ce n'est pas le cas alors il vous suffira de commenter les stages 'Build Docker Images' et 'Start Containers' du jenkins file et de lancer la commande "docker compose up --build" manuellement dans le projet pour vérifier que l'application fonctionne correctement.
