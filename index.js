import React, { Component } from 'react';
import { string } from 'prop-types';
import { requireNativeComponent, ViewPropTypes } from 'react-native';

var viewProps = {
    name: 'QrcodeView',
    propTypes: {
      value: string,
      ...ViewPropTypes,
    }
}

const RNQrcodeGen = requireNativeComponent('RNQrcodeGen', viewProps);

class QRcodeView extends Component {
    static propTypes = {
        value: string.isRequired,
    };

    render () {
        return (
            <RNQrcodeGen {...this.props} />
        );
    }
}

module.exports = QRcodeView;
