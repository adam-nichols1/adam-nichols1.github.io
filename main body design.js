document.addEventListener('DOMContentLoaded', function () {
  // Get all checkboxes and button after DOM is ready
  const techFilters = document.querySelectorAll('.techFilter');
  const applyButton = document.getElementById('applyFilterBtn');


  // Main filtering function
  function filterProjects() {
    const activeFilters = Array.from(techFilters)
      .filter(input => input.checked)
      .map(input => input.value);


    const allProjects = document.querySelectorAll('.project');


    allProjects.forEach(project => {
      const projectCategory = project.getAttribute('data-category');
      // Display or hide projects based on the active filters
      project.style.display = activeFilters.includes(projectCategory) ? 'block' : 'none';
    });
  }


  // Add event listener for the "Apply Filters" button
  applyButton.addEventListener('click', filterProjects);
});
