import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('couch_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
