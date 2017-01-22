import React from 'react';
import request from 'superagent';
import nocache from 'superagent-no-cache'
import Message from './message';
import MessageForm from './message_form';

export default class Room extends React.Component {
  constructor() {
    super();
    this.state = {
      messages: []
    };
  };

  componentDidMount() {
    App.messages = App.cable.subscriptions.create('MessagesChannel', {
      received: function(data) {
        this.setState({
          messages: this.state.messages.concat(data.message),
        });
      }.bind(this),
    });

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

  sendMessage(content) {
    const csrfNode = document.getElementsByName('csrf-token')[0];
    request
      .post(`/rooms/${this.props.roomId}/messages`)
      .send({ content: content })
      .set('X-CSRF-TOKEN', csrfNode.content)
      .end((err, res) => {
        if(err) {
          console.log(err);
        } else {
          console.log(res);
        }
      });
  };

  render() {
    const messages = this.state.messages.map((message) => {
      return <Message key={message.id} content={message.content} />
    });

    return(
      <div>
        <div>
          {messages}
        </div>
        <MessageForm onClick={(content) => this.sendMessage(content)} />
      </div>
    )
  };
}
