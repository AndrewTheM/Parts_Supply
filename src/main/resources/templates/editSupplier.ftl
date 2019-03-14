<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Поставщики</title>
    <link rel="stylesheet" type="text/css" href="сss/indexStyle.css">
</head>
<body>
<fieldset>
    <legend>Редактирование информации о поставщике</legend>
    <form name="supplier" action="" method="POST">
        Код поставщика:
        <br><@spring.formInput "supplierForm.code" "" "text"/> <br><br>
        Название:
        <br><@spring.formInput "supplierForm.name" "" "text"/> <br><br>
        Юридический адрес:
        <br><@spring.formInput "supplierForm.address" "" "text"/> <br><br>
        Телефон:
        <br><@spring.formInput "supplierForm.phone" "" "text"/> <br><br>
        <input type="submit" value="Подтвердить"/>
    </form>
</fieldset>
<br>
<a href="/api/supplier/list">К списку</a>
</body>
</html>