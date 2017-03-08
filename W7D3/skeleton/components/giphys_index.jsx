import React from 'react';

const GiphysIndexItems = (giphys) => {
  if (giphys) {
    return giphys.map((giphy, idx) => (
      <li key={idx} className="giphy-li">
        <img src={giphy.images.fixed_height.url}></img>
      </li>
      )
    );
  } else {
    return <div></div>;
  }
};

class GiphysIndex extends React.Component {
  render() {
    const { giphys } = this.props;
    return (
      <ul>
        { GiphysIndexItems(giphys) }
      </ul>
    );
  }
}
export default GiphysIndex;
