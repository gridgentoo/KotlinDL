»¢
¬
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
ì
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*
1.12.0-rc02
b'unknown'8ê

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
shape: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
v
PlaceholderPlaceholder*
dtype0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
shape:ÿÿÿÿÿÿÿÿÿ
r
reshape_inputPlaceholder*
dtype0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape:ÿÿÿÿÿÿÿÿÿ
J
reshape/ShapeShapereshape_input*
T0*
_output_shapes
:
e
reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
reshape/strided_sliceStridedSlicereshape/Shapereshape/strided_slice/stackreshape/strided_slice/stack_1reshape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
Y
reshape/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Y
reshape/Reshape/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
Y
reshape/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
­
reshape/Reshape/shapePackreshape/strided_slicereshape/Reshape/shape/1reshape/Reshape/shape/2reshape/Reshape/shape/3*
T0*
N*
_output_shapes
:
z
reshape/ReshapeReshapereshape_inputreshape/Reshape/shape*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
©
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"             *
dtype0*
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
valueB
 *n§®½

,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *n§®=*
dtype0*
_output_shapes
: 
×
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Þ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
 
conv2d/kernelVarHandleOp*
shared_nameconv2d/kernel* 
_class
loc:@conv2d/kernel*
shape: *
dtype0*
_output_shapes
: 
k
.conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/kernel*
_output_shapes
: 

conv2d/kernel/AssignAssignVariableOpconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
dtype0

!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
: * 
_class
loc:@conv2d/kernel

conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 

conv2d/biasVarHandleOp*
shared_nameconv2d/bias*
_class
loc:@conv2d/bias*
shape: *
dtype0*
_output_shapes
: 
g
,conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d/bias*
_output_shapes
: 

conv2d/bias/AssignAssignVariableOpconv2d/biasconv2d/bias/Initializer/zeros*
_class
loc:@conv2d/bias*
dtype0

conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
: *
_class
loc:@conv2d/bias
e
conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
r
conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
: 
¨
conv2d/Conv2DConv2Dreshape/Reshapeconv2d/Conv2D/ReadVariableOp*
T0*
strides
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
e
conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
: 

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
]
conv2d/ReluReluconv2d/BiasAdd*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
T0

max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   

.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL½*
dtype0*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL=*
dtype0*
_output_shapes
: 
Ý
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
æ
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
¦
conv2d_1/kernelVarHandleOp* 
shared_nameconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
shape: @*
dtype0*
_output_shapes
: 
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 

conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_1/kernel*
dtype0

#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: @*"
_class
loc:@conv2d_1/kernel

conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@

conv2d_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
shape:@
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 

conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
dtype0

!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@* 
_class
loc:@conv2d_1/bias*
dtype0
g
conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: @
²
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0*
strides

i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:@

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
T
flatten/ShapeShapemax_pooling2d_1/MaxPool*
T0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
{
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*
N*
_output_shapes
:
}
flatten/ReshapeReshapemax_pooling2d_1/MaxPoolflatten/Reshape/shape*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"@     *
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *½*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *=*
dtype0*
_output_shapes
: 
Î
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
À*
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
À
Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel* 
_output_shapes
:
À*
T0

dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel*
shape:
À
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
À

,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0*
_output_shapes
:

"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
»
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*
_output_shapes	
:


dense/biasVarHandleOp*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias*
shape:*
dtype0
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:
j
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
À*
dtype0
w
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes	
:
w
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
T

dense/ReluReludense/BiasAdd*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
d
"dropout/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

dropout/keras_learning_phasePlaceholderWithDefault"dropout/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
dropout/cond/SwitchSwitchdropout/keras_learning_phasedropout/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
_output_shapes
: *
T0

W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
_
dropout/cond/pred_idIdentitydropout/keras_learning_phase*
_output_shapes
: *
T0

{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *?*
dtype0*
_output_shapes
: 
m
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0
³
!dropout/cond/dropout/Shape/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*
dtype0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¡
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
½
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¯
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
®
dropout/cond/Identity/SwitchSwitch
dense/Reludropout/cond/pred_id*
T0*
_class
loc:@dense/Relu*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*
N**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"   
   *
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *è½*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *è=*
dtype0*
_output_shapes
: 
Ó
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	
*
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
é
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	

Û
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	


dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
shape:	
*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	
*!
_class
loc:@dense_1/kernel

dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0*
_output_shapes
:


dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_1/bias

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	

}
dense_1/MatMulMatMuldropout/cond/Mergedense_1/MatMul/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:

|
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

S
sequential/reshape/ShapeShapePlaceholder*
_output_shapes
:*
T0
p
&sequential/reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(sequential/reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(sequential/reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 sequential/reshape/strided_sliceStridedSlicesequential/reshape/Shape&sequential/reshape/strided_slice/stack(sequential/reshape/strided_slice/stack_1(sequential/reshape/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
d
"sequential/reshape/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
d
"sequential/reshape/Reshape/shape/2Const*
dtype0*
_output_shapes
: *
value	B :
d
"sequential/reshape/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
ä
 sequential/reshape/Reshape/shapePack sequential/reshape/strided_slice"sequential/reshape/Reshape/shape/1"sequential/reshape/Reshape/shape/2"sequential/reshape/Reshape/shape/3*
T0*
N*
_output_shapes
:

sequential/reshape/ReshapeReshapePlaceholder sequential/reshape/Reshape/shape*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
}
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOpconv2d/kernel*
dtype0*&
_output_shapes
: 
É
sequential/conv2d/Conv2DConv2Dsequential/reshape/Reshape'sequential/conv2d/Conv2D/ReadVariableOp*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
T0*
strides

p
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOpconv2d/bias*
dtype0*
_output_shapes
: 
¢
sequential/conv2d/BiasAddBiasAddsequential/conv2d/Conv2D(sequential/conv2d/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
s
sequential/conv2d/ReluRelusequential/conv2d/BiasAdd*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
¯
 sequential/max_pooling2d/MaxPoolMaxPoolsequential/conv2d/Relu*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 

)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: @
Ó
sequential/conv2d_1/Conv2DConv2D sequential/max_pooling2d/MaxPool)sequential/conv2d_1/Conv2D/ReadVariableOp*
T0*
strides
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
t
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
:@
¨
sequential/conv2d_1/BiasAddBiasAddsequential/conv2d_1/Conv2D*sequential/conv2d_1/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
w
sequential/conv2d_1/ReluRelusequential/conv2d_1/BiasAdd*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0
³
"sequential/max_pooling2d_1/MaxPoolMaxPoolsequential/conv2d_1/Relu*
ksize
*
paddingSAME*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
strides

j
sequential/flatten/ShapeShape"sequential/max_pooling2d_1/MaxPool*
T0*
_output_shapes
:
p
&sequential/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(sequential/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(sequential/flatten/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

 sequential/flatten/strided_sliceStridedSlicesequential/flatten/Shape&sequential/flatten/strided_slice/stack(sequential/flatten/strided_slice/stack_1(sequential/flatten/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
m
"sequential/flatten/Reshape/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

 sequential/flatten/Reshape/shapePack sequential/flatten/strided_slice"sequential/flatten/Reshape/shape/1*
T0*
N*
_output_shapes
:

sequential/flatten/ReshapeReshape"sequential/max_pooling2d_1/MaxPool sequential/flatten/Reshape/shape*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
T0
u
&sequential/dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0* 
_output_shapes
:
À

sequential/dense/MatMulMatMulsequential/flatten/Reshape&sequential/dense/MatMul/ReadVariableOp*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
o
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0

sequential/dense/BiasAddBiasAddsequential/dense/MatMul'sequential/dense/BiasAdd/ReadVariableOp*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
j
sequential/dense/ReluRelusequential/dense/BiasAdd*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
q
sequential/dropout/IdentityIdentitysequential/dense/Relu*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	


sequential/dense_1/MatMulMatMulsequential/dropout/Identity(sequential/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

r
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:


sequential/dense_1/BiasAddBiasAddsequential/dense_1/MatMul)sequential/dense_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
l
ArgMaxArgMaxsequential/dense_1/BiasAddArgMax/dimension*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
SoftmaxSoftmaxsequential/dense_1/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_90c91c5a9e61454aa13bdca38e2f5952/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
ò
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueB	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*%
valueB	B B B B B B B B B *
dtype0
¬
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOpglobal_step"/device:CPU:0*
dtypes
2		
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
õ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
T
save/AssignVariableOpAssignVariableOpconv2d/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
X
save/AssignVariableOp_1AssignVariableOpconv2d/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
Z
save/AssignVariableOp_3AssignVariableOpconv2d_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
dense/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
W
save/AssignVariableOp_6AssignVariableOpdense_1/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
Y
save/AssignVariableOp_7AssignVariableOpdense_1/kernelsave/Identity_8*
dtype0
u
save/AssignAssignglobal_stepsave/RestoreV2:8*
T0	*
_class
loc:@global_step*
_output_shapes
: 
ö
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ù
trainable_variablesÁ¾
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"
cond_context
Ó
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *
dense/Relu:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:03
dense/Relu:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
¨
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*Ú
dense/Relu:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0.
dense/Relu:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"©
	variables
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
|
conv2d/kernel:0conv2d/kernel/Assign#conv2d/kernel/Read/ReadVariableOp:0(2*conv2d/kernel/Initializer/random_uniform:08
k
conv2d/bias:0conv2d/bias/Assign!conv2d/bias/Read/ReadVariableOp:0(2conv2d/bias/Initializer/zeros:08

conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08*¾
serving_defaultª
1
image(
Placeholder:0ÿÿÿÿÿÿÿÿÿ1
probabilities 
	Softmax:0ÿÿÿÿÿÿÿÿÿ
&
classes
ArgMax:0	ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict*·
classifyª
1
image(
Placeholder:0ÿÿÿÿÿÿÿÿÿ1
probabilities 
	Softmax:0ÿÿÿÿÿÿÿÿÿ
&
classes
ArgMax:0	ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict