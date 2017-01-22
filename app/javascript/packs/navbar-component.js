import React from 'react';
import { render } from 'react-dom';
import Navbar from './navbar';

document.addEventListener('DOMContentLoaded', e => {
  render(<Navbar />, document.getElementById('navbar'));
});
