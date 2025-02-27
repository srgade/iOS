To learn about the coordinator pattern, please watch this video: https://vimeo.com/144116310

The general idea is that all modules have coordinators and these handle navigation in the app, so the app shouldn't have any "segues". Coordinators can manage other coordinators and as many view controllers as they want. 

App -
Play with the "Test Navigation" app and get familiar with using the Coordinator pattern to control navigation. 

Once you've played with the code enough, we want you to make one change. 

1) When tapping on the Home View's action button, we want to invoke a Cyan Coordinator that launches the popover instead of launching the popover directly.
2) Tapping the action button in the Cyan popover should now push a Meganta view inside of the popover
3) Tapping the action button on the pushed Magenta view should go back to the Cyan view

Please add any code you feel is necessary anywhere in the app but try to stick with the coordinator pattern for any navigation.

Once completed, zip up your project and email it to travis.ma@us.imshealth.com.


