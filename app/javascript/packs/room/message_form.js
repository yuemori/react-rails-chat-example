import React from 'react';

export default class MessageForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { content: '' };
  };

  onChange(event) {
    this.setState({ content: event.target.value });
  };

  render() {
    return(
      <div>
        <input
          name="content"
          onChange={this.onChange.bind(this)}
        />
        <button onClick={() => this.props.onClick(this.state.content)}>
          <p>送信</p>
        </button>
      </div>
    )
  }
};
