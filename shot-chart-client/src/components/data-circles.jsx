import React from 'react';

const renderCircles = (props) => {
  return (coords, index) => {
    const {result} = coords;

    const circleProps = {
      cx: props.xScale(coords.x_coordinate),
      cy: props.yScale(coords.y_coordinate),
      r: 5,
      key: index,
      fill: result == 'made' ? 'green' : 'red'
    };
    return <circle {...circleProps} />;
  };
};

export default (props) => {
  return <g>{ props.shots.map(renderCircles(props)) }</g>
}
