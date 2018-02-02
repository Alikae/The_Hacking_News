# README
## Comment tester The Hacking News ? 🤔
### Les consignes 📚

Tu veux créer un message board à la Hacker News. Les utilisateurs peuvent poster des liens. Les autres utilisateurs peuvent commenter les liens soumis, ou commenter les commentaires. Comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ? 🤔

### La structuration de notre base de données 🗂

* User
  * username:string[unique, 4-12 chars, present]
  * email:text[unique, max 255 chars, present, format REGEX valid]
  * password:string[present, min 3]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * has_many pins
  * has_many comments

* Post
  * post_title:string[present]
  * post_link:text[present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * belongs_to user
  * has_many comments

* Comment
 * comment_title:string[present]
 * comment_body:text[present]
 * comment_parent_id:integer[present]
 * id:integer
 * created_at:datetime
 * updated_at:datetime
 * belongs_to user
 * belongs_to post

YAAYYYY 🎉😎
