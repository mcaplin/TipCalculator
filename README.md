# Pre-work - *Tip for Tap*

**Tip for Tap** is a tip calculator application for iOS.

Submitted by: **Michelle Caplin**

Time spent: **16 (ish?)** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Custom tip amount with the defaults

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/ddWaVUk.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

* The layout only currently works with iPhone 7.
* I didn't know how to update the view controller from things I changed in the settings view controller. I figured it out by making a viewDidAppear method.
* The UserDefaults took me a while to understand, but now I do.
* I still don't know how to change the font for the navigation controller and the segmented control.
* I've tried to learn Swift before but was always confused since it's very different from languages I've used. However in this project I learned a lot more about the layout of how the storyboard and the code work together.


## License

    Copyright [2018] [Michelle Caplin]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.