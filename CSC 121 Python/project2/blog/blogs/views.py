from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.http import Http404

from .models import BlogPost

from .forms import BlogPostForm

# Create your views here.

def check_blog_owner(request, blog):
    """Check if the topic belongs to the current user."""
    if blog.owner != request.user:
        raise Http404
    
@login_required
def index(request):
    """The home page for blogs"""
    blogs = BlogPost.objects.filter(owner=request.user).order_by('date_added')
    context = {'blogs': blogs}
    return render(request, 'blogs/index.html', context)

@login_required
def new_post(request):
    """Add a new blog post."""
    if request.method != 'POST':
        # No data submitted; create a blank form.
        form = BlogPostForm()
    else:
        # POST data submitted; process data.
        form = BlogPostForm(data=request.POST)
        if form.is_valid():
            new_post = form.save(commit=False)
            new_post.owner = request.user
            new_post.save()
            return redirect('blogs:index')
    context = {'form': form}
    return render(request, 'blogs/new_post.html', context)

@login_required
def edit_post(request, blog_id):
    """Edit an existing blog post."""
    blog = BlogPost.objects.get(id=blog_id)
    check_blog_owner(request, blog)
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
