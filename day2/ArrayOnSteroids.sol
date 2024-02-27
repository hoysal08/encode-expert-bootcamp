// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract ArrayOnSteroids {
  uint256[] public numberArray;

  function addElement(uint256 _element) external {
    numberArray.push(_element);
  }

  function deleteElementByIndex(uint256 _index) external{
    numberArray[_index] = numberArray[numberArray.length -1];
    numberArray.pop();
  }

  function getnumArray() external  view returns (uint256[] memory){
    return numberArray;
  }
}
      