#!/bin/bash

# Create main project directory
mkdir -p mru-english-conference && cd mru-english-conference

# Create directory structure
mkdir -p _data _includes _layouts _sass assets/{css,js,images/{hero,speakers}} _site

# Create data files
cat > _data/navigation.yml << 'EOL'
- title: Home
  url: "#hero"
- title: About
  url: "#description"
- title: Schedule
  url: "#schedule"
- title: Speakers
  url: "#speakers"
- title: RSVP
  url: "#rsvp"
- title: Location
  url: "#venue"
EOL

cat > _data/site.yml << 'EOL'
title: "MRU English Honours Conference Fall 2024"
date: "December 6th, 2024"
venue:
  name: "The Knuckle"
  room: "3001"
  building: "EA Building"
  floor: "3rd"
EOL

cat > _data/schedule.yml << 'EOL'
morning:
  - time: "10:00am-10:30am"
    event: "Morning Tea, Coffee, and Snacks"
afternoon:
  - time: "12:00pm-1:00pm"
    event: "Lunch"
    details: "provided by Second Cup"
EOL

cat > _data/speakers.yml << 'EOL'
- name: "Dr. Robert Boschman"
  title: "Chair of the English Department"
  role: "Welcome Address"
EOL

# Create includes
mkdir -p _includes
touch _includes/{head,header,hero,schedule,speaker-card,rsvp,venue,footer}.html

# Create layouts
cat > _layouts/default.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
    {% include head.html %}
    <body>
        {% include header.html %}
        <main>
            {{ content }}
        </main>
        {% include footer.html %}
    </body>
</html>
EOL

# Create main files
cat > _config.yml << 'EOL'
title: MRU English Honours Conference Fall 2024
baseurl: ""
url: ""

markdown: kramdown
plugins:
  - jekyll-feed
  - jekyll-seo-tag
EOL

cat > index.html << 'EOL'
---
layout: default
---

{% include hero.html %}
{% include schedule.html %}
{% include speakers.html %}
{% include rsvp.html %}
{% include venue.html %}
EOL

# Create CSS
cat > assets/css/main.css << 'EOL'
:root {
  --color-raisin-black: #231b26;
  --color-paynes-gray: #546680;
  --color-raw-umber: #945738;
  --color-lion: #c09253;
  --color-seasalt: #f9fafa;
}
EOL

# Create JS
cat > assets/js/main.js << 'EOL'
document.addEventListener('DOMContentLoaded', function() {
    console.log('Site initialized');
});
EOL

# Create other necessary files
touch README.md
touch .gitignore

cat > Gemfile << 'EOL'
source "https://rubygems.org"
gem "jekyll", "~> 4.3.2"
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
end
EOL

cat > .gitignore << 'EOL'
_site/
.sass-cache/
.jekyll-cache/
.jekyll-metadata
vendor/
.DS_Store
EOL

# Initialize git repository
git init

# Set file permissions
chmod +x setup.sh

echo "Repository structure created successfully!"
echo "Next steps:"
echo "1. Run 'bundle install' to install dependencies"
echo "2. Run 'bundle exec jekyll serve' to start the development server"
echo "3. Visit http://localhost:4000 in your browser"