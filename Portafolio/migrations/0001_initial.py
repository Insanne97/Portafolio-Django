# Generated by Django 4.1.2 on 2023-01-02 05:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Proyectos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=100)),
                ('descripcion', models.CharField(max_length=250)),
                ('imagen', models.ImageField(upload_to='Portafolio/imagen/')),
                ('enlace', models.URLField(blank=True)),
            ],
        ),
    ]
