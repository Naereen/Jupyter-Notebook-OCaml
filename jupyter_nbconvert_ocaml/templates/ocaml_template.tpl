{%- extends 'null.tpl' -%}

{% block header %}
(*
    This OCaml script was exported from a Jupyter notebook using https://github.com/Naereen/jupyter-nbconvert-ocaml

    This software is still in development, please notify me of a bug if you find one! https://github.com/Naereen/jupyter-nbconvert-ocaml/issues/new
*)
{% endblock header %}

{% block in_prompt %}
{% if resources.global_content_filter.include_input_prompt -%}
    (* In[{{ cell.execution_count if cell.execution_count else ' ' }}]: *)
{% endif %}
{% endblock in_prompt %}

{% block input %}
{{ cell.source | ipython2python }}
{% endblock input %}

{% block markdowncell scoped %}
{{ cell.source | comment_lines }}
{% endblock markdowncell %}