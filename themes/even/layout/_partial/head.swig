{# Website mata #}
{% include "./_head/meta.swig" %}

{# Website rss #}
{% if theme.rss === 'default' and config.feed and config.feed.path %}
  {{ feed_tag(config.feed.path) }}
{% elif theme.rss %}
  {{ feed_tag(theme.rss) }}
{% else %}
  {{ feed_tag('atom.xml') }}
{% endif %}

{# Website favicon #}
{% if theme.favicon %}
  <link rel="shortcut icon" type="image/x-icon" href="/favicons/favicon.ico?v={{ theme.version }}" />
  <link rel="apple-touch-icon" sizes="57x57" href="/favicons/apple-icon-57x57.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="60x60" href="/favicons/apple-icon-60x60.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="72x72" href="/favicons/apple-icon-72x72.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="76x76" href="/favicons/apple-icon-76x76.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="114x114" href="/favicons/apple-icon-114x114.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="120x120" href="/favicons/apple-icon-120x120.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="144x144" href="/favicons/apple-icon-144x144.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="152x152" href="/favicons/apple-icon-152x152.png?v={{ theme.version }}">
  <link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-icon-180x180.png?v={{ theme.version }}">
  <link rel="icon" type="image/png" sizes="192x192"  href="/favicons/android-icon-192x192.png?v={{ theme.version }}">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicons/favicon-32x32.png?v={{ theme.version }}">
  <link rel="icon" type="image/png" sizes="96x96" href="/favicons/favicon-96x96.png?v={{ theme.version }}">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicons/favicon-16x16.png?v={{ theme.version }}">
  <link rel="manifest" href="/favicons/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/favicons/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
{% endif %}

{# Canonical, good for google search engine #}
<link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>

{# Open Graph #}
{{ open_graph() }}

{# Theme styling #}
<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.css') }}?v={{ theme.version }}" />

{# Fancybox styling #}
{% if theme.theme.fancybox %}
  <link rel="stylesheet" type="text/css" href="{{ url_for('lib/fancybox/jquery.fancybox.css') }}" />
{% endif %}

{# Theme Configuration #}
{% include "../_script/config.swig" %}

{# Analytics #}
{% if not env.debug %}
  {% include "../_script/analytics.swig" %}
{% endif %}
