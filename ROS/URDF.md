# Links
1. 相对运动
2. 可分离
# Joints
The connections between *Links*.
用于定义机器人不同部件（`link`）之间的连接方式
## 1. **Fixed（固定关节）**

- 该关节类型用于将两个 `link` **完全固定** 在一起，彼此没有相对运动。
- 适用于机器人结构中不需要运动的部分，例如传感器与机身的连接。

## 2. **Revolute（旋转关节）**

- 允许围绕 **一个固定轴旋转**，并且可以设定 **角度范围（`limit`）**。
- 适用于机械臂的关节，例如 **机械臂的肘关节**。

## 3. **Continuous（连续旋转关节）**

- 也是围绕 **固定轴旋转**，但**没有角度限制**（可无限旋转）。
- 适用于 **车轮、风扇、电机转子** 等组件。

## 4. **Prismatic（滑动关节）**

- 允许沿 **固定轴线** 进行**直线滑动**，可以设定滑动范围（`limit`）。
- 适用于 **直线滑轨、伸缩臂** 等。

## 5. **Planar（平面关节）**

- 允许 **在一个平面上进行两个方向的平移**，并**绕垂直于平面的轴旋转**。
- 适用于 **移动机器人底盘** 之类的场景。

## 6. **Floating（浮动关节）**

- 允许 **六自由度（3个平移 + 3个旋转）** 运动。
- 通常用于 **仿真和初始化状态**，但 **不适用于真实机器人**，因为真实世界中没有完全自由的连接方式。
![[Pasted image 20250309163855.png]]

# The URDF Syntax
```
<?xml version="1.0">
<robot name = "robot">
	<link name = "base">
		<visual>
			<!-- rviz -->
			<geometry>
				<!-- 3D Model -->
			<origin xyz="x y z" rpy="roll pitch yaw"/>
				<!-- 坐标变换，描述在父坐标系中的位置和姿态 -->
			<material>
		<\visual>
		<collision>
			<!-- 碰撞计算使用 -->
			<geometry>
			<origin xyz="x y z" rpy="roll pitch yaw"/>
		<\collision>
		<inertial>
			<!-- 定义link受 --
		<\inertial>
	<\link>
	<joint>
	<\joint>
<\robot>
```