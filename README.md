Quiz

- Rails의 form_for에 대해 알아보자??



https://pusher.com/



복습

- 메소드 체이닝??
      ran = (1..45)
      arr = ran.to_a
      num = arr.sample(6)
      res = num.sort
      
      (1..45).to_a.sample(6).sort
- 파라미터를 하나의 메소드로 만들기

    일반적인
    
    2.3.4 :001 > p = Post.new
     => #<Post id: nil, title: nil, contents: nil, user_id: nil, created_at: nil, updated_at: nil> 
    2.3.4 :002 > p.title = "test"
     => "test" 
    2.3.4 :003 > p.contents = "test"
     => "test" 
    2.3.4 :004 > p.save
       (0.2ms)  begin transaction
       (0.1ms)  rollback transaction
     => false 
           
    --------------------------------------------------------------------------- new(컬럼명: 값)  
    update(컬럼명: 값)       
           
    2.3.4 :005 > p2 = Post.new(title: "test", contents: "test")
     => #<Post id: nil, title: "test", contents: "test", user_id: nil, created_at: nil, updated_at: nil> 
    2.3.4 :009 > p2.save
       (0.2ms)  begin transaction
      User Load (0.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
      SQL (0.4ms)  INSERT INTO "posts" ("title", "contents", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["title", "test"], ["contents", "test"], ["user_id", 1], ["created_at", "2018-06-25 01:17:25.362433"], ["updated_at", "2018-06-25 01:17:25.362433"]]
       (11.3ms)  commit transaction
     => true 
    2.3.4 :010 > p2.update(title: "test5", contents: "test5")
       (0.2ms)  begin transaction
      SQL (0.5ms)  UPDATE "posts" SET "title" = ?, "contents" = ?, "updated_at" = ? WHERE "posts"."id" = ?  [["title", "test5"], ["contents", "test5"], ["updated_at", "2018-06-25 01:18:12.676574"], ["id", 9]]
       (8.5ms)  commit transaction
     => true 
           
    --------------------------------------------------------------------------- 
    create(컬럼명: 값) -> new + save  
           
     2.3.4 :011 > p3 = Post.create(title: "test3", contents: "test3", user_id: "3")
       (0.2ms)  begin transaction
      User Load (0.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
      SQL (0.4ms)  INSERT INTO "posts" ("title", "contents", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["title", "test3"], ["contents", "test3"], ["user_id", 3], ["created_at", "2018-06-25 01:19:23.883045"], ["updated_at", "2018-06-25 01:19:23.883045"]]
       (7.0ms)  commit transaction
     => #<Post id: 10, title: "test3", contents: "test3", user_id: 3, created_at: "2018-06-25 01:19:23", updated_at: "2018-06-25 01:19:23"> 

- 랜더를 이용해서 뷰파일을 파편화시키기
- 스캐폴드

    $ rails g scaffold theme title:string contents:text
    $ rake routes
    $ rake db:migrate
    ------------------------------------------ 라우트 파일에 theme가 생긴다.
    Rails.application.routes.draw do
    
      resources :themes
        root 'board#index'
        get '/boards' => 'board#index' 



간단과제

    $ rails _5.0.6_ new crud_test

- scaffold 명령을 사용하지 않고 CRUD코드 완성하기
- 모델: 단수(post.rb), 콘트롤러: 복수(posts_controller.rb)
- 모델명, 콘트롤러명 아무거나 원하는 대로.  but 일치시키기


