from django.shortcuts import render, redirect

from .models import BlogPost

from .forms import BlogPostForm

# Create your views here.
def index(request):
    """The home page for blogs"""
    blogs = BlogPost.objects.order_by('date_added')
    context = {'blogs': blogs}
    return render(request, 'blogs/index.html', context)

def new_post(request):
    """Add a new blog post."""
    if request.method != 'POST':
        # No data submitted; create a blank form.
        form = BlogPostForm()
    else:
        # POST data submitted; process data.
        form = BlogPostForm(data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('blogs:index')
    context = {'form': form}
    return render(request, 'blogs/new_post.html', context)

def edit_post(request, blog_id):
    """Edit an existing blog post."""
    blog = BlogPost.objects.get(id=blog_id)
    if request.method != 'POST':
        # Initial request; pre-fill form with the current entry.
        form = BlogPostForm(instance=blog)
    else:
        # POST data submitted; process data.
        form = BlogPostForm(instance=blog, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('blogs:index')
    context = {'blog': blog, 'form': form}
    return render(request, 'blogs/edit_post.html', context)
