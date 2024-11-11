# MRU English Honours Conference Website

This repository contains the website for the Mount Royal University English Honours Conference of Fall 2024.

## Local Development

### Prerequisites
- Ruby (version 2.7.0 or higher)
- Bundler
- Jekyll

### Setup
1. Clone the repository:
```bash
git clone [repository-url]
cd mru-english-conference
```

2. Install dependencies:
```bash
bundle install
```

3. Start the development server:
```bash
bundle exec jekyll serve
```

4. Visit `http://localhost:4000` in your browser

### Directory Structure
```
mru-english-conference/
├── _config.yml          # Site configuration
├── _data/              # Site data files
├── _includes/          # Reusable components
├── _layouts/           # Page templates
├── assets/            # Static files (CSS, images, etc.)
└── index.html         # Homepage
```

### Data Management
- Speaker information is stored in `_data/speakers.yml`
- Schedule information is in `_data/schedule.yml`
- Site configuration is in `_data/site.yml`

### Contributing
1. Create a new branch for your changes
2. Make your changes
3. Test locally
4. Submit a pull request

### Deployment
[Add deployment instructions based on hosting platform]

## Credits
- Design and Development: [Your Name]
- Content: Mount Royal University English Department