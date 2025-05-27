---
title: "Projects"
layout: single
permalink: /projects/
---

<style>

.cards-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  margin: 1rem 0;
  justify-content: space-between;
}

.card {
  background: #222;
  border: 1px solid #eee;
  border-radius: 0.5rem;
  box-shadow: 0 2px 4px rgba(0,0,0,0.06);
  padding: 1rem;
  flex: 1 1 280px;
  min-width: 240px;
  max-width: 1fr;
  box-sizing: border-box;
  transition: transform 0.2s ease;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.card:hover {
  transform: translateY(-4px);
}
.card img {
  width: 100%;
  height: 180px;
  object-fit: cover;
  border-radius: 0.25rem;
  margin-bottom: 0.75rem;
}
.card h3 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  /* font-size: 1.1rem; */
  font-size: 0.85rem;
}
.card p {
  margin: 0;
  flex-grow: 1;
  font-size: 0.70rem;
}

.card .buttons {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
  margin-bottom: 0.75rem;
  justify-content: flex-start;
}
.card .button-demo,
.card .button-github {
  flex: 1 1 auto;
  max-width: calc(50% - 0.25rem);
  text-align: center;
  white-space: nowrap;
}

.card .button-demo {
  background-color: #007acc;
  color: white;
  padding: 0.4rem 0.8rem;
  border-radius: 0.25rem;
  text-decoration: none;
  font-size: 0.55rem;
}
.card .button-demo:hover {
  background-color: #005fa3;
}
.card .button-github {
  background-color: #333;
  color: white;
  padding: 0.4rem 0.8rem;
  border-radius: 0.25rem;
  text-decoration: none;
  font-size: 0.55rem;
  display: flex;
  align-items: center;
  justify-content: center;
}

.card .button-github i {
  margin-right: 0.3rem;
}

.card .learn-more {
  font-weight: bold;
  font-size: 0.55rem;
  margin-top: auto;
}

.page {
  /* display: block; */
  padding-right: 0 !important;
}
</style>

<div class="cards-grid">
  {% assign sorted_projects = site.projects | sort: 'date' | reverse %}
  {% for project in sorted_projects %}
  <div class="card">
    {% if project.image and project.image.path %}
      <img src="{{ project.image.path }}" alt="{{ project.image.alt | default: 'Project image' }}" />
    {% else %}
      <img src="https://via.placeholder.com/320x180?text=No+Image" alt="No image available" />
    {% endif %}

    <h3>{{ project.title }}</h3>
    <p>{{ project.excerpt }}</p>

    <div class="buttons">
      {% if project.demo_link %}
      <a href="{{ project.demo_link }}" class="button-demo" target="_blank">Live Demo</a>
      {% endif %}
      {% if project.github_link %}
      <a href="{{ project.github_link }}" class="button-github" target="_blank">
        <i class="fab fa-github"></i> GitHub
      </a>
      {% endif %}
    </div>

    {% if project.url %}
    <a class="learn-more" href="{{ project.url }}">Learn more →</a>
    {% endif %}
  </div>
  {% endfor %}
</div>