ю–
∆/Э/
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
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
Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
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
С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
}
ResourceApplyGradientDescent
var

alpha"T

delta"T" 
Ttype:
2	"
use_lockingbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
ц
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"train*1.11.02v1.11.0-0-gc19e29306c®Щ
В
Conv1_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*&
shape:€€€€€€€€€АА*
dtype0
І
-Conv1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@Conv1/kernel*%
valueB"            *
dtype0
С
+Conv1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
_class
loc:@Conv1/kernel*
valueB
 *HYЛЊ*
dtype0
С
+Conv1/kernel/Initializer/random_uniform/maxConst*
_class
loc:@Conv1/kernel*
valueB
 *HYЛ>*
dtype0*
_output_shapes
: 
н
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*
_class
loc:@Conv1/kernel*
seed2 
ќ
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@Conv1/kernel
и
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Џ
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Ѓ
Conv1/kernelVarHandleOp*
_class
loc:@Conv1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameConv1/kernel
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 
М
Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0
Ц
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
И
Conv1/bias/Initializer/zerosConst*
_class
loc:@Conv1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ь

Conv1/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_name
Conv1/bias*
_class
loc:@Conv1/bias
e
+Conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
{
Conv1/bias/AssignAssignVariableOp
Conv1/biasConv1/bias/Initializer/zeros*
_class
loc:@Conv1/bias*
dtype0
Д
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
d
Conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
Conv1/Conv2D/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
й
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
paddingVALID*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Х
Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€*
T0
[

Conv1/ReluReluConv1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€
W
flatten/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
°
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
b
flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*
T0*
Tshape0*)
_output_shapes
:€€€€€€€€€Ир
Я
-Dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@Dense/kernel*
valueB"ш d   *
dtype0*
_output_shapes
:
С
+Dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@Dense/kernel*
valueB
 *Ц\яї*
dtype0*
_output_shapes
: 
С
+Dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@Dense/kernel*
valueB
 *Ц\я;*
dtype0*
_output_shapes
: 
з
5Dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
Ирd*

seed *
T0*
_class
loc:@Dense/kernel*
seed2 
ќ
+Dense/kernel/Initializer/random_uniform/subSub+Dense/kernel/Initializer/random_uniform/max+Dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Dense/kernel*
_output_shapes
: 
в
+Dense/kernel/Initializer/random_uniform/mulMul5Dense/kernel/Initializer/random_uniform/RandomUniform+Dense/kernel/Initializer/random_uniform/sub*
_class
loc:@Dense/kernel* 
_output_shapes
:
Ирd*
T0
‘
'Dense/kernel/Initializer/random_uniformAdd+Dense/kernel/Initializer/random_uniform/mul+Dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Dense/kernel* 
_output_shapes
:
Ирd
®
Dense/kernelVarHandleOp*
_class
loc:@Dense/kernel*
	container *
shape:
Ирd*
dtype0*
_output_shapes
: *
shared_nameDense/kernel
i
-Dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpDense/kernel*
_output_shapes
: 
М
Dense/kernel/AssignAssignVariableOpDense/kernel'Dense/kernel/Initializer/random_uniform*
_class
loc:@Dense/kernel*
dtype0
Р
 Dense/kernel/Read/ReadVariableOpReadVariableOpDense/kernel*
_class
loc:@Dense/kernel*
dtype0* 
_output_shapes
:
Ирd
И
Dense/bias/Initializer/zerosConst*
_output_shapes
:d*
_class
loc:@Dense/bias*
valueBd*    *
dtype0
Ь

Dense/biasVarHandleOp*
shape:d*
dtype0*
_output_shapes
: *
shared_name
Dense/bias*
_class
loc:@Dense/bias*
	container 
e
+Dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Dense/bias*
_output_shapes
: 
{
Dense/bias/AssignAssignVariableOp
Dense/biasDense/bias/Initializer/zeros*
dtype0*
_class
loc:@Dense/bias
Д
Dense/bias/Read/ReadVariableOpReadVariableOp
Dense/bias*
_class
loc:@Dense/bias*
dtype0*
_output_shapes
:d
j
Dense/MatMul/ReadVariableOpReadVariableOpDense/kernel*
dtype0* 
_output_shapes
:
Ирd
Ь
Dense/MatMulMatMulflatten/ReshapeDense/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€d*
transpose_a( *
transpose_b( *
T0
c
Dense/BiasAdd/ReadVariableOpReadVariableOp
Dense/bias*
dtype0*
_output_shapes
:d
Н
Dense/BiasAddBiasAddDense/MatMulDense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€d
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *<ХyЊ*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *<Хy>*
dtype0*
_output_shapes
: 
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
ђ
dense_1/kernelVarHandleOp*
_output_shapes
: *
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:d*
dtype0
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d*!
_class
loc:@dense_1/kernel*
dtype0
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ґ
dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:d
Ю
dense_1/MatMulMatMulDense/BiasAdddense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
r
0TFOptimizer/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *
dtype0	
С
TFOptimizer/iterationsVarHandleOp*
shape: *'
shared_nameTFOptimizer/iterations*
dtype0	*
_output_shapes
: *
	container 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
≥
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
§
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
Б
dense_targetPlaceholder*%
shape:€€€€€€€€€€€€€€€€€€*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Б
dense_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
Z
loss/dense_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
Z
loss/dense_loss/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
i
loss/dense_loss/subSubloss/dense_loss/sub/xloss/dense_loss/Const*
T0*
_output_shapes
: 
И
%loss/dense_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0
Ш
loss/dense_loss/clip_by_valueMaximum%loss/dense_loss/clip_by_value/Minimumloss/dense_loss/Const*'
_output_shapes
:€€€€€€€€€*
T0
\
loss/dense_loss/sub_1/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
Ж
loss/dense_loss/sub_1Subloss/dense_loss/sub_1/xloss/dense_loss/clip_by_value*'
_output_shapes
:€€€€€€€€€*
T0
К
loss/dense_loss/truedivRealDivloss/dense_loss/clip_by_valueloss/dense_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0
e
loss/dense_loss/LogLogloss/dense_loss/truediv*
T0*'
_output_shapes
:€€€€€€€€€
|
(loss/dense_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
Ђ
*loss/dense_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_loss/Log(loss/dense_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
Ћ
$loss/dense_loss/logistic_loss/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualloss/dense_loss/Log(loss/dense_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
o
!loss/dense_loss/logistic_loss/NegNegloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
∆
&loss/dense_loss/logistic_loss/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqual!loss/dense_loss/logistic_loss/Negloss/dense_loss/Log*'
_output_shapes
:€€€€€€€€€*
T0
Ж
!loss/dense_loss/logistic_loss/mulMulloss/dense_loss/Logdense_target*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
ђ
!loss/dense_loss/logistic_loss/subSub$loss/dense_loss/logistic_loss/Select!loss/dense_loss/logistic_loss/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
В
!loss/dense_loss/logistic_loss/ExpExp&loss/dense_loss/logistic_loss/Select_1*'
_output_shapes
:€€€€€€€€€*
T0
Б
#loss/dense_loss/logistic_loss/Log1pLog1p!loss/dense_loss/logistic_loss/Exp*
T0*'
_output_shapes
:€€€€€€€€€
І
loss/dense_loss/logistic_lossAdd!loss/dense_loss/logistic_loss/sub#loss/dense_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
q
&loss/dense_loss/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Ѓ
loss/dense_loss/MeanMeanloss/dense_loss/logistic_loss&loss/dense_loss/Mean/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0
Ш
Dloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_sample_weights*
out_type0*
_output_shapes
:*
T0
Е
Closs/dense_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
Closs/dense_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_loss/Mean*
T0*
out_type0*
_output_shapes
:
Д
Bloss/dense_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Д
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
у
@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarEqualBloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar/xCloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
э
Lloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Ћ
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityNloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

…
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityLloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Љ
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentity@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
б
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*S
_classI
GEloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
В
lloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualsloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchuloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
К
sloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchBloss/dense_loss/broadcast_weights/assert_broadcastable/values/rankMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*U
_classK
IGloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/rank
О
uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rankMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
п
floss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchlloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

€
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityhloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
э
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityfloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

В
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitylloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
µ
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
»
{loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsЖloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
§
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
А
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchВloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
љ
Аloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Ѓ
Аloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
√
zloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillАloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeАloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
©
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Є
wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2{loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimszloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
Є
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ѕ
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsИloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
®
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchDloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Е
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchДloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
Х
Йloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b
…
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeЛloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Я
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B : *
dtype0
Т
ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualrloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xБloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
н
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchlloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classu
sqloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ц
eloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergehloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

є
Kloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeeloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergePloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
_output_shapes
: : *
T0
*
N
§
<loss/dense_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Н
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Х
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_2Const*'
valueB Bdense_sample_weights:0*
dtype0*
_output_shapes
: 
М
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_3Const*
_output_shapes
: *
valueB Bvalues.shape=*
dtype0
Х
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_4Const*
dtype0*
_output_shapes
: *'
valueB Bloss/dense_loss/Mean:0
Й
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Р
Iloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

≈
Kloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

√
Kloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityIloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
ƒ
Jloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Э
Gloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
щ
Uloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tH^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
Ж
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
н
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
х
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*'
valueB Bdense_sample_weights:0*
dtype0*
_output_shapes
: 
м
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
х
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*'
valueB Bloss/dense_loss/Mean:0*
dtype0*
_output_shapes
: 
й
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
≤
Iloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertPloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchPloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ц
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
т
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchDloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
р
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/values/shapeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
в
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*S
_classI
GEloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
э
Wloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fJ^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
T0

≠
Hloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeWloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Uloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

–
1loss/dense_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_loss/MeanI^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ѕ
1loss/dense_loss/broadcast_weights/ones_like/ConstConstI^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ў
+loss/dense_loss/broadcast_weights/ones_likeFill1loss/dense_loss/broadcast_weights/ones_like/Shape1loss/dense_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:€€€€€€€€€*
T0*

index_type0
Щ
!loss/dense_loss/broadcast_weightsMuldense_sample_weights+loss/dense_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
Б
loss/dense_loss/MulMulloss/dense_loss/Mean!loss/dense_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/dense_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ж
loss/dense_loss/SumSumloss/dense_loss/Mulloss/dense_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
loss/dense_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ц
loss/dense_loss/Sum_1Sum!loss/dense_loss/broadcast_weightsloss/dense_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
q
loss/dense_loss/truediv_1RealDivloss/dense_loss/Sumloss/dense_loss/Sum_1*
T0*
_output_shapes
: 
_
loss/dense_loss/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    
v
loss/dense_loss/GreaterGreaterloss/dense_loss/Sum_1loss/dense_loss/zeros_like*
T0*
_output_shapes
: 
С
loss/dense_loss/SelectSelectloss/dense_loss/Greaterloss/dense_loss/truediv_1loss/dense_loss/zeros_like*
_output_shapes
: *
T0
Z
loss/dense_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
Н
loss/dense_loss/Mean_1Meanloss/dense_loss/Selectloss/dense_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/dense_loss/Mean_1*
T0*
_output_shapes
: 
g
$training/TFOptimizer/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ѓ
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Х
0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/dense_loss/Mean_1*
T0*
_output_shapes
: 
Л
2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
≠
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
©
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
ѓ
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
Л
Htraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
П
Btraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Htraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Г
@training/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/ConstConst*
_output_shapes
: *
valueB *
dtype0
А
?training/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/TileTileBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Reshape@training/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0
З
Btraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Const_1Const*
_output_shapes
: *
valueB
 *  А?*
dtype0
у
Btraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/truedivRealDiv?training/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/TileBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/Const_1*
_output_shapes
: *
T0
К
Etraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
Atraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/SelectSelectloss/dense_loss/GreaterBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/truedivEtraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
Т
Ctraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/Select_1Selectloss/dense_loss/GreaterEtraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/zeros_likeBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_1_grad/truediv*
T0*
_output_shapes
: 
Ё
Ktraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/dense_loss/Select_grad/SelectD^training/TFOptimizer/gradients/loss/dense_loss/Select_grad/Select_1
з
Straining/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/SelectL^training/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_loss/Select_grad/Select*
_output_shapes
: 
н
Utraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/Select_1L^training/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_loss/Select_grad/Select_1*
_output_shapes
: 
Ж
Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
И
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
µ
Straining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/ShapeEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ё
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDivRealDivStraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/control_dependencyloss/dense_loss/Sum_1*
_output_shapes
: *
T0
Ґ
Atraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/SumSumEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDivStraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
З
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/ReshapeReshapeAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/SumCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
~
Atraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/NegNegloss/dense_loss/Sum*
_output_shapes
: *
T0
Ќ
Gtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDiv_1RealDivAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Negloss/dense_loss/Sum_1*
_output_shapes
: *
T0
”
Gtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDiv_2RealDivGtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDiv_1loss/dense_loss/Sum_1*
_output_shapes
: *
T0
З
Atraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/mulMulStraining/TFOptimizer/gradients/loss/dense_loss/Select_grad/tuple/control_dependencyGtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/RealDiv_2*
_output_shapes
: *
T0
Ґ
Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Sum_1SumAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/mulUtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Н
Gtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Reshape_1ReshapeCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Sum_1Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
и
Ntraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/ReshapeH^training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Reshape_1
х
Vtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/control_dependencyIdentityEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/ReshapeO^training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Reshape*
_output_shapes
: 
ы
Xtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/control_dependency_1IdentityGtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Reshape_1O^training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@training/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/Reshape_1*
_output_shapes
: 
П
Etraining/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
Ь
?training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/ReshapeReshapeVtraining/TFOptimizer/gradients/loss/dense_loss/truediv_1_grad/tuple/control_dependencyEtraining/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Р
=training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/ShapeShapeloss/dense_loss/Mul*
T0*
out_type0*
_output_shapes
:
Д
<training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/TileTile?training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Reshape=training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
С
=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/ShapeShapeloss/dense_loss/Mean*
_output_shapes
:*
T0*
out_type0
†
?training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Shape_1Shape!loss/dense_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0
£
Mtraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Shape?training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
—
;training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/MulMul<training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Tile!loss/dense_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
О
;training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/SumSum;training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/MulMtraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
В
?training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/ReshapeReshape;training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Sum=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
∆
=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Mul_1Mulloss/dense_loss/Mean<training/TFOptimizer/gradients/loss/dense_loss/Sum_grad/Tile*
T0*#
_output_shapes
:€€€€€€€€€
Ф
=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Sum_1Sum=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Mul_1Otraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
И
Atraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Reshape_1Reshape=training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Sum_1?training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
÷
Htraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/ReshapeB^training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Reshape_1
к
Ptraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/control_dependencyIdentity?training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/ReshapeI^training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Reshape*#
_output_shapes
:€€€€€€€€€
р
Rtraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/control_dependency_1IdentityAtraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Reshape_1I^training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_loss/Mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
Ы
>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ShapeShapeloss/dense_loss/logistic_loss*
T0*
out_type0*
_output_shapes
:
“
=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/SizeConst*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ю
<training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/addAdd&loss/dense_loss/Mean/reduction_indices=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Size*
T0*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
: 
є
<training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/modFloorMod<training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/add=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Size*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
: *
T0
÷
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_1Const*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
ў
Dtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/range/startConst*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
ў
Dtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/range/deltaConst*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Н
>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/rangeRangeDtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/range/start=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/SizeDtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/range/delta*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:*

Tidx0
Ў
Ctraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
value	B :
“
=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/FillFill@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_1Ctraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Fill/value*
T0*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*

index_type0*
_output_shapes
: 
’
Ftraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/DynamicStitchDynamicStitch>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/range<training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/mod>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Fill*
T0*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
N*
_output_shapes
:
„
Btraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum/yConst*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ѕ
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/MaximumMaximumFtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/DynamicStitchBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum/y*
T0*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:
«
Atraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/floordivFloorDiv>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum*
T0*Q
_classG
ECloc:@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape*
_output_shapes
:
Ѓ
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ReshapeReshapePtraining/TFOptimizer/gradients/loss/dense_loss/Mul_grad/tuple/control_dependencyFtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ч
=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/TileTile@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ReshapeAtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Э
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_2Shapeloss/dense_loss/logistic_loss*
_output_shapes
:*
T0*
out_type0
Ф
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_3Shapeloss/dense_loss/Mean*
T0*
out_type0*
_output_shapes
:
И
>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Е
=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ProdProd@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_2>training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
К
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Й
?training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Prod_1Prod@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Shape_3@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ж
Dtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
х
Btraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum_1Maximum?training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Prod_1Dtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
у
Ctraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/floordiv_1FloorDiv=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/ProdBtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
 
=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/CastCastCtraining/TFOptimizer/gradients/loss/dense_loss/Mean_grad/floordiv_1*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Д
@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/truedivRealDiv=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Tile=training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/Cast*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
®
Gtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/ShapeShape!loss/dense_loss/logistic_loss/sub*
T0*
out_type0*
_output_shapes
:
ђ
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Shape_1Shape#loss/dense_loss/logistic_loss/Log1p*
_output_shapes
:*
T0*
out_type0
Ѕ
Wtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/ShapeItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
І
Etraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/SumSum@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/truedivWtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
≠
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/ReshapeReshapeEtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/SumGtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ђ
Gtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Sum_1Sum@training/TFOptimizer/gradients/loss/dense_loss/Mean_grad/truedivYtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
™
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1ReshapeGtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Sum_1Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
ф
Rtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/group_depsNoOpJ^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/ReshapeL^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1
Я
Ztraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependencyIdentityItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/ReshapeS^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/group_deps*
T0*\
_classR
PNloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Reshape*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ь
\training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependency_1IdentityKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1S^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/group_deps*
T0*^
_classT
RPloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
ѓ
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/ShapeShape$loss/dense_loss/logistic_loss/Select*
out_type0*
_output_shapes
:*
T0
Ѓ
Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1Shape!loss/dense_loss/logistic_loss/mul*
_output_shapes
:*
T0*
out_type0
Ќ
[training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/ShapeMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
…
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/SumSumZtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependency[training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
∞
Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/ReshapeReshapeItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/SumKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ќ
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Sum_1SumZtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependency]training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ј
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/NegNegKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Sum_1*
T0*
_output_shapes
:
љ
Otraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1ReshapeItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/NegMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
А
Vtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/group_depsNoOpN^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/ReshapeP^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1
¶
^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependencyIdentityMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/ReshapeW^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/group_deps*
T0*`
_classV
TRloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
µ
`training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependency_1IdentityOtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1W^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/group_deps*
T0*b
_classX
VTloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/Reshape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
с
Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add/xConst]^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependency_1*
dtype0*
_output_shapes
: *
valueB
 *  А?
ц
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/addAddMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add/x!loss/dense_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0
я
Rtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:€€€€€€€€€
ґ
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/mulMul\training/TFOptimizer/gradients/loss/dense_loss/logistic_loss_grad/tuple/control_dependency_1Rtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0
І
Straining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
м
Otraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqual^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependencyStraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
о
Qtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqualStraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/zeros_like^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
З
Ytraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/group_depsNoOpP^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/SelectR^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select_1
∞
atraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/control_dependencyIdentityOtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/SelectZ^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select*'
_output_shapes
:€€€€€€€€€
ґ
ctraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/control_dependency_1IdentityQtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select_1Z^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select_1*'
_output_shapes
:€€€€€€€€€
Ю
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_loss/Log*
T0*
out_type0*
_output_shapes
:
Щ
Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1Shapedense_target*
_output_shapes
:*
T0*
out_type0
Ќ
[training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/ShapeMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ы
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/MulMul`training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependency_1dense_target*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Є
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/SumSumItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul[training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
∞
Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/ReshapeReshapeItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/SumKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Д
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_loss/Log`training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/sub_grad/tuple/control_dependency_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
Њ
Ktraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Sum_1SumKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Mul_1]training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
њ
Otraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape_1ReshapeKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Sum_1Mtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
А
Vtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/group_depsNoOpN^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/ReshapeP^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape_1
¶
^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/control_dependencyIdentityMtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/ReshapeW^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*`
_classV
TRloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape
µ
`training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/control_dependency_1IdentityOtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape_1W^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/Reshape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
т
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Exp_grad/mulMulKtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Log1p_grad/mul!loss/dense_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0
Ј
Utraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike!loss/dense_loss/logistic_loss/Neg*'
_output_shapes
:€€€€€€€€€*
T0
џ
Qtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Exp_grad/mulUtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
Ё
Straining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqualUtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/zeros_likeItraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:€€€€€€€€€
Н
[training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/group_depsNoOpR^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/SelectT^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1
Є
ctraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/control_dependencyIdentityQtraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select\^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select*'
_output_shapes
:€€€€€€€€€
Њ
etraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/control_dependency_1IdentityStraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1\^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*f
_class\
ZXloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/Select_1
з
Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Neg_grad/NegNegctraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
њ
#training/TFOptimizer/gradients/AddNAddNatraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/tuple/control_dependency^training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/mul_grad/tuple/control_dependencyetraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_1_grad/tuple/control_dependency_1Itraining/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Neg_grad/Neg*
T0*b
_classX
VTloc:@training/TFOptimizer/gradients/loss/dense_loss/logistic_loss/Select_grad/Select*
N*'
_output_shapes
:€€€€€€€€€
Ѕ
Btraining/TFOptimizer/gradients/loss/dense_loss/Log_grad/Reciprocal
Reciprocalloss/dense_loss/truediv$^training/TFOptimizer/gradients/AddN*
T0*'
_output_shapes
:€€€€€€€€€
Ё
;training/TFOptimizer/gradients/loss/dense_loss/Log_grad/mulMul#training/TFOptimizer/gradients/AddNBtraining/TFOptimizer/gradients/loss/dense_loss/Log_grad/Reciprocal*'
_output_shapes
:€€€€€€€€€*
T0
Ю
Atraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/ShapeShapeloss/dense_loss/clip_by_value*
T0*
out_type0*
_output_shapes
:
Ш
Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Shape_1Shapeloss/dense_loss/sub_1*
T0*
out_type0*
_output_shapes
:
ѓ
Qtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/ShapeCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
‘
Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDivRealDiv;training/TFOptimizer/gradients/loss/dense_loss/Log_grad/mulloss/dense_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0
Ю
?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/SumSumCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDivQtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Т
Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/ReshapeReshape?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/SumAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ч
?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/NegNegloss/dense_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
Џ
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDiv_1RealDiv?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Negloss/dense_loss/sub_1*
T0*'
_output_shapes
:€€€€€€€€€
а
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDiv_2RealDivEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDiv_1loss/dense_loss/sub_1*'
_output_shapes
:€€€€€€€€€*
T0
ь
?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/mulMul;training/TFOptimizer/gradients/loss/dense_loss/Log_grad/mulEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/RealDiv_2*'
_output_shapes
:€€€€€€€€€*
T0
Ю
Atraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Sum_1Sum?training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/mulStraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ш
Etraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape_1ReshapeAtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Sum_1Ctraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
в
Ltraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/group_depsNoOpD^training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/ReshapeF^training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape_1
ю
Ttraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/control_dependencyIdentityCtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/ReshapeM^training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Д
Vtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape_1M^training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
В
?training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Ю
Atraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Shape_1Shapeloss/dense_loss/clip_by_value*
_output_shapes
:*
T0*
out_type0
©
Otraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/ShapeAtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
≠
=training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/SumSumVtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/control_dependency_1Otraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ы
Atraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/ReshapeReshape=training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Sum?training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Shape*
_output_shapes
: *
T0*
Tshape0
±
?training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Sum_1SumVtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/control_dependency_1Qtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
®
=training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/NegNeg?training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Sum_1*
_output_shapes
:*
T0
Р
Ctraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Reshape_1Reshape=training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/NegAtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
№
Jtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/ReshapeD^training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Reshape_1
е
Rtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/ReshapeK^training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Reshape*
_output_shapes
: 
ь
Ttraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Reshape_1K^training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
м
%training/TFOptimizer/gradients/AddN_1AddNTtraining/TFOptimizer/gradients/loss/dense_loss/truediv_grad/tuple/control_dependencyTtraining/TFOptimizer/gradients/loss/dense_loss/sub_1_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/loss/dense_loss/truediv_grad/Reshape*
N
ђ
Gtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/ShapeShape%loss/dense_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
М
Itraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ѓ
Itraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape_2Shape%training/TFOptimizer/gradients/AddN_1*
T0*
out_type0*
_output_shapes
:
Т
Mtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≠
Gtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/zerosFillItraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape_2Mtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
ќ
Ntraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/GreaterEqualGreaterEqual%loss/dense_loss/clip_by_value/Minimumloss/dense_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€
Ѕ
Wtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/ShapeItraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ƒ
Htraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/SelectSelectNtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/GreaterEqual%training/TFOptimizer/gradients/AddN_1Gtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€
∆
Jtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Select_1SelectNtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/GreaterEqualGtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/zeros%training/TFOptimizer/gradients/AddN_1*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
Etraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/SumSumHtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/SelectWtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
§
Itraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/ReshapeReshapeEtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/SumGtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
µ
Gtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Sum_1SumJtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Select_1Ytraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Щ
Ktraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Reshape_1ReshapeGtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Sum_1Itraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ф
Rtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/group_depsNoOpJ^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/ReshapeL^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Reshape_1
Ц
Ztraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/control_dependencyIdentityItraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/ReshapeS^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/group_deps*
T0*\
_classR
PNloc:@training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Л
\training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/control_dependency_1IdentityKtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Reshape_1S^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/group_deps*
T0*^
_classT
RPloc:@training/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/Reshape_1*
_output_shapes
: 
Ю
Otraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/ShapeShapedense_1/Sigmoid*
T0*
out_type0*
_output_shapes
:
Ф
Qtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
л
Qtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape_2ShapeZtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
Ъ
Utraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≈
Otraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/zerosFillQtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape_2Utraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
Є
Straining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_1/Sigmoidloss/dense_loss/sub*'
_output_shapes
:€€€€€€€€€*
T0
ў
_training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsOtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/ShapeQtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
О
Ptraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/SelectSelectStraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/LessEqualZtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/control_dependencyOtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:€€€€€€€€€*
T0
Р
Rtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Select_1SelectStraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/LessEqualOtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/zerosZtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€*
T0
«
Mtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/SumSumPtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Select_training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Љ
Qtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/ReshapeReshapeMtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/SumOtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ќ
Otraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Sum_1SumRtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Select_1atraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
±
Straining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeOtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Sum_1Qtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
М
Ztraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpR^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/ReshapeT^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape_1
ґ
btraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityQtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape[^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Ђ
dtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityStraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape_1[^training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@training/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
х
?training/TFOptimizer/gradients/dense_1/Sigmoid_grad/SigmoidGradSigmoidGraddense_1/Sigmoidbtraining/TFOptimizer/gradients/loss/dense_loss/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€
Ћ
?training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/TFOptimizer/gradients/dense_1/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes
:
–
Dtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp@^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGrad@^training/TFOptimizer/gradients/dense_1/Sigmoid_grad/SigmoidGrad
ж
Ltraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity?training/TFOptimizer/gradients/dense_1/Sigmoid_grad/SigmoidGradE^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/dense_1/Sigmoid_grad/SigmoidGrad
џ
Ntraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity?training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGradE^training/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@training/TFOptimizer/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
И
9training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMulMatMulLtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€d*
transpose_a( *
transpose_b(
с
;training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1MatMulDense/BiasAddLtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:d*
transpose_a(*
transpose_b( *
T0
≈
Ctraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_depsNoOp:^training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul<^training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1
Ў
Ktraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity9training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMulD^training/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€d
’
Mtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity;training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1D^training/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

:d*
T0*N
_classD
B@loc:@training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul_1
’
=training/TFOptimizer/gradients/Dense/BiasAdd_grad/BiasAddGradBiasAddGradKtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency*
data_formatNHWC*
_output_shapes
:d*
T0
Ў
Btraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/Dense/BiasAdd_grad/BiasAddGradL^training/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency
и
Jtraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/control_dependencyIdentityKtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependencyC^training/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€d*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/dense_1/MatMul_grad/MatMul
”
Ltraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/Dense/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/Dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
Д
7training/TFOptimizer/gradients/Dense/MatMul_grad/MatMulMatMulJtraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/control_dependencyDense/MatMul/ReadVariableOp*)
_output_shapes
:€€€€€€€€€Ир*
transpose_a( *
transpose_b(*
T0
с
9training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeJtraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
Ирd*
transpose_a(*
transpose_b( *
T0
њ
Atraining/TFOptimizer/gradients/Dense/MatMul_grad/tuple/group_depsNoOp8^training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul:^training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul_1
“
Itraining/TFOptimizer/gradients/Dense/MatMul_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/Dense/MatMul_grad/MatMulB^training/TFOptimizer/gradients/Dense/MatMul_grad/tuple/group_deps*)
_output_shapes
:€€€€€€€€€Ир*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul
ѕ
Ktraining/TFOptimizer/gradients/Dense/MatMul_grad/tuple/control_dependency_1Identity9training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul_1B^training/TFOptimizer/gradients/Dense/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@training/TFOptimizer/gradients/Dense/MatMul_grad/MatMul_1* 
_output_shapes
:
Ирd
Г
9training/TFOptimizer/gradients/flatten/Reshape_grad/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
Ф
;training/TFOptimizer/gradients/flatten/Reshape_grad/ReshapeReshapeItraining/TFOptimizer/gradients/Dense/MatMul_grad/tuple/control_dependency9training/TFOptimizer/gradients/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€
∆
7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradReluGrad;training/TFOptimizer/gradients/flatten/Reshape_grad/Reshape
Conv1/Relu*
T0*/
_output_shapes
:€€€€€€€€€
Ѕ
=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
ƒ
Btraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_depsNoOp>^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad8^training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad
Џ
Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependencyIdentity7training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@training/TFOptimizer/gradients/Conv1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€
”
Ltraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1Identity=training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGradC^training/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/group_deps*
T0*P
_classF
DBloc:@training/TFOptimizer/gradients/Conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ѓ
7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNShapeNConv1_inputConv1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
®
Dtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeNConv1/Conv2D/ReadVariableOpJtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*1
_output_shapes
:€€€€€€€€€АА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
С
Etraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv1_input9training/TFOptimizer/gradients/Conv1/Conv2D_grad/ShapeN:1Jtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ў
Atraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_depsNoOpF^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterE^training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput
ф
Itraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependencyIdentityDtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInputB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropInput*1
_output_shapes
:€€€€€€€€€АА
н
Ktraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1IdentityEtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilterB^training/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/group_deps*
T0*X
_classN
LJloc:@training/TFOptimizer/gradients/Conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
w
2training/TFOptimizer/GradientDescent/learning_rateConst*
valueB
 *ЌћL>*
dtype0*
_output_shapes
: 
°
Ltraining/TFOptimizer/GradientDescent/update_Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
ћ
Atraining/TFOptimizer/GradientDescent/update_Conv1/kernel/IdentityIdentityLtraining/TFOptimizer/GradientDescent/update_Conv1/kernel/Read/ReadVariableOp*
T0*&
_output_shapes
:
Б
Utraining/TFOptimizer/GradientDescent/update_Conv1/kernel/ResourceApplyGradientDescentResourceApplyGradientDescentConv1/kernel2training/TFOptimizer/GradientDescent/learning_rateKtraining/TFOptimizer/gradients/Conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*_
_classU
SQloc:@training/TFOptimizer/GradientDescent/update_Conv1/kernel/Read/ReadVariableOp
С
Jtraining/TFOptimizer/GradientDescent/update_Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Љ
?training/TFOptimizer/GradientDescent/update_Conv1/bias/IdentityIdentityJtraining/TFOptimizer/GradientDescent/update_Conv1/bias/Read/ReadVariableOp*
_output_shapes
:*
T0
ь
Straining/TFOptimizer/GradientDescent/update_Conv1/bias/ResourceApplyGradientDescentResourceApplyGradientDescent
Conv1/bias2training/TFOptimizer/GradientDescent/learning_rateLtraining/TFOptimizer/gradients/Conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*]
_classS
QOloc:@training/TFOptimizer/GradientDescent/update_Conv1/bias/Read/ReadVariableOp
Ы
Ltraining/TFOptimizer/GradientDescent/update_Dense/kernel/Read/ReadVariableOpReadVariableOpDense/kernel*
dtype0* 
_output_shapes
:
Ирd
∆
Atraining/TFOptimizer/GradientDescent/update_Dense/kernel/IdentityIdentityLtraining/TFOptimizer/GradientDescent/update_Dense/kernel/Read/ReadVariableOp* 
_output_shapes
:
Ирd*
T0
Б
Utraining/TFOptimizer/GradientDescent/update_Dense/kernel/ResourceApplyGradientDescentResourceApplyGradientDescentDense/kernel2training/TFOptimizer/GradientDescent/learning_rateKtraining/TFOptimizer/gradients/Dense/MatMul_grad/tuple/control_dependency_1*_
_classU
SQloc:@training/TFOptimizer/GradientDescent/update_Dense/kernel/Read/ReadVariableOp*
use_locking( *
T0
С
Jtraining/TFOptimizer/GradientDescent/update_Dense/bias/Read/ReadVariableOpReadVariableOp
Dense/bias*
dtype0*
_output_shapes
:d
Љ
?training/TFOptimizer/GradientDescent/update_Dense/bias/IdentityIdentityJtraining/TFOptimizer/GradientDescent/update_Dense/bias/Read/ReadVariableOp*
_output_shapes
:d*
T0
ь
Straining/TFOptimizer/GradientDescent/update_Dense/bias/ResourceApplyGradientDescentResourceApplyGradientDescent
Dense/bias2training/TFOptimizer/GradientDescent/learning_rateLtraining/TFOptimizer/gradients/Dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*]
_classS
QOloc:@training/TFOptimizer/GradientDescent/update_Dense/bias/Read/ReadVariableOp
Э
Ntraining/TFOptimizer/GradientDescent/update_dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d*
dtype0
»
Ctraining/TFOptimizer/GradientDescent/update_dense_1/kernel/IdentityIdentityNtraining/TFOptimizer/GradientDescent/update_dense_1/kernel/Read/ReadVariableOp*
T0*
_output_shapes

:d
Й
Wtraining/TFOptimizer/GradientDescent/update_dense_1/kernel/ResourceApplyGradientDescentResourceApplyGradientDescentdense_1/kernel2training/TFOptimizer/GradientDescent/learning_rateMtraining/TFOptimizer/gradients/dense_1/MatMul_grad/tuple/control_dependency_1*a
_classW
USloc:@training/TFOptimizer/GradientDescent/update_dense_1/kernel/Read/ReadVariableOp*
use_locking( *
T0
Х
Ltraining/TFOptimizer/GradientDescent/update_dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
ј
Atraining/TFOptimizer/GradientDescent/update_dense_1/bias/IdentityIdentityLtraining/TFOptimizer/GradientDescent/update_dense_1/bias/Read/ReadVariableOp*
_output_shapes
:*
T0
Д
Utraining/TFOptimizer/GradientDescent/update_dense_1/bias/ResourceApplyGradientDescentResourceApplyGradientDescentdense_1/bias2training/TFOptimizer/GradientDescent/learning_rateNtraining/TFOptimizer/gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*_
_classU
SQloc:@training/TFOptimizer/GradientDescent/update_dense_1/bias/Read/ReadVariableOp
Ѕ
+training/TFOptimizer/GradientDescent/updateNoOpT^training/TFOptimizer/GradientDescent/update_Conv1/bias/ResourceApplyGradientDescentV^training/TFOptimizer/GradientDescent/update_Conv1/kernel/ResourceApplyGradientDescentT^training/TFOptimizer/GradientDescent/update_Dense/bias/ResourceApplyGradientDescentV^training/TFOptimizer/GradientDescent/update_Dense/kernel/ResourceApplyGradientDescentV^training/TFOptimizer/GradientDescent/update_dense_1/bias/ResourceApplyGradientDescentX^training/TFOptimizer/GradientDescent/update_dense_1/kernel/ResourceApplyGradientDescent
µ
8training/TFOptimizer/GradientDescent/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations,^training/TFOptimizer/GradientDescent/update*
dtype0	*
_output_shapes
: 
Ф
-training/TFOptimizer/GradientDescent/IdentityIdentity8training/TFOptimizer/GradientDescent/Read/ReadVariableOp*
T0	*
_output_shapes
: 
з
*training/TFOptimizer/GradientDescent/ConstConst,^training/TFOptimizer/GradientDescent/update*K
_classA
?=loc:@training/TFOptimizer/GradientDescent/Read/ReadVariableOp*
value	B	 R*
dtype0	*
_output_shapes
: 
ў
$training/TFOptimizer/GradientDescentAssignAddVariableOpTFOptimizer/iterations*training/TFOptimizer/GradientDescent/Const*K
_classA
?=loc:@training/TFOptimizer/GradientDescent/Read/ReadVariableOp*
dtype0	
M
training/group_depsNoOp	^loss/mul%^training/TFOptimizer/GradientDescent
H
Const_1Const*
_output_shapes
: *
valueB B *
dtype0
H
Const_2Const*
dtype0*
_output_shapes
: *
valueB B 
H
Const_3Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_4Const*
dtype0*
_output_shapes
: *
valueB B 
H
Const_5Const*
_output_shapes
: *
valueB B *
dtype0
H
Const_6Const*
valueB B *
dtype0*
_output_shapes
: 
\
Const_7Const"/device:CPU:0*
_output_shapes
: *
valueB Bmodel*
dtype0
H
Const_8Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_9Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_10Const*
dtype0*
_output_shapes
: *
valueB B 
I
Const_11Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_12Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_13Const*
_output_shapes
: *
valueB B *
dtype0
§
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_7RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
I
AssignVariableOpAssignVariableOpConv1/kernelIdentity*
dtype0
§
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_7RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
K
AssignVariableOp_1AssignVariableOp
Conv1/bias
Identity_1*
dtype0
¶
RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_7RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
M
AssignVariableOp_2AssignVariableOpDense/kernel
Identity_2*
dtype0
§
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_3	RestoreV2Const_7RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
K
AssignVariableOp_3AssignVariableOp
Dense/bias
Identity_3*
dtype0
¶
RestoreV2_4/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
У
RestoreV2_4	RestoreV2Const_7RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
O
AssignVariableOp_4AssignVariableOpdense_1/kernel
Identity_4*
dtype0
§
RestoreV2_5/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_5	RestoreV2Const_7RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
M
AssignVariableOp_5AssignVariableOpdense_1/bias
Identity_5*
dtype0
†
RestoreV2_6/tensor_namesConst"/device:CPU:0*E
value<B:B0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
У
RestoreV2_6	RestoreV2Const_7RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
F

Identity_6IdentityRestoreV2_6*
T0	*
_output_shapes
:
W
AssignVariableOp_6AssignVariableOpTFOptimizer/iterations
Identity_6*
dtype0	
N
VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Z
VarIsInitializedOp_1VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
N
VarIsInitializedOp_2VarIsInitializedOp
Dense/bias*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_4VarIsInitializedOpDense/kernel*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpConv1/kernel*
_output_shapes
: 
N
VarIsInitializedOp_6VarIsInitializedOp
Conv1/bias*
_output_shapes
: 
Ѓ
initNoOp^Conv1/bias/Assign^Conv1/kernel/Assign^Dense/bias/Assign^Dense/kernel/Assign^TFOptimizer/iterations/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
X
Const_14Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
М
save/SaveV2/tensor_namesConst*њ
valueµB≤B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
±
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConst_8Const_14Const_9Const_11Const_10Conv1/bias/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConst_12Dense/bias/Read/ReadVariableOp Dense/kernel/Read/ReadVariableOpConst_13 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ю
save/RestoreV2/tensor_namesConst"/device:CPU:0*њ
valueµB≤B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
С
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
а
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*L
_output_shapes:
8::::::::::::::

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp

save/NoOp_4NoOp
N
save/IdentityIdentitysave/RestoreV2:5*
_output_shapes
:*
T0
Q
save/AssignVariableOpAssignVariableOp
Conv1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:6*
_output_shapes
:*
T0
W
save/AssignVariableOp_1AssignVariableOpConv1/kernelsave/Identity_1*
dtype0

save/NoOp_5NoOp
P
save/Identity_2Identitysave/RestoreV2:8*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Dense/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:9*
T0*
_output_shapes
:
W
save/AssignVariableOp_3AssignVariableOpDense/kernelsave/Identity_3*
dtype0

save/NoOp_6NoOp
Q
save/Identity_4Identitysave/RestoreV2:11*
_output_shapes
:*
T0
W
save/AssignVariableOp_4AssignVariableOpdense_1/biassave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpdense_1/kernelsave/Identity_5*
dtype0
Q
save/Identity_6Identitysave/RestoreV2:13*
_output_shapes
:*
T0	
a
save/AssignVariableOp_6AssignVariableOpTFOptimizer/iterationssave/Identity_6*
dtype0	
ђ
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5^save/NoOp_6
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
р
save_1/SaveV2/tensor_namesConst*°
valueЧBФB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*-
value$B"B B B B B B B B B B B B B 
™
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesConst_1Const_2Const_4Const_3Conv1/bias/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConst_5Dense/bias/Read/ReadVariableOp Dense/kernel/Read/ReadVariableOpConst_6 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp*
dtypes
2	
Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
В
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*°
valueЧBФB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
С
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*-
value$B"B B B B B B B B B B B B B 
г
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	

save_1/NoOpNoOp

save_1/NoOp_1NoOp

save_1/NoOp_2NoOp

save_1/NoOp_3NoOp
R
save_1/IdentityIdentitysave_1/RestoreV2:4*
T0*
_output_shapes
:
U
save_1/AssignVariableOpAssignVariableOp
Conv1/biassave_1/Identity*
dtype0
T
save_1/Identity_1Identitysave_1/RestoreV2:5*
_output_shapes
:*
T0
[
save_1/AssignVariableOp_1AssignVariableOpConv1/kernelsave_1/Identity_1*
dtype0

save_1/NoOp_4NoOp
T
save_1/Identity_2Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
Y
save_1/AssignVariableOp_2AssignVariableOp
Dense/biassave_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:8*
_output_shapes
:*
T0
[
save_1/AssignVariableOp_3AssignVariableOpDense/kernelsave_1/Identity_3*
dtype0

save_1/NoOp_5NoOp
U
save_1/Identity_4Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
[
save_1/AssignVariableOp_4AssignVariableOpdense_1/biassave_1/Identity_4*
dtype0
U
save_1/Identity_5Identitysave_1/RestoreV2:11*
_output_shapes
:*
T0
]
save_1/AssignVariableOp_5AssignVariableOpdense_1/kernelsave_1/Identity_5*
dtype0
U
save_1/Identity_6Identitysave_1/RestoreV2:12*
_output_shapes
:*
T0	
e
save_1/AssignVariableOp_6AssignVariableOpTFOptimizer/iterationssave_1/Identity_6*
dtype0	
Ї
save_1/restore_allNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_2^save_1/AssignVariableOp_3^save_1/AssignVariableOp_4^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/NoOp^save_1/NoOp_1^save_1/NoOp_2^save_1/NoOp_3^save_1/NoOp_4^save_1/NoOp_5

init_1NoOp"J
save_1/Const:0save_1/control_dependency:0save_1/restore_all 5 @F8"ч
trainable_variablesя№
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"н
	variablesя№
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"/
saved_model_train_op

training/group_deps"Йu
cond_contextшtхt
¬
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textOloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *…
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0Ґ
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ц
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ІU
Qloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*д&
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
~loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
yloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
tloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Dloss/dense_loss/broadcast_weights/assert_broadcastable/values/rank:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0ќ
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ј
Eloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank:0wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0—
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0љ
Dloss/dense_loss/broadcast_weights/assert_broadcastable/values/rank:0uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ґ
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:02£"
†"
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textiloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *ў
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Иloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
~loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
yloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
tloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0О
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0–
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1÷
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0”
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Иloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Т
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02°

Ю

kloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*„
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0№
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0÷
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Е
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textLloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *Х
Wloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0Ь
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ы
Nloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Л
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
Yloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ъ
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0Э
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0£
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0Ь
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ю
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0"4
train_op(
&
$training/TFOptimizer/GradientDescent"µ
global_step•Ґ
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"!
saved_model_main_op


init_1*В
trainш
=
Conv1_input.
Conv1_input:0€€€€€€€€€АА
>
dense_target.
dense_target:0€€€€€€€€€€€€€€€€€€
loss

loss/mul:0 =
predictions/dense(
dense_1/Sigmoid:0€€€€€€€€€tensorflow/supervised/training…Х
ЇТ
:
Add
x"T
y"T
z"T"
Ttype:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
м
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
є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
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
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
ц
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"eval*1.11.02v1.11.0-0-gc19e29306cсо
В
Conv1_inputPlaceholder*
dtype0*1
_output_shapes
:€€€€€€€€€АА*&
shape:€€€€€€€€€АА
І
-Conv1/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@Conv1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
С
+Conv1/kernel/Initializer/random_uniform/minConst*
_class
loc:@Conv1/kernel*
valueB
 *HYЛЊ*
dtype0*
_output_shapes
: 
С
+Conv1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
_class
loc:@Conv1/kernel*
valueB
 *HYЛ>*
dtype0
н
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*
_class
loc:@Conv1/kernel
ќ
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*
_output_shapes
: 
и
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Џ
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*
_class
loc:@Conv1/kernel
Ѓ
Conv1/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_nameConv1/kernel*
_class
loc:@Conv1/kernel
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 
М
Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0
Ц
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
И
Conv1/bias/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@Conv1/bias*
valueB*    *
dtype0
Ь

Conv1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Conv1/bias*
_class
loc:@Conv1/bias*
	container *
shape:
e
+Conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
{
Conv1/bias/AssignAssignVariableOp
Conv1/biasConv1/bias/Initializer/zeros*
_class
loc:@Conv1/bias*
dtype0
Д
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
_class
loc:@Conv1/bias*
dtype0
d
Conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
p
Conv1/Conv2D/ReadVariableOpReadVariableOpConv1/kernel*
dtype0*&
_output_shapes
:
й
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC
c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
dtype0
Х
Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€
[

Conv1/ReluReluConv1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€
W
flatten/ShapeShape
Conv1/Relu*
T0*
out_type0*
_output_shapes
:
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
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
°
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
b
flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*
Tshape0*)
_output_shapes
:€€€€€€€€€Ир*
T0
Я
-Dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@Dense/kernel*
valueB"ш d   *
dtype0*
_output_shapes
:
С
+Dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@Dense/kernel*
valueB
 *Ц\яї*
dtype0*
_output_shapes
: 
С
+Dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@Dense/kernel*
valueB
 *Ц\я;
з
5Dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@Dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
Ирd*

seed 
ќ
+Dense/kernel/Initializer/random_uniform/subSub+Dense/kernel/Initializer/random_uniform/max+Dense/kernel/Initializer/random_uniform/min*
_class
loc:@Dense/kernel*
_output_shapes
: *
T0
в
+Dense/kernel/Initializer/random_uniform/mulMul5Dense/kernel/Initializer/random_uniform/RandomUniform+Dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Dense/kernel* 
_output_shapes
:
Ирd
‘
'Dense/kernel/Initializer/random_uniformAdd+Dense/kernel/Initializer/random_uniform/mul+Dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Dense/kernel* 
_output_shapes
:
Ирd
®
Dense/kernelVarHandleOp*
	container *
shape:
Ирd*
dtype0*
_output_shapes
: *
shared_nameDense/kernel*
_class
loc:@Dense/kernel
i
-Dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpDense/kernel*
_output_shapes
: 
М
Dense/kernel/AssignAssignVariableOpDense/kernel'Dense/kernel/Initializer/random_uniform*
_class
loc:@Dense/kernel*
dtype0
Р
 Dense/kernel/Read/ReadVariableOpReadVariableOpDense/kernel*
_class
loc:@Dense/kernel*
dtype0* 
_output_shapes
:
Ирd
И
Dense/bias/Initializer/zerosConst*
_class
loc:@Dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
Ь

Dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Dense/bias*
_class
loc:@Dense/bias*
	container *
shape:d
e
+Dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Dense/bias*
_output_shapes
: 
{
Dense/bias/AssignAssignVariableOp
Dense/biasDense/bias/Initializer/zeros*
_class
loc:@Dense/bias*
dtype0
Д
Dense/bias/Read/ReadVariableOpReadVariableOp
Dense/bias*
_class
loc:@Dense/bias*
dtype0*
_output_shapes
:d
j
Dense/MatMul/ReadVariableOpReadVariableOpDense/kernel*
dtype0* 
_output_shapes
:
Ирd
Ь
Dense/MatMulMatMulflatten/ReshapeDense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€d*
transpose_a( *
transpose_b( 
c
Dense/BiasAdd/ReadVariableOpReadVariableOp
Dense/bias*
dtype0*
_output_shapes
:d
Н
Dense/BiasAddBiasAddDense/MatMulDense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€d
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *<ХyЊ*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *<Хy>*
dtype0
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:d*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
ђ
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0*!
_class
loc:@dense_1/kernel
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:d
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ґ
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d*
dtype0
Ю
dense_1/MatMulMatMulDense/BiasAdddense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
r
0TFOptimizer/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R 
С
TFOptimizer/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *
	container *
shape: *'
shared_nameTFOptimizer/iterations
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
≥
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
§
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*
dtype0	*
_output_shapes
: *)
_class
loc:@TFOptimizer/iterations
Б
dense_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Б
dense_sample_weightsPlaceholderWithDefaultConst*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
Z
loss/dense_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
Z
loss/dense_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
i
loss/dense_loss/subSubloss/dense_loss/sub/xloss/dense_loss/Const*
_output_shapes
: *
T0
И
%loss/dense_loss/clip_by_value/MinimumMinimumdense_1/Sigmoidloss/dense_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ш
loss/dense_loss/clip_by_valueMaximum%loss/dense_loss/clip_by_value/Minimumloss/dense_loss/Const*'
_output_shapes
:€€€€€€€€€*
T0
\
loss/dense_loss/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ж
loss/dense_loss/sub_1Subloss/dense_loss/sub_1/xloss/dense_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€
К
loss/dense_loss/truedivRealDivloss/dense_loss/clip_by_valueloss/dense_loss/sub_1*
T0*'
_output_shapes
:€€€€€€€€€
e
loss/dense_loss/LogLogloss/dense_loss/truediv*
T0*'
_output_shapes
:€€€€€€€€€
|
(loss/dense_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
Ђ
*loss/dense_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_loss/Log(loss/dense_loss/logistic_loss/zeros_like*'
_output_shapes
:€€€€€€€€€*
T0
Ћ
$loss/dense_loss/logistic_loss/SelectSelect*loss/dense_loss/logistic_loss/GreaterEqualloss/dense_loss/Log(loss/dense_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
o
!loss/dense_loss/logistic_loss/NegNegloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
∆
&loss/dense_loss/logistic_loss/Select_1Select*loss/dense_loss/logistic_loss/GreaterEqual!loss/dense_loss/logistic_loss/Negloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€
Ж
!loss/dense_loss/logistic_loss/mulMulloss/dense_loss/Logdense_target*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ђ
!loss/dense_loss/logistic_loss/subSub$loss/dense_loss/logistic_loss/Select!loss/dense_loss/logistic_loss/mul*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
!loss/dense_loss/logistic_loss/ExpExp&loss/dense_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:€€€€€€€€€
Б
#loss/dense_loss/logistic_loss/Log1pLog1p!loss/dense_loss/logistic_loss/Exp*'
_output_shapes
:€€€€€€€€€*
T0
І
loss/dense_loss/logistic_lossAdd!loss/dense_loss/logistic_loss/sub#loss/dense_loss/logistic_loss/Log1p*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
q
&loss/dense_loss/Mean/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѓ
loss/dense_loss/MeanMeanloss/dense_loss/logistic_loss&loss/dense_loss/Mean/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0
Ш
Dloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_sample_weights*
_output_shapes
:*
T0*
out_type0
Е
Closs/dense_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ч
Closs/dense_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_loss/Mean*
_output_shapes
:*
T0*
out_type0
Д
Bloss/dense_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Д
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
у
@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarEqualBloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar/xCloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
э
Lloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Ћ
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityNloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

…
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityLloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

Љ
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentity@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

б
Nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*S
_classI
GEloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar
В
lloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualsloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchuloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
К
sloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchBloss/dense_loss/broadcast_weights/assert_broadcastable/values/rankMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*U
_classK
IGloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
О
uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rankMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
п
floss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchlloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
€
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityhloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

э
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityfloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

В
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitylloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
µ
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
»
{loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsЖloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
§
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape
А
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchВloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
љ
Аloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Ѓ
Аloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
√
zloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillАloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeАloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
©
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Є
wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2{loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimszloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
Є
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
ѕ
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsИloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*

Tdim0*
T0
®
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchDloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Е
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchДloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape
Х
Йloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b
…
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeЛloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
Я
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConsti^loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B : *
dtype0
Т
ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualrloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xБloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
н
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchlloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankgloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classu
sqloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
ц
eloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergehloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
є
Kloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeeloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergePloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
§
<loss/dense_loss/broadcast_weights/assert_broadcastable/ConstConst*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.*
dtype0
Н
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Х
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_2Const*'
valueB Bdense_sample_weights:0*
dtype0*
_output_shapes
: 
М
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Х
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_4Const*'
valueB Bloss/dense_loss/Mean:0*
dtype0*
_output_shapes
: 
Й
>loss/dense_loss/broadcast_weights/assert_broadcastable/Const_5Const*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
Р
Iloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
≈
Kloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
√
Kloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityIloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

ƒ
Jloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

Э
Gloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
щ
Uloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tH^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
Ж
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
н
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
х
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*'
valueB Bdense_sample_weights:0*
dtype0*
_output_shapes
: 
м
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
х
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *'
valueB Bloss/dense_loss/Mean:0*
dtype0
й
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstL^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
≤
Iloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertPloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchPloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
ц
Ploss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchKloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
т
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchDloss/dense_loss/broadcast_weights/assert_broadcastable/weights/shapeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*W
_classM
KIloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape
р
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchCloss/dense_loss/broadcast_weights/assert_broadcastable/values/shapeJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*V
_classL
JHloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
в
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switch@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalarJloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*S
_classI
GEloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar
э
Wloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityKloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fJ^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*^
_classT
RPloc:@loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
≠
Hloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeWloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Uloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

–
1loss/dense_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_loss/MeanI^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ѕ
1loss/dense_loss/broadcast_weights/ones_like/ConstConstI^loss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  А?
ў
+loss/dense_loss/broadcast_weights/ones_likeFill1loss/dense_loss/broadcast_weights/ones_like/Shape1loss/dense_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:€€€€€€€€€*
T0*

index_type0
Щ
!loss/dense_loss/broadcast_weightsMuldense_sample_weights+loss/dense_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
Б
loss/dense_loss/MulMulloss/dense_loss/Mean!loss/dense_loss/broadcast_weights*#
_output_shapes
:€€€€€€€€€*
T0
a
loss/dense_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ж
loss/dense_loss/SumSumloss/dense_loss/Mulloss/dense_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
loss/dense_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Ц
loss/dense_loss/Sum_1Sum!loss/dense_loss/broadcast_weightsloss/dense_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
q
loss/dense_loss/truediv_1RealDivloss/dense_loss/Sumloss/dense_loss/Sum_1*
T0*
_output_shapes
: 
_
loss/dense_loss/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    
v
loss/dense_loss/GreaterGreaterloss/dense_loss/Sum_1loss/dense_loss/zeros_like*
T0*
_output_shapes
: 
С
loss/dense_loss/SelectSelectloss/dense_loss/Greaterloss/dense_loss/truediv_1loss/dense_loss/zeros_like*
T0*
_output_shapes
: 
Z
loss/dense_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
Н
loss/dense_loss/Mean_1Meanloss/dense_loss/Selectloss/dense_loss/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
T
loss/mulMul
loss/mul/xloss/dense_loss/Mean_1*
_output_shapes
: *
T0


group_depsNoOp	^loss/mul
H
Const_1Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_2Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_3Const*
_output_shapes
: *
valueB B *
dtype0
H
Const_4Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_5Const*
dtype0*
_output_shapes
: *
valueB B 
H
Const_6Const*
dtype0*
_output_shapes
: *
valueB B 
\
Const_7Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
H
Const_8Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_9Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_10Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_11Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_12Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_13Const*
_output_shapes
: *
valueB B *
dtype0
§
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_7RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
I
AssignVariableOpAssignVariableOpConv1/kernelIdentity*
dtype0
§
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_7RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
_output_shapes
:*
T0
K
AssignVariableOp_1AssignVariableOp
Conv1/bias
Identity_1*
dtype0
¶
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_7RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
M
AssignVariableOp_2AssignVariableOpDense/kernel
Identity_2*
dtype0
§
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
У
RestoreV2_3	RestoreV2Const_7RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
_output_shapes
:*
T0
K
AssignVariableOp_3AssignVariableOp
Dense/bias
Identity_3*
dtype0
¶
RestoreV2_4/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_7RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
O
AssignVariableOp_4AssignVariableOpdense_1/kernel
Identity_4*
dtype0
§
RestoreV2_5/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_5	RestoreV2Const_7RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
M
AssignVariableOp_5AssignVariableOpdense_1/bias
Identity_5*
dtype0
†
RestoreV2_6/tensor_namesConst"/device:CPU:0*E
value<B:B0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_6	RestoreV2Const_7RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
F

Identity_6IdentityRestoreV2_6*
T0	*
_output_shapes
:
W
AssignVariableOp_6AssignVariableOpTFOptimizer/iterations
Identity_6*
dtype0	
P
VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_1VarIsInitializedOpDense/kernel*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpConv1/kernel*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
Dense/bias*
_output_shapes
: 
N
VarIsInitializedOp_4VarIsInitializedOp
Conv1/bias*
_output_shapes
: 
Z
VarIsInitializedOp_5VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
P
VarIsInitializedOp_6VarIsInitializedOpdense_1/bias*
_output_shapes
: 
Ѓ
initNoOp^Conv1/bias/Assign^Conv1/kernel/Assign^Dense/bias/Assign^Dense/kernel/Assign^TFOptimizer/iterations/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
о
save/SaveV2/tensor_namesConst*°
valueЧBФB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
}
save/SaveV2/shape_and_slicesConst*-
value$B"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ґ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConst_1Const_2Const_4Const_3Conv1/bias/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConst_5Dense/bias/Read/ReadVariableOp Dense/kernel/Read/ReadVariableOpConst_6 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
А
save/RestoreV2/tensor_namesConst"/device:CPU:0*°
valueЧBФB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
П
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*-
value$B"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
џ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp
N
save/IdentityIdentitysave/RestoreV2:4*
_output_shapes
:*
T0
Q
save/AssignVariableOpAssignVariableOp
Conv1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:5*
_output_shapes
:*
T0
W
save/AssignVariableOp_1AssignVariableOpConv1/kernelsave/Identity_1*
dtype0

save/NoOp_4NoOp
P
save/Identity_2Identitysave/RestoreV2:7*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
Dense/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:8*
_output_shapes
:*
T0
W
save/AssignVariableOp_3AssignVariableOpDense/kernelsave/Identity_3*
dtype0

save/NoOp_5NoOp
Q
save/Identity_4Identitysave/RestoreV2:10*
T0*
_output_shapes
:
W
save/AssignVariableOp_4AssignVariableOpdense_1/biassave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:11*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpdense_1/kernelsave/Identity_5*
dtype0
Q
save/Identity_6Identitysave/RestoreV2:12*
T0	*
_output_shapes
:
a
save/AssignVariableOp_6AssignVariableOpTFOptimizer/iterationssave/Identity_6*
dtype0	
Ю
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"ч
trainable_variablesя№
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"Йu
cond_contextшtхt
¬
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textOloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *…
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0Ґ
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ц
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ІU
Qloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*д&
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
gloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
hloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
~loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
yloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
tloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ploss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Dloss/dense_loss/broadcast_weights/assert_broadcastable/values/rank:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0—
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0љ
Dloss/dense_loss/broadcast_weights/assert_broadcastable/values/rank:0uloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ґ
Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Oloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ќ
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ј
Eloss/dense_loss/broadcast_weights/assert_broadcastable/weights/rank:0wloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02£"
†"
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textiloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *ў
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Лloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Бloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
}loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Иloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
~loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
yloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Гloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Вloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
|loss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
tloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
rloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0О
Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Дloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0–
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1÷
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0”
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Иloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Т
Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Жloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02°

Ю

kloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*„
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0÷
iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0iloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0№
nloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0jloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Е
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textLloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *Х
Wloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0Ь
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
ы
Nloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Л
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
Yloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Э
Eloss/dense_loss/broadcast_weights/assert_broadcastable/values/shape:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0£
Mloss/dense_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Rloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0Ь
Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Lloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ю
Floss/dense_loss/broadcast_weights/assert_broadcastable/weights/shape:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ъ
Bloss/dense_loss/broadcast_weights/assert_broadcastable/is_scalar:0Tloss/dense_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0"µ
global_step•Ґ
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"!
saved_model_main_op


init_1"н
	variablesя№
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08*э
evalф
=
Conv1_input.
Conv1_input:0€€€€€€€€€АА
>
dense_target.
dense_target:0€€€€€€€€€€€€€€€€€€
loss

loss/mul:0 =
predictions/dense(
dense_1/Sigmoid:0€€€€€€€€€tensorflow/supervised/evalДї
ы“
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
м
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
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
ц
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И"serve*1.11.02v1.11.0-0-gc19e29306cќЬ
В
Conv1_inputPlaceholder*
dtype0*1
_output_shapes
:€€€€€€€€€АА*&
shape:€€€€€€€€€АА
І
-Conv1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@Conv1/kernel*%
valueB"            *
dtype0
С
+Conv1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
_class
loc:@Conv1/kernel*
valueB
 *HYЛЊ*
dtype0
С
+Conv1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
_class
loc:@Conv1/kernel*
valueB
 *HYЛ>*
dtype0
н
5Conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Conv1/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@Conv1/kernel*
seed2 *
dtype0*&
_output_shapes
:*

seed 
ќ
+Conv1/kernel/Initializer/random_uniform/subSub+Conv1/kernel/Initializer/random_uniform/max+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*
_output_shapes
: 
и
+Conv1/kernel/Initializer/random_uniform/mulMul5Conv1/kernel/Initializer/random_uniform/RandomUniform+Conv1/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Џ
'Conv1/kernel/Initializer/random_uniformAdd+Conv1/kernel/Initializer/random_uniform/mul+Conv1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Conv1/kernel*&
_output_shapes
:
Ѓ
Conv1/kernelVarHandleOp*
shared_nameConv1/kernel*
_class
loc:@Conv1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
i
-Conv1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv1/kernel*
_output_shapes
: 
М
Conv1/kernel/AssignAssignVariableOpConv1/kernel'Conv1/kernel/Initializer/random_uniform*
_class
loc:@Conv1/kernel*
dtype0
Ц
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*
_class
loc:@Conv1/kernel*
dtype0*&
_output_shapes
:
И
Conv1/bias/Initializer/zerosConst*
_class
loc:@Conv1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ь

Conv1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Conv1/bias*
_class
loc:@Conv1/bias*
	container *
shape:
e
+Conv1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
{
Conv1/bias/AssignAssignVariableOp
Conv1/biasConv1/bias/Initializer/zeros*
_class
loc:@Conv1/bias*
dtype0
Д
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_class
loc:@Conv1/bias*
dtype0*
_output_shapes
:
d
Conv1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
p
Conv1/Conv2D/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
:*
dtype0
й
Conv1/Conv2DConv2DConv1_inputConv1/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:€€€€€€€€€
c
Conv1/BiasAdd/ReadVariableOpReadVariableOp
Conv1/bias*
dtype0*
_output_shapes
:
Х
Conv1/BiasAddBiasAddConv1/Conv2DConv1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€
[

Conv1/ReluReluConv1/BiasAdd*/
_output_shapes
:€€€€€€€€€*
T0
W
flatten/ShapeShape
Conv1/Relu*
_output_shapes
:*
T0*
out_type0
e
flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
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
°
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
b
flatten/Reshape/shape/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N

flatten/ReshapeReshape
Conv1/Reluflatten/Reshape/shape*
T0*
Tshape0*)
_output_shapes
:€€€€€€€€€Ир
Я
-Dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@Dense/kernel*
valueB"ш d   *
dtype0*
_output_shapes
:
С
+Dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@Dense/kernel*
valueB
 *Ц\яї*
dtype0*
_output_shapes
: 
С
+Dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@Dense/kernel*
valueB
 *Ц\я;*
dtype0*
_output_shapes
: 
з
5Dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-Dense/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
Ирd*

seed *
T0*
_class
loc:@Dense/kernel*
seed2 
ќ
+Dense/kernel/Initializer/random_uniform/subSub+Dense/kernel/Initializer/random_uniform/max+Dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@Dense/kernel*
_output_shapes
: 
в
+Dense/kernel/Initializer/random_uniform/mulMul5Dense/kernel/Initializer/random_uniform/RandomUniform+Dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
Ирd*
T0*
_class
loc:@Dense/kernel
‘
'Dense/kernel/Initializer/random_uniformAdd+Dense/kernel/Initializer/random_uniform/mul+Dense/kernel/Initializer/random_uniform/min*
_class
loc:@Dense/kernel* 
_output_shapes
:
Ирd*
T0
®
Dense/kernelVarHandleOp*
shape:
Ирd*
dtype0*
_output_shapes
: *
shared_nameDense/kernel*
_class
loc:@Dense/kernel*
	container 
i
-Dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpDense/kernel*
_output_shapes
: 
М
Dense/kernel/AssignAssignVariableOpDense/kernel'Dense/kernel/Initializer/random_uniform*
dtype0*
_class
loc:@Dense/kernel
Р
 Dense/kernel/Read/ReadVariableOpReadVariableOpDense/kernel*
_class
loc:@Dense/kernel*
dtype0* 
_output_shapes
:
Ирd
И
Dense/bias/Initializer/zerosConst*
_class
loc:@Dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
Ь

Dense/biasVarHandleOp*
	container *
shape:d*
dtype0*
_output_shapes
: *
shared_name
Dense/bias*
_class
loc:@Dense/bias
e
+Dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Dense/bias*
_output_shapes
: 
{
Dense/bias/AssignAssignVariableOp
Dense/biasDense/bias/Initializer/zeros*
_class
loc:@Dense/bias*
dtype0
Д
Dense/bias/Read/ReadVariableOpReadVariableOp
Dense/bias*
dtype0*
_output_shapes
:d*
_class
loc:@Dense/bias
j
Dense/MatMul/ReadVariableOpReadVariableOpDense/kernel*
dtype0* 
_output_shapes
:
Ирd
Ь
Dense/MatMulMatMulflatten/ReshapeDense/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€d*
transpose_a( 
c
Dense/BiasAdd/ReadVariableOpReadVariableOp
Dense/bias*
dtype0*
_output_shapes
:d
Н
Dense/BiasAddBiasAddDense/MatMulDense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€d
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *<ХyЊ*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
valueB
 *<Хy>*
dtype0
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:d*

seed *
T0*!
_class
loc:@dense_1/kernel
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
ђ
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:d
М
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Ґ
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:d
Ю
dense_1/MatMulMatMulDense/BiasAdddense_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
]
dense_1/SigmoidSigmoiddense_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
$

group_depsNoOp^dense_1/Sigmoid
F
ConstConst*
_output_shapes
: *
valueB B *
dtype0
H
Const_1Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_2Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_3Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_4Const*
_output_shapes
: *
valueB B *
dtype0
H
Const_5Const*
dtype0*
_output_shapes
: *
valueB B 
\
Const_6Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
H
Const_7Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_8Const*
valueB B *
dtype0*
_output_shapes
: 
H
Const_9Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_10Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_11Const*
valueB B *
dtype0*
_output_shapes
: 
I
Const_12Const*
_output_shapes
: *
valueB B *
dtype0
§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_6RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
I
AssignVariableOpAssignVariableOpConv1/kernelIdentity*
dtype0
§
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_1	RestoreV2Const_6RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
K
AssignVariableOp_1AssignVariableOp
Conv1/bias
Identity_1*
dtype0
¶
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_6RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
_output_shapes
:*
T0
M
AssignVariableOp_2AssignVariableOpDense/kernel
Identity_2*
dtype0
§
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_6RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
K
AssignVariableOp_3AssignVariableOp
Dense/bias
Identity_3*
dtype0
¶
RestoreV2_4/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_6RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
O
AssignVariableOp_4AssignVariableOpdense_1/kernel
Identity_4*
dtype0
§
RestoreV2_5/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
У
RestoreV2_5	RestoreV2Const_6RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_5IdentityRestoreV2_5*
_output_shapes
:*
T0
M
AssignVariableOp_5AssignVariableOpdense_1/bias
Identity_5*
dtype0
L
VarIsInitializedOpVarIsInitializedOp
Conv1/bias*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
Dense/bias*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_4VarIsInitializedOpDense/kernel*
_output_shapes
: 
P
VarIsInitializedOp_5VarIsInitializedOpConv1/kernel*
_output_shapes
: 
О
initNoOp^Conv1/bias/Assign^Conv1/kernel/Assign^Dense/bias/Assign^Dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Љ
save/SaveV2/tensor_namesConst*п
valueеBвB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
{
save/SaveV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
у
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConstConst_1Const_3Const_2Conv1/bias/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConst_4Dense/bias/Read/ReadVariableOp Dense/kernel/Read/ReadVariableOpConst_5 dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ќ
save/RestoreV2/tensor_namesConst"/device:CPU:0*п
valueеBвB/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Н
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
÷
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp
N
save/IdentityIdentitysave/RestoreV2:4*
_output_shapes
:*
T0
Q
save/AssignVariableOpAssignVariableOp
Conv1/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:5*
T0*
_output_shapes
:
W
save/AssignVariableOp_1AssignVariableOpConv1/kernelsave/Identity_1*
dtype0

save/NoOp_4NoOp
P
save/Identity_2Identitysave/RestoreV2:7*
_output_shapes
:*
T0
U
save/AssignVariableOp_2AssignVariableOp
Dense/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:8*
_output_shapes
:*
T0
W
save/AssignVariableOp_3AssignVariableOpDense/kernelsave/Identity_3*
dtype0

save/NoOp_5NoOp
Q
save/Identity_4Identitysave/RestoreV2:10*
T0*
_output_shapes
:
W
save/AssignVariableOp_4AssignVariableOpdense_1/biassave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:11*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpdense_1/kernelsave/Identity_5*
dtype0
Д
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"!
saved_model_main_op


init_1"Ћ
	variablesљЇ
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"’
trainable_variablesљЇ
x
Conv1/kernel:0Conv1/kernel/Assign"Conv1/kernel/Read/ReadVariableOp:0(2)Conv1/kernel/Initializer/random_uniform:08
g
Conv1/bias:0Conv1/bias/Assign Conv1/bias/Read/ReadVariableOp:0(2Conv1/bias/Initializer/zeros:08
x
Dense/kernel:0Dense/kernel/Assign"Dense/kernel/Read/ReadVariableOp:0(2)Dense/kernel/Initializer/random_uniform:08
g
Dense/bias:0Dense/bias/Assign Dense/bias/Read/ReadVariableOp:0(2Dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08*Ґ
serving_defaultО
=
Conv1_input.
Conv1_input:0€€€€€€€€€АА1
dense(
dense_1/Sigmoid:0€€€€€€€€€tensorflow/serving/predict