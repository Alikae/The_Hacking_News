# README
## Comment tester The Hacking News ? 🤔
### Les consignes 📚

Tu veux créer un message board à la Hacker News. Les utilisateurs peuvent poster des liens. Les autres utilisateurs peuvent commenter les liens soumis, ou commenter les commentaires. Comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ? 🤔

### La structuration de notre base de données 🗂

User
username:string[unique, 4-12 chars, present]
email:text[unique, present]
password:string[6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime
has_many post
has_many comment

Post
post_title:string[present]
post_link:text[present]
id:integer
created_at:datetime
updated_at:datetime
belongs_to User
has_many comment

Comment
comment_title:string[present]
comment_body:text[present]
comment_parent_id:integer[present]
id:integer
created_at:datetime
updated_at:datetime
belongs_to user
belongs_to post




* User
  * username:string[unique, 4-12 chars, present]
  * email:text[unique, max 255 chars, present, format REGEX valid]
  * password:string[present, min 3]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * has_many pins
  * has_many comments

* Comment
  * comment_text:text[present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * belongs_to pin
  * belongs_to user

* Pin
  * pin_title:string[present]
  * pin_url:text[present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * has_many comments
  * belongs_to user


### Pour tester en console 🤖
Taper ```bundle install```
Ouvrir la console en tapant ```rails c``` dans le dossier
- Créer un utilisateur : ```michel = User.create(username: 'Michel', email: 'michel@yopmail.com', password: 'fromage')```
- Créer un pin : ```pin = utilisateur.pins.create(pin_title:'Chaton mignon', pin_url: 'url')```
- Créer un comment : ```comment = pin.comments.new(comment_text: 'Trop mimiiii <3')```
- Relier un commentaire à un utilisateur : ```comment.user_id= utilisateur.id```
- Puis sauver : ```comment.save```
- Vérifier que ça fonctionne : ```User.all``` & ```Pin.all``` & ```Comment.all```

⚠️ J'ai rentré pas mal de critères de validation (voir au-dessus 👆 dans la structuration des BDD) donc si ça ne marche pas, taper le nom de la variable.errors.full_messages. Avec l'exemples au-dessus : ```michel.errors.full_messages```. Le critère non respecté sera expliqué ! ⚠️


YAAYYYY 🎉😎
