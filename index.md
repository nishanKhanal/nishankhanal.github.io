---
layout: home
author_profile: true
title: ""
---

<h2> Featured Projects </h2>

{% assign sorted_projects = site.projects | sort: 'date' | reverse %}
<ul>
  {% for project in sorted_projects limit:3 %}
  <li>
    <a href="{{ project.link | default: project.url }}" target="_blank">
      {% if project.image and project.image.path %}
      some things
      <img src="{{ project.image.path }}" alt="{{ project.image.alt | default: 'Project image' }}" width="250" />
      {% endif %}
      <h3>{{ project.title }}</h3>
      <p>{{ project.excerpt }}</p>
    </a>
  </li>
  {% endfor %}
</ul>

<p><a href="/projects/" class="button">View All Projects →</a></p>

***

<h2> Recent Certificates </h2>

{% assign sorted_certs = site.certificates | sort: 'date' | reverse %}
<ul>
  {% for cert in sorted_certs limit:3 %}
  <li>
    <a href="{{ cert.link }}" target="_blank">
      {% if cert.image and cert.image.path %}
      <img src="{{ cert.image.path }}" alt="{{ cert.image.alt | default: 'Certificate image' }}" width="250" />
      {% endif %}
      <h3>{{ cert.title }}</h3>
      <p>{{ cert.excerpt }}</p>
    </a>
  </li>
  {% endfor %}
</ul>


<p><a href="/certificates/" class="button">View All Certificates →</a></p>

***
