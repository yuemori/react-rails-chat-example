import React from 'react';
import request from 'superagent';
import nocache from 'superagent-no-cache'
import Message from './message';

export default class Room extends React.Component {
  constructor() {
    super();
    this.state = {
      messages: []
    };
  };

  componentDidMount() {
    request
      .get(`/rooms/${this.props.roomId}/messages`)
      .set('Accept', 'application/json')
      .use(nocache)
      .end((err, res) => {
        this.setState({
          messages: res.body
        });
      });
  };

  render() {
    const messages = this.state.messages.map((message) => {
      return <Message key={message.id} content={message.content} />
    });

    return(
      <div>
        {messages}
      </div>
    )
  };
}
