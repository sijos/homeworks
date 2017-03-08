import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor() {
    super();
    this.state = {
      search: ""
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({search: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.search);
    this.setState({search: ""});
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit} className="search-bar">
          <input type="text" value={this.state.search}
            placeholder="enter search"
            onChange={this.handleChange}></input>
          <input type="submit" value="Search Giphy"></input>
        </form>
        <br></br>
        <GiphysIndex giphys={this.props.giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
