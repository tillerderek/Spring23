from django.db import models

# Create your models here.


class BlogPost(models.Model):
    """A blog post."""
    title = models.CharField(max_length=200)
    text = models.TextField()
    date_added = models.DateTimeField(auto_now_add=True)
    context = {'title': title, 'text': text, 'date_added': date_added}

    class Meta:
        verbose_name_plural = 'blog_posts'

    def __str__(self):
        """Return a string representation of the model."""
        return f'{self.title} | {self.text[:50]}...'
        