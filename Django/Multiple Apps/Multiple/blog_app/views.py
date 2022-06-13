from django.shortcuts import render, HttpResponse, redirect


def index(request):
    return HttpResponse("placeholder to later display a list of all blogs")


def new(request):
    return HttpResponse("placeholder to display a new form to create a new blog")


def create(request):
    return redirect("/blogs")


def number(request, number):
    return HttpResponse("placeholder to display blog number: {}".format(number))


def edit(request, number):
    return HttpResponse("placeholder to edit blog {}".format(number))


def destroy(request, number):
    return redirect("/blogs")
