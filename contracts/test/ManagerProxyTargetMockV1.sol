pragma solidity ^0.4.17;

import "../ManagerProxyTarget.sol";


contract ManagerProxyTargetMockV1 is ManagerProxyTarget {
    uint256 public initValue;
    uint8 public uint8Value;
    uint64 public uint64Value;
    uint256 public uint256Value;
    bytes32 public bytes32Value;
    address public addressValue;
    string public stringValue;
    bytes public bytesValue;
    uint256 public tupleValue1;
    uint256 public tupleValue2;
    bytes32 public tupleValue3;

    function ManagerProxyTargetMockV1(address _controller) Manager(_controller) {}

    function initialize(uint256 _value) external beforeInitialization returns (bool) {
        finishInitialization();

        initValue = _value;
    }

    function setUint8(uint8 _value) external afterInitialization {
        uint8Value = _value;
    }

    function setUint64(uint64 _value) external afterInitialization {
        uint64Value = _value;
    }

    function setUint256(uint256 _value) external afterInitialization {
        uint256Value = _value;
    }

    function setBytes32(bytes32 _value) external afterInitialization {
        bytes32Value = _value;
    }

    function setAddress(address _value) external afterInitialization {
        addressValue = _value;
    }

    function setString(string _value) external afterInitialization {
        stringValue = _value;
    }

    function setBytes(bytes _value) external afterInitialization {
        bytesValue = _value;
    }

    function setTuple(uint256 _value1, uint256 _value2, bytes32 _value3) external afterInitialization {
        tupleValue1 = _value1;
        tupleValue2 = _value2;
        tupleValue3 = _value3;
    }

    function getTuple() external view returns (uint256, uint256, bytes32) {
        return (tupleValue1, tupleValue2, tupleValue3);
    }
}