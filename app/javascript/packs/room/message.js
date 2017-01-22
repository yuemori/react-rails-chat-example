import React from 'react';

const Message = (props) => {
  return(
    <li className="collection-item">{props.content}</li>
  );
};

export default Message;
