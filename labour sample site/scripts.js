function checkAvailability() {
    const name = document.getElementById('trade-union-name').value;
    const availability = document.getElementById('availability');

    if (name) {
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'check_availability.php', true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                if (xhr.responseText === 'available') {
                    availability.textContent = 'Trade union Name available';
                    availability.className = 'availability available';
                } else {
                    availability.textContent = 'Not available';
                    availability.className = 'availability not-available';
                }
            }
        };
        xhr.send('trade_union_name=' + encodeURIComponent(name));
    } else {
        availability.textContent = '';
    }
}

function validateForm() {
    const availability = document.getElementById('availability').textContent;
    if (availability === 'Not available') {
        alert('Trade union name is not available. Please choose another name.');
        return false;
    }
    return true;
}

document.getElementById('b-form').addEventListener('change', function() {
    const fileName = this.files[0] ? this.files[0].name : 'No file chosen';
    document.getElementById('file-name').textContent = fileName;
});

function toggleSection(sectionId) {
    const section = document.getElementById(sectionId);
    const content = section.querySelector('.sub-form-content');
    if (content.style.display === 'none' || content.style.display === '') {
        content.style.display = 'block';
    } else {
        content.style.display = 'none';
    }
}
