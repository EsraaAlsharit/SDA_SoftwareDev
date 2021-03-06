# Generated by Django 3.2 on 2022-06-23 07:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Travel_App', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dest', models.CharField(max_length=255)),
                ('Sdate', models.TextField()),
                ('Edate', models.TextField()),
                ('plan', models.TextField()),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('trip_list', models.ManyToManyField(related_name='trip_list', to='Travel_App.User')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='trip', to='Travel_App.user')),
            ],
        ),
    ]
