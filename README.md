# Flowers is a Project that use SwiftUI to draw Flowers

<img src="https://github.com/Enryun/Flowers/assets/45484154/bae28441-a4d6-49df-addc-aa01b5cc7b20" width="200">
<img src="https://github.com/Enryun/Flowers/assets/45484154/8c10738e-12a0-4690-b61f-e53250a9b719" width="200">
<img src="https://github.com/Enryun/Flowers/assets/45484154/ff80e239-a3c0-422a-aa9c-2806a9bf1cc0" width="200">

## Shape protocol

In SwiftUI, Shape refers to a protocol that defines the outline of a view or control. It's a fundamental concept for drawing and designing custom views or controls with different shapes. The Shape protocol is part of the SwiftUI framework, which is used to create user interfaces in a declarative manner.

The Shape protocol has one required method:

```swift
func path(in rect: CGRect) -> Path
```

This method is used to create a path that defines the outline of the shape within the given rectangle. The Path type is used to describe a series of lines and curves that form the shape's boundary.

As you can see this function has only 1 parameter which is a CGRect. This is the space that will be available for us to draw. This CGRect specifies the area where the shape is to be rendered.

This is a 2 dimensional space so to identify the position of one point we need a x-value and a y-value. Sounds familiar, isn't it? But there is a catch here.

In context if Swift, the origin point(0, 0) will be at the top left corner. This will be different from what we learned in Mathematics about the Descartes coordinate system, but that is the way. Take a look at the picture:

![Shape_SwiftUI_1](https://github.com/Enryun/Flowers/assets/45484154/7f5ca9c2-1f85-486c-acc5-ff2e16dbdf4e)

As we move the right, the x-value will increase and as we move down the y-value will increase. Let's take this knowledge to practice starting with some basic geometry shape.

## Drawing Custom Shapes

You can conform to the Shape protocol to create custom shapes, and you can use these custom shapes in SwiftUI views to draw, fill, or stroke them as needed.

Let's first create a custom Triangle. Let's make a struct Triangle that conform to Shape protocol:

```swift
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var trianglePath = Path()
        return trianglePath
    }
}
```

This function need to return a Path, so we declare, initialize and return it. For now nothing will happen, it is because we haven't drawn anything.

The first method we want to introduce with Path is move(to end: CGPoint), this will mark the position where our path start. We will start draw at the middle point on the top:

```swift
var trianglePath = Path()
trianglePath.move(to: CGPoint(x: rect.midX, y: rect.minY))
return trianglePath
```

Next, we will use `addLine(to end: CGPoint)`, this method appends a straight line segment from the current point to the specified point. Now from our starting point, we will add line to the bottom trailing point, then draw to bottom leading point and from there back to our original middle top point:

```swift
var trianglePath = Path()
trianglePath.move(to: CGPoint(x: rect.midX, y: rect.minY))
trianglePath.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
trianglePath.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
trianglePath.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
return trianglePath
```
We can now use our Triangle:

```swift
struct ContentView: View {
    var body: some View {
        HStack {
            Triangle()
                .frame(width: 300, height: 300)
        }
    }
}
```
Here is the result:

<img width="346" alt="Shape_SwiftUI_2" src="https://github.com/Enryun/Flowers/assets/45484154/9e677164-771d-44ec-8386-ee83fa01b6ab">

## Author
James Thang, find me on [LinkedIn](https://www.linkedin.com/in/jamesthang/)
