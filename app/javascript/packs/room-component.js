import { render } from 'react-dom';
import React from 'react';
import Room from './room';

document.addEventListener('DOMContentLoaded', e => {
  const node = document.getElementById('room');
  const roomId = node.getAttribute('data-room-id');
  render(<Room roomId={roomId} />, node);
});
