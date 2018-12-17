using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Qrcode.Gen.RNQrcodeGen
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNQrcodeGenModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNQrcodeGenModule"/>.
        /// </summary>
        internal RNQrcodeGenModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNQrcodeGen";
            }
        }
    }
}
