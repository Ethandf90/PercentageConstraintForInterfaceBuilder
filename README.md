# PercentageConstraintForInterfaceBuilder
PercentageConstraint class in swift, for xib and storyBoard

This class makes it possible to use **percentage spacing** in **interface builder**, so that developer won't have to set all UI frame in code, in order to strictly meet the layout of mockup design, on different screen sizes .

**Usage:**

- Change the NSLayoutConstraint class to **PercentageConstraint**

![set class](https://github.com/Ethandf90/PercentageConstraintForInterfaceBuilder/blob/master/images/Screen%20Shot%204.png)

- Set the first attribute value. This extra attribute is introduced by 
```
@IBInspectable var marginPercent: CGFloat = 0
```
This 0.4 for height constraint is 40% of screen height.

![set class](https://github.com/Ethandf90/PercentageConstraintForInterfaceBuilder/blob/master/images/Screen%20Shot%203.png)


-------------------------------------------------------
- In the example, this is the storyboard design:

![set class](https://github.com/Ethandf90/PercentageConstraintForInterfaceBuilder/blob/master/images/Screen%20Shot%202.png
)

- This is how simulator looks:

![set class](https://github.com/Ethandf90/PercentageConstraintForInterfaceBuilder/blob/master/images/Simulator%20Screen%20Shot%20.png
)

- This is runtime constraint value:

![set class](https://github.com/Ethandf90/PercentageConstraintForInterfaceBuilder/blob/master/images/Screen%20Shot%201.png
)


-------------------------------------------------------

Alert: the value will be based on screen width/ height. so please pay attention if you want use it for subview xib.


Inspired by http://basememara.com/percentage-based-margin-using-autolayout-storyboard/, great thanks.
