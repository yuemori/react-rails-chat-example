import React from 'react';

export default class Navbar extends React.Component {
  render() {
    return(
      <div className="nav-wrapper">
        <a href="#" className="brand-logo">ChatApp</a>
        <ul id="nav-mobile" className="right hide-on-med-and-down">
          <li><a href="#">Foo</a></li>
        </ul>
      </div>
    )
  }
};
