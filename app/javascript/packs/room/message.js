import React from 'react';

const Message = (props) => {
  return(
    <li className="collection-item">
      <p><span style={{marginRight: "20px"}}>{props.username}</span>{props.content}</p>
    </li>
  );
};

export default Message;
