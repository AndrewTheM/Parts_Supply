<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Запчасти</title>
    <link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<fieldset>
    <legend>Редактирование информации о запчасти</legend>
    <form name="part" action="" method="POST">
        Код запчасти:
        <br><@spring.formInput "partForm.code" "" "text"/> <br><br>
        Название:
        <br><@spring.formInput "partForm.name" "" "text"/> <br><br>
        Тип/артикул:
        <br><@spring.formInput "partForm.type" "" "text"/> <br><br>
        Цена:
        <br><@spring.formInput "partForm.price" "" "float"/> <br><br>
        Заметка:
        <br><@spring.formInput "partForm.annotation" "" "text"/> <br><br>
        <input type="submit" value="Подтвердить"/>
    </form>
</fieldset>
<br>
<a href="/api/part/list">К списку</a>
</body>
</html>