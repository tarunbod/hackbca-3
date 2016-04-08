#Dr!ve
###This project won the HackBCA 3 "Code for Good" Award.

## Inspiration
Americans take 233 billion car trips in a year. But driving poses many dangers, such as people trying to drive under the influence, or people falling asleep behind the wheel. Every 53 minutes, someone dies in a drunk driving related accident, and more than a third of drivers have admitted to falling asleep while driving. This poses danger to everyone, and our hack attempts to fix this problem.
## What it does
Our hack uses a Intel RealSense 3D camera to detect when a driver has fallen asleep, or is under the influence of alcohol. When it detects a sleeping driver, an iOS app plays an alarm in an attempt to wake the driver up. It also detects drops in pulse rates in a driver, compared to a calibrated amount, along with erratic expressions on the drivers face. These can be telltale signs that a driver is under the influence, and it displays a message that tells the driver not to drive in such conditions, calls the users ICE contact, and gives the option to open the uber app to get a ride. 
## How we built it
We used C# to work with the 3D camera, which sends requests to a node.js server. The ios sends get requests to the server to detect when the camera has detected sleeping or drunk driving. 
## Challenges we ran into
The 3D camera sdk, since we were using it for the first time, was extremely difficult to use. The documentation was very unclear, and figuring out how to use the camera was extemely difficult. Also, none of the people on our team were experienced in C#, which made using the SDK even more difficult.
## Accomplishments that we're proud of
We finally figured out how to use the SDK properly after a lot of experimentation. In addition, we are proud of the fact that our team was able to earn C# as quickly as we were able to. Also, we used the twilio api for the first time, and we were successfully able to get it to work. This is all extremely impressive considering this was the first hackathon for more than half of our team.
## What we learned
We learned how to use the 3D camera, C#, and how to use the twilio api.
## What's next for Dr!ve
Since the Intel Realsense cameras are now being integrated into windows laptops, in the future, these cameras could be integrated into steering wheels and the wake up alarms could be hooked up to car speakers, etc. With cars being smarter, this camera could be the next big addition to every car.
