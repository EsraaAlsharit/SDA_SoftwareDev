# Generated by Django 3.2 on 2022-06-22 19:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Favorite_Books_App', '0002_rename_uploaded_by_id_book_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='users_who_like',
            field=models.ManyToManyField(related_name='liked_books', to='Favorite_Books_App.User'),
        ),
    ]
