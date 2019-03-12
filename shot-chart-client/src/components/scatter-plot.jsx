import React        from 'react';
import DataCircles  from './data-circles';
const d3 = require('d3');

// Returns the largest X coordinate from the data set
const xMax   = (data)  => 55;

// Returns the higest Y coordinate from the data set
const yMax   = (data)  => 91;

// Returns a function that "scales" X coordinates from the data to fit the chart
const xScale = (props) => {
  return d3.scaleLinear()
    .domain([0, xMax(props.data)])
    .range([props.padding, props.width - props.padding * 2]);
};

// Returns a function that "scales" Y coordinates from the data to fit the chart
const yScale = (props) => {
  return d3.scaleLinear()
    .domain([0, yMax(props.data)])
    .range([props.height - props.padding, props.padding]);
};

export default (props) => {
  const imageUrl = 'https://as2.ftcdn.net/jpg/01/75/42/65/500_F_175426593_oJuljLsAn2PQBBq0VlIw8I7ckm1EjA9O.jpg';
  const scales = { xScale: xScale(props), yScale: yScale(props) };

  return <svg style={{ backgroundImage: `url(${imageUrl})`, backgroundRepeat: 'no-repeat',backgroundPosition: 'center', backgroundSize: 'cover',}} width={props.width} height={props.height}>
    <DataCircles {...props} {...scales} />
  </svg>
}
