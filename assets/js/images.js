document.addEventListener('DOMContentLoaded', function() {
    // Get all images except those with hero-background class
    const images = document.querySelectorAll('img:not(.hero-background)');
    
    // Function to toggle color class
    function toggleColor(img) {
        img.classList.toggle('color');
    }
    
    // Add click listeners to all images
    images.forEach(img => {
        // Ensure image is loaded
        if (img.complete) {
            img.classList.add('bw-ready');
        } else {
            img.onload = function() {
                img.classList.add('bw-ready');
            };
        }
        
        // Add click handler
        img.addEventListener('click', function() {
            toggleColor(this);
        });
        
        // Optional: Remove color class when mouse leaves (if not clicked)
        img.addEventListener('mouseleave', function() {
            if (!this.classList.contains('color')) {
                this.classList.remove('color');
            }
        });
    });
});