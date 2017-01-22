import React from 'react';

export default class MessageForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { content: '' };
  };

  onChange(event) {
    this.setState({ content: event.target.value });
  };

  onClick() {
    if(this.state.content) {
      this.props.onClick(this.state.content);
      this.setState({ content: '' });
    };
  };

  render() {
    return(
      <div className="row">
        <div className="col s10 m10 l10">
          <input
            name="content"
            onChange={this.onChange.bind(this)}
            value={this.state.content}
          />
        </div>
        <div className="col s2 m2 l2">
          <button onClick={this.onClick.bind(this)} className="btn-large">
            送信
          </button>
        </div>
      </div>
    )
  };
};
