# Generated by Django 4.2.11 on 2024-05-22 10:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("fts_app", "0007_alter_userdetail_full_name"),
    ]

    operations = [
        migrations.AlterField(
            model_name="userdetail",
            name="phone",
            field=models.CharField(max_length=15, null=True),
        ),
    ]
