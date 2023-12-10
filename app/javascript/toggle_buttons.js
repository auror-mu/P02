// app/assets/javascripts/toggle_buttons.js
document.addEventListener("DOMContentLoaded", () => {
  const toggleButtons = document.querySelectorAll('.toggle-btn');
  const toggleContents = document.querySelectorAll('.toggle-content');

  toggleButtons.forEach(button => {
    button.addEventListener('click', () => {
      const targetId = button.dataset.target;
      const targetContent = document.getElementById(targetId);

      // Hide all content elements
      toggleContents.forEach(content => {
        content.style.display = 'none';
      });

      // Show the selected content element
      targetContent.style.display = 'block';
    });
  });
});
