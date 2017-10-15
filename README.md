# MDTransitioning-VCTransitionsLibrary

[![](https://img.shields.io/travis/rust-lang/rust.svg?style=flat)](https://github.com/Modool)
[![](https://img.shields.io/badge/language-Object--C-1eafeb.svg?style=flat)](https://developer.apple.com/Objective-C)
[![](https://img.shields.io/badge/license-MIT-353535.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![](https://img.shields.io/badge/platform-iOS-lightgrey.svg?style=flat)](https://github.com/Modool)
[![](https://img.shields.io/badge/QQ群-662988771-red.svg)](http://wpa.qq.com/msgrd?v=3&uin=662988771&site=qq&menu=yes)

## Introduction

- Extension for MDTransitioning and VCTransitionLibrary.
- To support VCTransitionLibrary for MDTransitioning.

## How To Get Started

* Download `MDTransitioning-VCTransitionsLibrary` and try run example app

## Communication

<img src="https://github.com/Modool/Resources/blob/master/images/social/qq_300.png?raw=true" width=200><img style="margin:0px 50px 0px 50px" src="https://github.com/Modool/Resources/blob/master/images/social/wechat_300.png?raw=true" width=200><img src="https://github.com/Modool/Resources/blob/master/images/social/github_300.png?raw=true" width=200>

## Installation


* Installation with CocoaPods

```
source 'https://github.com/Modool/cocoapods-specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'MDTransitioning', '~> 1.0.0'
pod 'VCTransitionsLibrary', '~> 1.5.0’

pod 'MDTransitioning-VCTransitionsLibrary', '~> 1.0.0'
end

```

* Installation with Carthage

```
github "Modool/MDTransitioning" ~> 1.0.0
github "Modool/VCTransitionsLibrary" ~> 1.5.1

github "Modool/MDTransitioning-VCTransitionsLibrary" ~> 1.0.0
```

* Manual Import

```
drag "MDTransitioning", "VCTransitionsLibrary", "MDTransitioning-VCTransitionsLibrary" directory into your project

```


## Requirements
- Requires ARC

## Architecture

### Animation

Extension of CEReversibleAnimationController for MDTransitioning.

* `CEReversibleAnimationController+MDTransitioning`

### Interaction

Extension of CEBaseInteractionController for MDTransitioning.

* `CEBaseInteractionController+MDTransitioning`
	
## Usage

* Demo FYI 

## Update History

* 2017.10.15 Add README and adjust project class name.

## License
`MDTransitioning-VCTransitionsLibrary` is released under the MIT license. See LICENSE for details.

## Article

Article support if you want to see more info or demo. <a href=https://github.com/Modool/MDTransitioning/blob/master/MDTransitioning.md>Go</a>.

