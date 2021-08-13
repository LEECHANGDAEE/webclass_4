from django.forms import ModelForm


class ProjectCreationForm(ModelForm):
    class Meta:
        model = Project
        fields = ['name', 'image', 'description']
