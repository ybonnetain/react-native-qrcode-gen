import React, { Component } from 'react';
import { string } from 'prop-types';
import { requireNativeComponent, ViewPropTypes } from 'react-native';

const viewProps = {
    name: 'QrcodeView',
    propTypes: {
      value: string,
      ...ViewPropTypes,
    }
}

const RNQrcodeGen = requireNativeComponent('RNQrcodeGen', viewProps);

export default (props) => <RNQrcodeGen {...props} />;
