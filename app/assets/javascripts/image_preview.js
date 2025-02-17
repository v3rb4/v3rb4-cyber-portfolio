document.addEventListener('turbo:load', () => { 
  const fileInputs = document.querySelectorAll('input[type="file"][data-preview]');
  
  fileInputs.forEach(input => {
    input.addEventListener('change', function() {
      const file = this.files[0];
      const preview = document.getElementById(this.dataset.preview);
      const maxSize = parseInt(this.dataset.maxFileSize);
      
      if (file) {
        // File size check
        if (file.size > maxSize) {
          alert('File is too large. Maximum size is 5MB.');
          this.value = '';
          return;
        }
        
        // Preview
        const reader = new FileReader();
        reader.onload = (e) => {
          preview.src = e.target.result;
          preview.style.display = 'block';
        };
        reader.readAsDataURL(file);
      }
    });
  });
});
