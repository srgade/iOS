You can read a decent introduction to applying MVVM in swift at this url: https://www.toptal.com/ios/swift-tutorial-introduction-to-mvvm

After that, go through the Test MVVM app and check out it's functionality. It uses the MVVM in extremely simplistic way. Normally ViewModels are a little more complex than simply exposing model variables. The general idea is that ViewControllers become extremely dumb and their only funtion is simply handling UI tasks (like swiping, font colors, etc) and displaying data given to it by the View Model. Nothing else! All other code should be moved to the View Model. 

This means that the View Model is also in charge of telling the Coordinator when to navigate, however, the Test MVVM app doesn't implement the coordinator pattern. See the 'Test Navigation' test app for more on the coordinator pattern.

After you've familiarized yourself with how the View Model works (and using my guidelines above), implement the below things to the Test MVVM app.

(Hint: We want all testable business logic code to be in the view models, the ViewController should only handle things like taps, gestures, animations and displaying stuff from the view model)

1) On the Customer List view, add the "Industry" next to the customer name. (example: "Marvel (Comic Books)")

2) On the Customer List view, add functionality to display the combined Primary Address for each customer as a subtitle under the name. If there is no primary address, just show the first address.

3) Add a new ViewController/ViewModel combo to the app called "AddressList". When you tap on a CustomerList cell, we want it to segue to this new ViewController and display a list of addresses. Use the Basic Table View Cell Type to show each address on 1 line.

4) On AddressList, we want the nav bar title to be the customer name and industry (example: "Marvel (Comic Books))

5) In the list of addresses, we want to see a checkmark next to the primary address, if it exists.

6) Tapping on an address in the Address List should segue to the AddressViewController and show the associated address. 

Once you're finished, please zip up your project folder and email it to travis.ma@us.imshealth.com for review.