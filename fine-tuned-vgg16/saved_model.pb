Фх
Їі
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8Ьр

SGD/dense_44/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_44/bias/momentum

.SGD/dense_44/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_44/bias/momentum*
_output_shapes
:*
dtype0

SGD/dense_44/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*-
shared_nameSGD/dense_44/kernel/momentum

0SGD/dense_44/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_44/kernel/momentum*
_output_shapes

:2*
dtype0

SGD/dense_43/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*+
shared_nameSGD/dense_43/bias/momentum

.SGD/dense_43/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_43/bias/momentum*
_output_shapes
:2*
dtype0

SGD/dense_43/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*-
shared_nameSGD/dense_43/kernel/momentum

0SGD/dense_43/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_43/kernel/momentum*
_output_shapes

:d2*
dtype0

SGD/dense_42/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameSGD/dense_42/bias/momentum

.SGD/dense_42/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_42/bias/momentum*
_output_shapes
:d*
dtype0

SGD/dense_42/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@d*-
shared_nameSGD/dense_42/kernel/momentum

0SGD/dense_42/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_42/kernel/momentum*
_output_shapes
:	@d*
dtype0

SGD/block5_conv3/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name SGD/block5_conv3/bias/momentum

2SGD/block5_conv3/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/block5_conv3/bias/momentum*
_output_shapes	
:*
dtype0
І
 SGD/block5_conv3/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/block5_conv3/kernel/momentum

4SGD/block5_conv3/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/block5_conv3/kernel/momentum*(
_output_shapes
:*
dtype0

SGD/block5_conv2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name SGD/block5_conv2/bias/momentum

2SGD/block5_conv2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/block5_conv2/bias/momentum*
_output_shapes	
:*
dtype0
І
 SGD/block5_conv2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/block5_conv2/kernel/momentum

4SGD/block5_conv2/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/block5_conv2/kernel/momentum*(
_output_shapes
:*
dtype0

SGD/block5_conv1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name SGD/block5_conv1/bias/momentum

2SGD/block5_conv1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/block5_conv1/bias/momentum*
_output_shapes	
:*
dtype0
І
 SGD/block5_conv1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" SGD/block5_conv1/kernel/momentum

4SGD/block5_conv1/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/block5_conv1/kernel/momentum*(
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
:*
dtype0
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:2*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:2*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:d2*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:d*
dtype0
{
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@d* 
shared_namedense_42/kernel
t
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes
:	@d*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:*
dtype0

block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv3/kernel

'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:*
dtype0

block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv2/kernel

'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:*
dtype0

block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv1/kernel

'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:*
dtype0

block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv3/kernel

'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:*
dtype0

block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv2/kernel

'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:*
dtype0

block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv1/kernel

'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:*
dtype0

block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv3/kernel

'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv2/kernel

'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:*
dtype0

block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv1/kernel

'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:*
dtype0

block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock2_conv2/kernel

'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:*
dtype0

block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock2_conv1/kernel

'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0

block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel

'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0

block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel

'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0

serving_default_input_15Placeholder*1
_output_shapes
:џџџџџџџџџ*
dtype0*&
shape:џџџџџџџџџ
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_15block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_54607

NoOpNoOp
ЛЈ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ѕЇ
valueъЇBцЇ BоЇ
Њ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer_with_weights-15
layer-21
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures*
Ш
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
Ш
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
Ш
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op*
Ш
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op*

K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
Ш
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op*
Ш
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*
Ш
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias
 k_jit_compiled_convolution_op*

l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 
Ш
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias
 z_jit_compiled_convolution_op*
Ь
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
б
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+Ё&call_and_return_all_conditional_losses
Ђkernel
	Ѓbias
!Є_jit_compiled_convolution_op*
б
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses
Ћkernel
	Ќbias
!­_jit_compiled_convolution_op*

Ў	variables
Џtrainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses* 

Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
Ў
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias*
Ў
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias*
Ў
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аkernel
	бbias*

в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses* 

'0
(1
02
13
?4
@5
H6
I7
W8
X9
`10
a11
i12
j13
x14
y15
16
17
18
19
20
21
Ђ22
Ѓ23
Ћ24
Ќ25
Р26
С27
Ш28
Щ29
а30
б31*
f
0
1
Ђ2
Ѓ3
Ћ4
Ќ5
Р6
С7
Ш8
Щ9
а10
б11*
* 
Е
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
нtrace_0
оtrace_1
пtrace_2
рtrace_3* 
:
сtrace_0
тtrace_1
уtrace_2
фtrace_3* 
* 

	хiter

цdecay
чlearning_rate
шmomentummomentummomentumЂmomentumЃmomentumЋmomentumЌmomentumРmomentumСmomentumШmomentumЩmomentumаmomentum бmomentumЁ*

щserving_default* 

'0
(1*
* 
* 

ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

яtrace_0* 

№trace_0* 
c]
VARIABLE_VALUEblock1_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock1_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*
* 
* 

ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

іtrace_0* 

їtrace_0* 
c]
VARIABLE_VALUEblock1_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock1_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

§trace_0* 

ўtrace_0* 

?0
@1*
* 
* 

џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

trace_0* 

trace_0* 
c]
VARIABLE_VALUEblock2_conv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock2_conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

H0
I1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

trace_0* 

trace_0* 
c]
VARIABLE_VALUEblock2_conv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock2_conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

W0
X1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

trace_0* 

trace_0* 
c]
VARIABLE_VALUEblock3_conv1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock3_conv1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

`0
a1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

 trace_0* 

Ёtrace_0* 
c]
VARIABLE_VALUEblock3_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock3_conv2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

i0
j1*
* 
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

Їtrace_0* 

Јtrace_0* 
c]
VARIABLE_VALUEblock3_conv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock3_conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 

Ўtrace_0* 

Џtrace_0* 

x0
y1*
* 
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
c]
VARIABLE_VALUEblock4_conv1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock4_conv1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
c]
VARIABLE_VALUEblock4_conv2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock4_conv2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 

Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
c]
VARIABLE_VALUEblock4_conv3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock4_conv3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 

0
1*

0
1*
* 

Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
d^
VARIABLE_VALUEblock5_conv1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEblock5_conv1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ђ0
Ѓ1*

Ђ0
Ѓ1*
* 

гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
d^
VARIABLE_VALUEblock5_conv2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEblock5_conv2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ћ0
Ќ1*

Ћ0
Ќ1*
* 

кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses*

пtrace_0* 

рtrace_0* 
d^
VARIABLE_VALUEblock5_conv3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEblock5_conv3/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Ў	variables
Џtrainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses* 

цtrace_0* 

чtrace_0* 
* 
* 
* 

шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 

эtrace_0* 

юtrace_0* 

Р0
С1*

Р0
С1*
* 

яnon_trainable_variables
№layers
ёmetrics
 ђlayer_regularization_losses
ѓlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

єtrace_0* 

ѕtrace_0* 
`Z
VARIABLE_VALUEdense_42/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_42/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ш0
Щ1*

Ш0
Щ1*
* 

іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

ћtrace_0* 

ќtrace_0* 
`Z
VARIABLE_VALUEdense_43/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_43/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

а0
б1*

а0
б1*
* 

§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEdense_44/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_44/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

'0
(1
02
13
?4
@5
H6
I7
W8
X9
`10
a11
i12
j13
x14
y15
16
17
18
19*
В
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1*
* 
* 
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
@1*
* 
* 
* 
* 
* 
* 

H0
I1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

W0
X1*
* 
* 
* 
* 
* 
* 

`0
a1*
* 
* 
* 
* 
* 
* 

i0
j1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

x0
y1*
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUE SGD/block5_conv1/kernel/momentumZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/block5_conv1/bias/momentumXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE SGD/block5_conv2/kernel/momentumZlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/block5_conv2/bias/momentumXlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE SGD/block5_conv3/kernel/momentumZlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/block5_conv3/bias/momentumXlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_42/kernel/momentumZlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_42/bias/momentumXlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_43/kernel/momentumZlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_43/bias/momentumXlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_44/kernel/momentumZlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_44/bias/momentumXlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4SGD/block5_conv1/kernel/momentum/Read/ReadVariableOp2SGD/block5_conv1/bias/momentum/Read/ReadVariableOp4SGD/block5_conv2/kernel/momentum/Read/ReadVariableOp2SGD/block5_conv2/bias/momentum/Read/ReadVariableOp4SGD/block5_conv3/kernel/momentum/Read/ReadVariableOp2SGD/block5_conv3/bias/momentum/Read/ReadVariableOp0SGD/dense_42/kernel/momentum/Read/ReadVariableOp.SGD/dense_42/bias/momentum/Read/ReadVariableOp0SGD/dense_43/kernel/momentum/Read/ReadVariableOp.SGD/dense_43/bias/momentum/Read/ReadVariableOp0SGD/dense_44/kernel/momentum/Read/ReadVariableOp.SGD/dense_44/bias/momentum/Read/ReadVariableOpConst*A
Tin:
826	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_55560
ћ

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount SGD/block5_conv1/kernel/momentumSGD/block5_conv1/bias/momentum SGD/block5_conv2/kernel/momentumSGD/block5_conv2/bias/momentum SGD/block5_conv3/kernel/momentumSGD/block5_conv3/bias/momentumSGD/dense_42/kernel/momentumSGD/dense_42/bias/momentumSGD/dense_43/kernel/momentumSGD/dense_43/bias/momentumSGD/dense_44/kernel/momentumSGD/dense_44/bias/momentum*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_55726пЇ
Ђ
 
H__inference_sequential_22_layer_call_and_return_conditional_losses_54868

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	:
'dense_42_matmul_readvariableop_resource:	@d6
(dense_42_biasadd_readvariableop_resource:d9
'dense_43_matmul_readvariableop_resource:d26
(dense_43_biasadd_readvariableop_resource:29
'dense_44_matmul_readvariableop_resource:26
(dense_44_biasadd_readvariableop_resource:
identityЂ#block1_conv1/BiasAdd/ReadVariableOpЂ"block1_conv1/Conv2D/ReadVariableOpЂ#block1_conv2/BiasAdd/ReadVariableOpЂ"block1_conv2/Conv2D/ReadVariableOpЂ#block2_conv1/BiasAdd/ReadVariableOpЂ"block2_conv1/Conv2D/ReadVariableOpЂ#block2_conv2/BiasAdd/ReadVariableOpЂ"block2_conv2/Conv2D/ReadVariableOpЂ#block3_conv1/BiasAdd/ReadVariableOpЂ"block3_conv1/Conv2D/ReadVariableOpЂ#block3_conv2/BiasAdd/ReadVariableOpЂ"block3_conv2/Conv2D/ReadVariableOpЂ#block3_conv3/BiasAdd/ReadVariableOpЂ"block3_conv3/Conv2D/ReadVariableOpЂ#block4_conv1/BiasAdd/ReadVariableOpЂ"block4_conv1/Conv2D/ReadVariableOpЂ#block4_conv2/BiasAdd/ReadVariableOpЂ"block4_conv2/Conv2D/ReadVariableOpЂ#block4_conv3/BiasAdd/ReadVariableOpЂ"block4_conv3/Conv2D/ReadVariableOpЂ#block5_conv1/BiasAdd/ReadVariableOpЂ"block5_conv1/Conv2D/ReadVariableOpЂ#block5_conv2/BiasAdd/ReadVariableOpЂ"block5_conv2/Conv2D/ReadVariableOpЂ#block5_conv3/BiasAdd/ReadVariableOpЂ"block5_conv3/Conv2D/ReadVariableOpЂdense_42/BiasAdd/ReadVariableOpЂdense_42/MatMul/ReadVariableOpЂdense_43/BiasAdd/ReadVariableOpЂdense_43/MatMul/ReadVariableOpЂdense_44/BiasAdd/ReadVariableOpЂdense_44/MatMul/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Е
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ю
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@Ќ
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџKK@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ъ
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKs
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKK
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKs
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKK­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ%%*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ		*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
flatten_14/ReshapeReshapeblock5_pool/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	@d*
dtype0
dense_42/MatMulMatMulflatten_14/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdb
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџm
activation_13/SigmoidSigmoiddense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentityactivation_13/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
j
М
H__inference_sequential_22_layer_call_and_return_conditional_losses_54214

inputs,
block1_conv1_54126:@ 
block1_conv1_54128:@,
block1_conv2_54131:@@ 
block1_conv2_54133:@-
block2_conv1_54137:@!
block2_conv1_54139:	.
block2_conv2_54142:!
block2_conv2_54144:	.
block3_conv1_54148:!
block3_conv1_54150:	.
block3_conv2_54153:!
block3_conv2_54155:	.
block3_conv3_54158:!
block3_conv3_54160:	.
block4_conv1_54164:!
block4_conv1_54166:	.
block4_conv2_54169:!
block4_conv2_54171:	.
block4_conv3_54174:!
block4_conv3_54176:	.
block5_conv1_54180:!
block5_conv1_54182:	.
block5_conv2_54185:!
block5_conv2_54187:	.
block5_conv3_54190:!
block5_conv3_54192:	!
dense_42_54197:	@d
dense_42_54199:d 
dense_43_54202:d2
dense_43_54204:2 
dense_44_54207:2
dense_44_54209:
identityЂ$block1_conv1/StatefulPartitionedCallЂ$block1_conv2/StatefulPartitionedCallЂ$block2_conv1/StatefulPartitionedCallЂ$block2_conv2/StatefulPartitionedCallЂ$block3_conv1/StatefulPartitionedCallЂ$block3_conv2/StatefulPartitionedCallЂ$block3_conv3/StatefulPartitionedCallЂ$block4_conv1/StatefulPartitionedCallЂ$block4_conv2/StatefulPartitionedCallЂ$block4_conv3/StatefulPartitionedCallЂ$block5_conv1/StatefulPartitionedCallЂ$block5_conv2/StatefulPartitionedCallЂ$block5_conv3/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_54126block1_conv1_54128*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532Ў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_54131block1_conv2_54133*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549ь
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџKK@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463Є
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_54137block2_conv1_54139*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567­
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_54142block2_conv2_54144*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584э
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475Є
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_54148block3_conv1_54150*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602­
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_54153block3_conv2_54155*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619­
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_54158block3_conv3_54160*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636э
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487Є
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_54164block4_conv1_54166*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654­
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_54169block4_conv2_54171*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671­
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_54174block4_conv3_54176*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688э
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499Є
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_54180block5_conv1_54182*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706­
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_54185block5_conv2_54187*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723­
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_54190block5_conv3_54192*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740э
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511к
flatten_14/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_42_54197dense_42_54199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_53766
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_54202dense_43_54204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_53783
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_54207dense_44_54209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_53799ф
activation_13/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_53810u
IdentityIdentity&activation_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЊ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_block3_pool_layer_call_and_return_conditional_losses_55161

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
еh
щ
__inference__traced_save_55560
file_prefix2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_sgd_block5_conv1_kernel_momentum_read_readvariableop=
9savev2_sgd_block5_conv1_bias_momentum_read_readvariableop?
;savev2_sgd_block5_conv2_kernel_momentum_read_readvariableop=
9savev2_sgd_block5_conv2_bias_momentum_read_readvariableop?
;savev2_sgd_block5_conv3_kernel_momentum_read_readvariableop=
9savev2_sgd_block5_conv3_bias_momentum_read_readvariableop;
7savev2_sgd_dense_42_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_42_bias_momentum_read_readvariableop;
7savev2_sgd_dense_43_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_43_bias_momentum_read_readvariableop;
7savev2_sgd_dense_44_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_44_bias_momentum_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ь
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*ѕ
valueыBш5B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHз
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*}
valuetBr5B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B К
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_sgd_block5_conv1_kernel_momentum_read_readvariableop9savev2_sgd_block5_conv1_bias_momentum_read_readvariableop;savev2_sgd_block5_conv2_kernel_momentum_read_readvariableop9savev2_sgd_block5_conv2_bias_momentum_read_readvariableop;savev2_sgd_block5_conv3_kernel_momentum_read_readvariableop9savev2_sgd_block5_conv3_bias_momentum_read_readvariableop7savev2_sgd_dense_42_kernel_momentum_read_readvariableop5savev2_sgd_dense_42_bias_momentum_read_readvariableop7savev2_sgd_dense_43_kernel_momentum_read_readvariableop5savev2_sgd_dense_43_bias_momentum_read_readvariableop7savev2_sgd_dense_44_kernel_momentum_read_readvariableop5savev2_sgd_dense_44_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *C
dtypes9
725	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Д
_input_shapesЂ
: :@:@:@@:@:@::::::::::::::::::::::	@d:d:d2:2:2:: : : : : : : : :::::::	@d:d:d2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	@d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2:  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :.)*
(
_output_shapes
::!*

_output_shapes	
::.+*
(
_output_shapes
::!,

_output_shapes	
::.-*
(
_output_shapes
::!.

_output_shapes	
::%/!

_output_shapes
:	@d: 0

_output_shapes
:d:$1 

_output_shapes

:d2: 2

_output_shapes
:2:$3 

_output_shapes

:2: 4

_output_shapes
::5

_output_shapes
: 
Р

(__inference_dense_43_layer_call_fn_55341

inputs
unknown:d2
	unknown_0:2
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_53783o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ї
Є
,__inference_block4_conv1_layer_call_fn_55170

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block4_conv2_layer_call_and_return_conditional_losses_55201

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
j
М
H__inference_sequential_22_layer_call_and_return_conditional_losses_53813

inputs,
block1_conv1_53533:@ 
block1_conv1_53535:@,
block1_conv2_53550:@@ 
block1_conv2_53552:@-
block2_conv1_53568:@!
block2_conv1_53570:	.
block2_conv2_53585:!
block2_conv2_53587:	.
block3_conv1_53603:!
block3_conv1_53605:	.
block3_conv2_53620:!
block3_conv2_53622:	.
block3_conv3_53637:!
block3_conv3_53639:	.
block4_conv1_53655:!
block4_conv1_53657:	.
block4_conv2_53672:!
block4_conv2_53674:	.
block4_conv3_53689:!
block4_conv3_53691:	.
block5_conv1_53707:!
block5_conv1_53709:	.
block5_conv2_53724:!
block5_conv2_53726:	.
block5_conv3_53741:!
block5_conv3_53743:	!
dense_42_53767:	@d
dense_42_53769:d 
dense_43_53784:d2
dense_43_53786:2 
dense_44_53800:2
dense_44_53802:
identityЂ$block1_conv1/StatefulPartitionedCallЂ$block1_conv2/StatefulPartitionedCallЂ$block2_conv1/StatefulPartitionedCallЂ$block2_conv2/StatefulPartitionedCallЂ$block3_conv1/StatefulPartitionedCallЂ$block3_conv2/StatefulPartitionedCallЂ$block3_conv3/StatefulPartitionedCallЂ$block4_conv1/StatefulPartitionedCallЂ$block4_conv2/StatefulPartitionedCallЂ$block4_conv3/StatefulPartitionedCallЂ$block5_conv1/StatefulPartitionedCallЂ$block5_conv2/StatefulPartitionedCallЂ$block5_conv3/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_53533block1_conv1_53535*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532Ў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_53550block1_conv2_53552*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549ь
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџKK@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463Є
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_53568block2_conv1_53570*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567­
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_53585block2_conv2_53587*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584э
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475Є
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_53603block3_conv1_53605*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602­
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_53620block3_conv2_53622*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619­
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_53637block3_conv3_53639*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636э
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487Є
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_53655block4_conv1_53657*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654­
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_53672block4_conv2_53674*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671­
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_53689block4_conv3_53691*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688э
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499Є
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_53707block5_conv1_53709*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706­
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_53724block5_conv2_53726*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723­
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_53741block5_conv3_53743*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740э
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511к
flatten_14/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_42_53767dense_42_53769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_53766
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_53784dense_43_53786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_53783
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_53800dense_44_53802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_53799ф
activation_13/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_53810u
IdentityIdentity&activation_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЊ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б
к
#__inference_signature_wrapper_54607
input_15!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	@d

unknown_26:d

unknown_27:d2

unknown_28:2

unknown_29:2

unknown_30:
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_53454o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15


G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block4_conv1_layer_call_and_return_conditional_losses_55181

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block3_conv1_layer_call_and_return_conditional_losses_55111

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs
Ў
G
+__inference_block1_pool_layer_call_fn_55036

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Р

(__inference_dense_44_layer_call_fn_55361

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_53799o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs

b
F__inference_block1_pool_layer_call_and_return_conditional_losses_55041

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


є
C__inference_dense_43_layer_call_and_return_conditional_losses_55352

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
У

(__inference_dense_42_layer_call_fn_55321

inputs
unknown:	@d
	unknown_0:d
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_53766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ўо
Ѕ!
!__inference__traced_restore_55726
file_prefix>
$assignvariableop_block1_conv1_kernel:@2
$assignvariableop_1_block1_conv1_bias:@@
&assignvariableop_2_block1_conv2_kernel:@@2
$assignvariableop_3_block1_conv2_bias:@A
&assignvariableop_4_block2_conv1_kernel:@3
$assignvariableop_5_block2_conv1_bias:	B
&assignvariableop_6_block2_conv2_kernel:3
$assignvariableop_7_block2_conv2_bias:	B
&assignvariableop_8_block3_conv1_kernel:3
$assignvariableop_9_block3_conv1_bias:	C
'assignvariableop_10_block3_conv2_kernel:4
%assignvariableop_11_block3_conv2_bias:	C
'assignvariableop_12_block3_conv3_kernel:4
%assignvariableop_13_block3_conv3_bias:	C
'assignvariableop_14_block4_conv1_kernel:4
%assignvariableop_15_block4_conv1_bias:	C
'assignvariableop_16_block4_conv2_kernel:4
%assignvariableop_17_block4_conv2_bias:	C
'assignvariableop_18_block4_conv3_kernel:4
%assignvariableop_19_block4_conv3_bias:	C
'assignvariableop_20_block5_conv1_kernel:4
%assignvariableop_21_block5_conv1_bias:	C
'assignvariableop_22_block5_conv2_kernel:4
%assignvariableop_23_block5_conv2_bias:	C
'assignvariableop_24_block5_conv3_kernel:4
%assignvariableop_25_block5_conv3_bias:	6
#assignvariableop_26_dense_42_kernel:	@d/
!assignvariableop_27_dense_42_bias:d5
#assignvariableop_28_dense_43_kernel:d2/
!assignvariableop_29_dense_43_bias:25
#assignvariableop_30_dense_44_kernel:2/
!assignvariableop_31_dense_44_bias:&
assignvariableop_32_sgd_iter:	 '
assignvariableop_33_sgd_decay: /
%assignvariableop_34_sgd_learning_rate: *
 assignvariableop_35_sgd_momentum: %
assignvariableop_36_total_1: %
assignvariableop_37_count_1: #
assignvariableop_38_total: #
assignvariableop_39_count: P
4assignvariableop_40_sgd_block5_conv1_kernel_momentum:A
2assignvariableop_41_sgd_block5_conv1_bias_momentum:	P
4assignvariableop_42_sgd_block5_conv2_kernel_momentum:A
2assignvariableop_43_sgd_block5_conv2_bias_momentum:	P
4assignvariableop_44_sgd_block5_conv3_kernel_momentum:A
2assignvariableop_45_sgd_block5_conv3_bias_momentum:	C
0assignvariableop_46_sgd_dense_42_kernel_momentum:	@d<
.assignvariableop_47_sgd_dense_42_bias_momentum:dB
0assignvariableop_48_sgd_dense_43_kernel_momentum:d2<
.assignvariableop_49_sgd_dense_43_bias_momentum:2B
0assignvariableop_50_sgd_dense_44_kernel_momentum:2<
.assignvariableop_51_sgd_dense_44_bias_momentum:
identity_53ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Я
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*ѕ
valueыBш5B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*}
valuetBr5B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Њ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ъ
_output_shapesз
д:::::::::::::::::::::::::::::::::::::::::::::::::::::*C
dtypes9
725	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOpAssignVariableOp$assignvariableop_block1_conv1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block1_conv1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block2_conv1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block2_conv1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block3_conv1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block3_conv1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv2_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv3_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv3_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block4_conv1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block4_conv1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block5_conv1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block5_conv1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block5_conv2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block5_conv2_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv3_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_42_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_42_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_43_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_43_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_44_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_44_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:Е
AssignVariableOp_32AssignVariableOpassignvariableop_32_sgd_iterIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_33AssignVariableOpassignvariableop_33_sgd_decayIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_34AssignVariableOp%assignvariableop_34_sgd_learning_rateIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_35AssignVariableOp assignvariableop_35_sgd_momentumIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_1Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_38AssignVariableOpassignvariableop_38_totalIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_39AssignVariableOpassignvariableop_39_countIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_40AssignVariableOp4assignvariableop_40_sgd_block5_conv1_kernel_momentumIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_41AssignVariableOp2assignvariableop_41_sgd_block5_conv1_bias_momentumIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_42AssignVariableOp4assignvariableop_42_sgd_block5_conv2_kernel_momentumIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_43AssignVariableOp2assignvariableop_43_sgd_block5_conv2_bias_momentumIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_44AssignVariableOp4assignvariableop_44_sgd_block5_conv3_kernel_momentumIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_45AssignVariableOp2assignvariableop_45_sgd_block5_conv3_bias_momentumIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_46AssignVariableOp0assignvariableop_46_sgd_dense_42_kernel_momentumIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_47AssignVariableOp.assignvariableop_47_sgd_dense_42_bias_momentumIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_48AssignVariableOp0assignvariableop_48_sgd_dense_43_kernel_momentumIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_49AssignVariableOp.assignvariableop_49_sgd_dense_43_bias_momentumIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_50AssignVariableOp0assignvariableop_50_sgd_dense_44_kernel_momentumIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_51AssignVariableOp.assignvariableop_51_sgd_dense_44_bias_momentumIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ч	
Identity_52Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_53IdentityIdentity_52:output:0^NoOp_1*
T0*
_output_shapes
: Д	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_53Identity_53:output:0*}
_input_shapesl
j: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ц	
є
C__inference_dense_44_layer_call_and_return_conditional_losses_53799

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


G__inference_block4_conv3_layer_call_and_return_conditional_losses_55221

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block2_conv1_layer_call_and_return_conditional_losses_55061

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKKw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџKK@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџKK@
 
_user_specified_nameinputs


G__inference_block3_conv2_layer_call_and_return_conditional_losses_55131

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs
ї
Є
,__inference_block4_conv3_layer_call_fn_55210

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
j
О
H__inference_sequential_22_layer_call_and_return_conditional_losses_54441
input_15,
block1_conv1_54353:@ 
block1_conv1_54355:@,
block1_conv2_54358:@@ 
block1_conv2_54360:@-
block2_conv1_54364:@!
block2_conv1_54366:	.
block2_conv2_54369:!
block2_conv2_54371:	.
block3_conv1_54375:!
block3_conv1_54377:	.
block3_conv2_54380:!
block3_conv2_54382:	.
block3_conv3_54385:!
block3_conv3_54387:	.
block4_conv1_54391:!
block4_conv1_54393:	.
block4_conv2_54396:!
block4_conv2_54398:	.
block4_conv3_54401:!
block4_conv3_54403:	.
block5_conv1_54407:!
block5_conv1_54409:	.
block5_conv2_54412:!
block5_conv2_54414:	.
block5_conv3_54417:!
block5_conv3_54419:	!
dense_42_54424:	@d
dense_42_54426:d 
dense_43_54429:d2
dense_43_54431:2 
dense_44_54434:2
dense_44_54436:
identityЂ$block1_conv1/StatefulPartitionedCallЂ$block1_conv2/StatefulPartitionedCallЂ$block2_conv1/StatefulPartitionedCallЂ$block2_conv2/StatefulPartitionedCallЂ$block3_conv1/StatefulPartitionedCallЂ$block3_conv2/StatefulPartitionedCallЂ$block3_conv3/StatefulPartitionedCallЂ$block4_conv1/StatefulPartitionedCallЂ$block4_conv2/StatefulPartitionedCallЂ$block4_conv3/StatefulPartitionedCallЂ$block5_conv1/StatefulPartitionedCallЂ$block5_conv2/StatefulPartitionedCallЂ$block5_conv3/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_15block1_conv1_54353block1_conv1_54355*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532Ў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_54358block1_conv2_54360*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549ь
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџKK@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463Є
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_54364block2_conv1_54366*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567­
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_54369block2_conv2_54371*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584э
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475Є
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_54375block3_conv1_54377*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602­
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_54380block3_conv2_54382*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619­
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_54385block3_conv3_54387*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636э
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487Є
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_54391block4_conv1_54393*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654­
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_54396block4_conv2_54398*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671­
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_54401block4_conv3_54403*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688э
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499Є
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_54407block5_conv1_54409*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706­
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_54412block5_conv2_54414*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723­
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_54417block5_conv3_54419*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740э
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511к
flatten_14/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_42_54424dense_42_54426*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_53766
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_54429dense_43_54431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_53783
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_54434dense_44_54436*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_53799ф
activation_13/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_53810u
IdentityIdentity&activation_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЊ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15


G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKKw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџKK@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџKK@
 
_user_specified_nameinputs
ј
Ё
,__inference_block1_conv2_layer_call_fn_55020

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


є
C__inference_dense_43_layer_call_and_return_conditional_losses_53783

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
Ў
G
+__inference_block5_pool_layer_call_fn_55296

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKKw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџKK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџKK
 
_user_specified_nameinputs


G__inference_block1_conv1_layer_call_and_return_conditional_losses_55011

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§
т
-__inference_sequential_22_layer_call_fn_54676

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	@d

unknown_26:d

unknown_27:d2

unknown_28:2

unknown_29:2

unknown_30:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_53813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў
G
+__inference_block2_pool_layer_call_fn_55086

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ф
-__inference_sequential_22_layer_call_fn_53880
input_15!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	@d

unknown_26:d

unknown_27:d2

unknown_28:2

unknown_29:2

unknown_30:
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_53813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15


G__inference_block5_conv3_layer_call_and_return_conditional_losses_55291

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs
ї
Є
,__inference_block3_conv3_layer_call_fn_55140

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs

b
F__inference_block5_pool_layer_call_and_return_conditional_losses_55301

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї
Є
,__inference_block4_conv2_layer_call_fn_55190

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block1_conv2_layer_call_and_return_conditional_losses_55031

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block2_conv2_layer_call_and_return_conditional_losses_55081

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKKw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџKK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџKK
 
_user_specified_nameinputs
ї
Є
,__inference_block5_conv3_layer_call_fn_55280

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs
Ѕ
I
-__inference_activation_13_layer_call_fn_55376

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_53810`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў
G
+__inference_block4_pool_layer_call_fn_55226

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј
Ё
,__inference_block1_conv1_layer_call_fn_55000

inputs!
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї
Є
,__inference_block5_conv2_layer_call_fn_55260

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs

b
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


ѕ
C__inference_dense_42_layer_call_and_return_conditional_losses_53766

inputs1
matmul_readvariableop_resource:	@d-
biasadd_readvariableop_resource:d
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ц	
є
C__inference_dense_44_layer_call_and_return_conditional_losses_55371

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ї
Є
,__inference_block2_conv2_layer_call_fn_55070

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџKK: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџKK
 
_user_specified_nameinputs
Ы
d
H__inference_activation_13_layer_call_and_return_conditional_losses_53810

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:џџџџџџџџџS
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ў
G
+__inference_block3_pool_layer_call_fn_55156

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї
Є
,__inference_block3_conv1_layer_call_fn_55100

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs
Щ
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs
Ђ
 
H__inference_sequential_22_layer_call_and_return_conditional_losses_54991

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	:
'dense_42_matmul_readvariableop_resource:	@d6
(dense_42_biasadd_readvariableop_resource:d9
'dense_43_matmul_readvariableop_resource:d26
(dense_43_biasadd_readvariableop_resource:29
'dense_44_matmul_readvariableop_resource:26
(dense_44_biasadd_readvariableop_resource:
identityЂ#block1_conv1/BiasAdd/ReadVariableOpЂ"block1_conv1/Conv2D/ReadVariableOpЂ#block1_conv2/BiasAdd/ReadVariableOpЂ"block1_conv2/Conv2D/ReadVariableOpЂ#block2_conv1/BiasAdd/ReadVariableOpЂ"block2_conv1/Conv2D/ReadVariableOpЂ#block2_conv2/BiasAdd/ReadVariableOpЂ"block2_conv2/Conv2D/ReadVariableOpЂ#block3_conv1/BiasAdd/ReadVariableOpЂ"block3_conv1/Conv2D/ReadVariableOpЂ#block3_conv2/BiasAdd/ReadVariableOpЂ"block3_conv2/Conv2D/ReadVariableOpЂ#block3_conv3/BiasAdd/ReadVariableOpЂ"block3_conv3/Conv2D/ReadVariableOpЂ#block4_conv1/BiasAdd/ReadVariableOpЂ"block4_conv1/Conv2D/ReadVariableOpЂ#block4_conv2/BiasAdd/ReadVariableOpЂ"block4_conv2/Conv2D/ReadVariableOpЂ#block4_conv3/BiasAdd/ReadVariableOpЂ"block4_conv3/Conv2D/ReadVariableOpЂ#block5_conv1/BiasAdd/ReadVariableOpЂ"block5_conv1/Conv2D/ReadVariableOpЂ#block5_conv2/BiasAdd/ReadVariableOpЂ"block5_conv2/Conv2D/ReadVariableOpЂ#block5_conv3/BiasAdd/ReadVariableOpЂ"block5_conv3/Conv2D/ReadVariableOpЂdense_42/BiasAdd/ReadVariableOpЂdense_42/MatMul/ReadVariableOpЂdense_43/BiasAdd/ReadVariableOpЂdense_43/MatMul/ReadVariableOpЂdense_44/BiasAdd/ReadVariableOpЂdense_44/MatMul/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Е
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ю
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0І
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@Ќ
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџKK@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ъ
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKs
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKK
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKKs
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKK­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ%%*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ		*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Э
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    
flatten_14/ReshapeReshapeblock5_pool/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	@d*
dtype0
dense_42/MatMulMatMulflatten_14/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdb
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџm
activation_13/SigmoidSigmoiddense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentityactivation_13/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs

ф
-__inference_sequential_22_layer_call_fn_54350
input_15!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	@d

unknown_26:d

unknown_27:d2

unknown_28:2

unknown_29:2

unknown_30:
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_54214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15
ёЩ
њ 
 __inference__wrapped_model_53454
input_15S
9sequential_22_block1_conv1_conv2d_readvariableop_resource:@H
:sequential_22_block1_conv1_biasadd_readvariableop_resource:@S
9sequential_22_block1_conv2_conv2d_readvariableop_resource:@@H
:sequential_22_block1_conv2_biasadd_readvariableop_resource:@T
9sequential_22_block2_conv1_conv2d_readvariableop_resource:@I
:sequential_22_block2_conv1_biasadd_readvariableop_resource:	U
9sequential_22_block2_conv2_conv2d_readvariableop_resource:I
:sequential_22_block2_conv2_biasadd_readvariableop_resource:	U
9sequential_22_block3_conv1_conv2d_readvariableop_resource:I
:sequential_22_block3_conv1_biasadd_readvariableop_resource:	U
9sequential_22_block3_conv2_conv2d_readvariableop_resource:I
:sequential_22_block3_conv2_biasadd_readvariableop_resource:	U
9sequential_22_block3_conv3_conv2d_readvariableop_resource:I
:sequential_22_block3_conv3_biasadd_readvariableop_resource:	U
9sequential_22_block4_conv1_conv2d_readvariableop_resource:I
:sequential_22_block4_conv1_biasadd_readvariableop_resource:	U
9sequential_22_block4_conv2_conv2d_readvariableop_resource:I
:sequential_22_block4_conv2_biasadd_readvariableop_resource:	U
9sequential_22_block4_conv3_conv2d_readvariableop_resource:I
:sequential_22_block4_conv3_biasadd_readvariableop_resource:	U
9sequential_22_block5_conv1_conv2d_readvariableop_resource:I
:sequential_22_block5_conv1_biasadd_readvariableop_resource:	U
9sequential_22_block5_conv2_conv2d_readvariableop_resource:I
:sequential_22_block5_conv2_biasadd_readvariableop_resource:	U
9sequential_22_block5_conv3_conv2d_readvariableop_resource:I
:sequential_22_block5_conv3_biasadd_readvariableop_resource:	H
5sequential_22_dense_42_matmul_readvariableop_resource:	@dD
6sequential_22_dense_42_biasadd_readvariableop_resource:dG
5sequential_22_dense_43_matmul_readvariableop_resource:d2D
6sequential_22_dense_43_biasadd_readvariableop_resource:2G
5sequential_22_dense_44_matmul_readvariableop_resource:2D
6sequential_22_dense_44_biasadd_readvariableop_resource:
identityЂ1sequential_22/block1_conv1/BiasAdd/ReadVariableOpЂ0sequential_22/block1_conv1/Conv2D/ReadVariableOpЂ1sequential_22/block1_conv2/BiasAdd/ReadVariableOpЂ0sequential_22/block1_conv2/Conv2D/ReadVariableOpЂ1sequential_22/block2_conv1/BiasAdd/ReadVariableOpЂ0sequential_22/block2_conv1/Conv2D/ReadVariableOpЂ1sequential_22/block2_conv2/BiasAdd/ReadVariableOpЂ0sequential_22/block2_conv2/Conv2D/ReadVariableOpЂ1sequential_22/block3_conv1/BiasAdd/ReadVariableOpЂ0sequential_22/block3_conv1/Conv2D/ReadVariableOpЂ1sequential_22/block3_conv2/BiasAdd/ReadVariableOpЂ0sequential_22/block3_conv2/Conv2D/ReadVariableOpЂ1sequential_22/block3_conv3/BiasAdd/ReadVariableOpЂ0sequential_22/block3_conv3/Conv2D/ReadVariableOpЂ1sequential_22/block4_conv1/BiasAdd/ReadVariableOpЂ0sequential_22/block4_conv1/Conv2D/ReadVariableOpЂ1sequential_22/block4_conv2/BiasAdd/ReadVariableOpЂ0sequential_22/block4_conv2/Conv2D/ReadVariableOpЂ1sequential_22/block4_conv3/BiasAdd/ReadVariableOpЂ0sequential_22/block4_conv3/Conv2D/ReadVariableOpЂ1sequential_22/block5_conv1/BiasAdd/ReadVariableOpЂ0sequential_22/block5_conv1/Conv2D/ReadVariableOpЂ1sequential_22/block5_conv2/BiasAdd/ReadVariableOpЂ0sequential_22/block5_conv2/Conv2D/ReadVariableOpЂ1sequential_22/block5_conv3/BiasAdd/ReadVariableOpЂ0sequential_22/block5_conv3/Conv2D/ReadVariableOpЂ-sequential_22/dense_42/BiasAdd/ReadVariableOpЂ,sequential_22/dense_42/MatMul/ReadVariableOpЂ-sequential_22/dense_43/BiasAdd/ReadVariableOpЂ,sequential_22/dense_43/MatMul/ReadVariableOpЂ-sequential_22/dense_44/BiasAdd/ReadVariableOpЂ,sequential_22/dense_44/MatMul/ReadVariableOpВ
0sequential_22/block1_conv1/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0г
!sequential_22/block1_conv1/Conv2DConv2Dinput_158sequential_22/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
Ј
1sequential_22/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0а
"sequential_22/block1_conv1/BiasAddBiasAdd*sequential_22/block1_conv1/Conv2D:output:09sequential_22/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@
sequential_22/block1_conv1/ReluRelu+sequential_22/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@В
0sequential_22/block1_conv2/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ј
!sequential_22/block1_conv2/Conv2DConv2D-sequential_22/block1_conv1/Relu:activations:08sequential_22/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
Ј
1sequential_22/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0а
"sequential_22/block1_conv2/BiasAddBiasAdd*sequential_22/block1_conv2/Conv2D:output:09sequential_22/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@
sequential_22/block1_conv2/ReluRelu+sequential_22/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@Ш
!sequential_22/block1_pool/MaxPoolMaxPool-sequential_22/block1_conv2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџKK@*
ksize
*
paddingVALID*
strides
Г
0sequential_22/block2_conv1/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0є
!sequential_22/block2_conv1/Conv2DConv2D*sequential_22/block1_pool/MaxPool:output:08sequential_22/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
Љ
1sequential_22/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block2_conv1/BiasAddBiasAdd*sequential_22/block2_conv1/Conv2D:output:09sequential_22/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK
sequential_22/block2_conv1/ReluRelu+sequential_22/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKД
0sequential_22/block2_conv2/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block2_conv2/Conv2DConv2D-sequential_22/block2_conv1/Relu:activations:08sequential_22/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK*
paddingSAME*
strides
Љ
1sequential_22/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block2_conv2/BiasAddBiasAdd*sequential_22/block2_conv2/Conv2D:output:09sequential_22/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџKK
sequential_22/block2_conv2/ReluRelu+sequential_22/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџKKЩ
!sequential_22/block2_pool/MaxPoolMaxPool-sequential_22/block2_conv2/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ%%*
ksize
*
paddingVALID*
strides
Д
0sequential_22/block3_conv1/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0є
!sequential_22/block3_conv1/Conv2DConv2D*sequential_22/block2_pool/MaxPool:output:08sequential_22/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
Љ
1sequential_22/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block3_conv1/BiasAddBiasAdd*sequential_22/block3_conv1/Conv2D:output:09sequential_22/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
sequential_22/block3_conv1/ReluRelu+sequential_22/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Д
0sequential_22/block3_conv2/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block3_conv2/Conv2DConv2D-sequential_22/block3_conv1/Relu:activations:08sequential_22/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
Љ
1sequential_22/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block3_conv2/BiasAddBiasAdd*sequential_22/block3_conv2/Conv2D:output:09sequential_22/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
sequential_22/block3_conv2/ReluRelu+sequential_22/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Д
0sequential_22/block3_conv3/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block3_conv3/Conv2DConv2D-sequential_22/block3_conv2/Relu:activations:08sequential_22/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
Љ
1sequential_22/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block3_conv3/BiasAddBiasAdd*sequential_22/block3_conv3/Conv2D:output:09sequential_22/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%
sequential_22/block3_conv3/ReluRelu+sequential_22/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Щ
!sequential_22/block3_pool/MaxPoolMaxPool-sequential_22/block3_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
Д
0sequential_22/block4_conv1/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0є
!sequential_22/block4_conv1/Conv2DConv2D*sequential_22/block3_pool/MaxPool:output:08sequential_22/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
Љ
1sequential_22/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block4_conv1/BiasAddBiasAdd*sequential_22/block4_conv1/Conv2D:output:09sequential_22/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ
sequential_22/block4_conv1/ReluRelu+sequential_22/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџД
0sequential_22/block4_conv2/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block4_conv2/Conv2DConv2D-sequential_22/block4_conv1/Relu:activations:08sequential_22/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
Љ
1sequential_22/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block4_conv2/BiasAddBiasAdd*sequential_22/block4_conv2/Conv2D:output:09sequential_22/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ
sequential_22/block4_conv2/ReluRelu+sequential_22/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџД
0sequential_22/block4_conv3/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block4_conv3/Conv2DConv2D-sequential_22/block4_conv2/Relu:activations:08sequential_22/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
Љ
1sequential_22/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block4_conv3/BiasAddBiasAdd*sequential_22/block4_conv3/Conv2D:output:09sequential_22/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ
sequential_22/block4_conv3/ReluRelu+sequential_22/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџЩ
!sequential_22/block4_pool/MaxPoolMaxPool-sequential_22/block4_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ		*
ksize
*
paddingVALID*
strides
Д
0sequential_22/block5_conv1/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0є
!sequential_22/block5_conv1/Conv2DConv2D*sequential_22/block4_pool/MaxPool:output:08sequential_22/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
Љ
1sequential_22/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block5_conv1/BiasAddBiasAdd*sequential_22/block5_conv1/Conv2D:output:09sequential_22/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		
sequential_22/block5_conv1/ReluRelu+sequential_22/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		Д
0sequential_22/block5_conv2/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block5_conv2/Conv2DConv2D-sequential_22/block5_conv1/Relu:activations:08sequential_22/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
Љ
1sequential_22/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block5_conv2/BiasAddBiasAdd*sequential_22/block5_conv2/Conv2D:output:09sequential_22/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		
sequential_22/block5_conv2/ReluRelu+sequential_22/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		Д
0sequential_22/block5_conv3/Conv2D/ReadVariableOpReadVariableOp9sequential_22_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ї
!sequential_22/block5_conv3/Conv2DConv2D-sequential_22/block5_conv2/Relu:activations:08sequential_22/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
Љ
1sequential_22/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp:sequential_22_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Я
"sequential_22/block5_conv3/BiasAddBiasAdd*sequential_22/block5_conv3/Conv2D:output:09sequential_22/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		
sequential_22/block5_conv3/ReluRelu+sequential_22/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		Щ
!sequential_22/block5_pool/MaxPoolMaxPool-sequential_22/block5_conv3/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
o
sequential_22/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    Г
 sequential_22/flatten_14/ReshapeReshape*sequential_22/block5_pool/MaxPool:output:0'sequential_22/flatten_14/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@Ѓ
,sequential_22/dense_42/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_42_matmul_readvariableop_resource*
_output_shapes
:	@d*
dtype0К
sequential_22/dense_42/MatMulMatMul)sequential_22/flatten_14/Reshape:output:04sequential_22/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd 
-sequential_22/dense_42/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_42_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Л
sequential_22/dense_42/BiasAddBiasAdd'sequential_22/dense_42/MatMul:product:05sequential_22/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd~
sequential_22/dense_42/ReluRelu'sequential_22/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџdЂ
,sequential_22/dense_43/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_43_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0К
sequential_22/dense_43/MatMulMatMul)sequential_22/dense_42/Relu:activations:04sequential_22/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
-sequential_22/dense_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_43_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Л
sequential_22/dense_43/BiasAddBiasAdd'sequential_22/dense_43/MatMul:product:05sequential_22/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
sequential_22/dense_43/ReluRelu'sequential_22/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
,sequential_22/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_44_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0К
sequential_22/dense_44/MatMulMatMul)sequential_22/dense_43/Relu:activations:04sequential_22/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_22/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_22/dense_44/BiasAddBiasAdd'sequential_22/dense_44/MatMul:product:05sequential_22/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
#sequential_22/activation_13/SigmoidSigmoid'sequential_22/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_22/activation_13/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp2^sequential_22/block1_conv1/BiasAdd/ReadVariableOp1^sequential_22/block1_conv1/Conv2D/ReadVariableOp2^sequential_22/block1_conv2/BiasAdd/ReadVariableOp1^sequential_22/block1_conv2/Conv2D/ReadVariableOp2^sequential_22/block2_conv1/BiasAdd/ReadVariableOp1^sequential_22/block2_conv1/Conv2D/ReadVariableOp2^sequential_22/block2_conv2/BiasAdd/ReadVariableOp1^sequential_22/block2_conv2/Conv2D/ReadVariableOp2^sequential_22/block3_conv1/BiasAdd/ReadVariableOp1^sequential_22/block3_conv1/Conv2D/ReadVariableOp2^sequential_22/block3_conv2/BiasAdd/ReadVariableOp1^sequential_22/block3_conv2/Conv2D/ReadVariableOp2^sequential_22/block3_conv3/BiasAdd/ReadVariableOp1^sequential_22/block3_conv3/Conv2D/ReadVariableOp2^sequential_22/block4_conv1/BiasAdd/ReadVariableOp1^sequential_22/block4_conv1/Conv2D/ReadVariableOp2^sequential_22/block4_conv2/BiasAdd/ReadVariableOp1^sequential_22/block4_conv2/Conv2D/ReadVariableOp2^sequential_22/block4_conv3/BiasAdd/ReadVariableOp1^sequential_22/block4_conv3/Conv2D/ReadVariableOp2^sequential_22/block5_conv1/BiasAdd/ReadVariableOp1^sequential_22/block5_conv1/Conv2D/ReadVariableOp2^sequential_22/block5_conv2/BiasAdd/ReadVariableOp1^sequential_22/block5_conv2/Conv2D/ReadVariableOp2^sequential_22/block5_conv3/BiasAdd/ReadVariableOp1^sequential_22/block5_conv3/Conv2D/ReadVariableOp.^sequential_22/dense_42/BiasAdd/ReadVariableOp-^sequential_22/dense_42/MatMul/ReadVariableOp.^sequential_22/dense_43/BiasAdd/ReadVariableOp-^sequential_22/dense_43/MatMul/ReadVariableOp.^sequential_22/dense_44/BiasAdd/ReadVariableOp-^sequential_22/dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1sequential_22/block1_conv1/BiasAdd/ReadVariableOp1sequential_22/block1_conv1/BiasAdd/ReadVariableOp2d
0sequential_22/block1_conv1/Conv2D/ReadVariableOp0sequential_22/block1_conv1/Conv2D/ReadVariableOp2f
1sequential_22/block1_conv2/BiasAdd/ReadVariableOp1sequential_22/block1_conv2/BiasAdd/ReadVariableOp2d
0sequential_22/block1_conv2/Conv2D/ReadVariableOp0sequential_22/block1_conv2/Conv2D/ReadVariableOp2f
1sequential_22/block2_conv1/BiasAdd/ReadVariableOp1sequential_22/block2_conv1/BiasAdd/ReadVariableOp2d
0sequential_22/block2_conv1/Conv2D/ReadVariableOp0sequential_22/block2_conv1/Conv2D/ReadVariableOp2f
1sequential_22/block2_conv2/BiasAdd/ReadVariableOp1sequential_22/block2_conv2/BiasAdd/ReadVariableOp2d
0sequential_22/block2_conv2/Conv2D/ReadVariableOp0sequential_22/block2_conv2/Conv2D/ReadVariableOp2f
1sequential_22/block3_conv1/BiasAdd/ReadVariableOp1sequential_22/block3_conv1/BiasAdd/ReadVariableOp2d
0sequential_22/block3_conv1/Conv2D/ReadVariableOp0sequential_22/block3_conv1/Conv2D/ReadVariableOp2f
1sequential_22/block3_conv2/BiasAdd/ReadVariableOp1sequential_22/block3_conv2/BiasAdd/ReadVariableOp2d
0sequential_22/block3_conv2/Conv2D/ReadVariableOp0sequential_22/block3_conv2/Conv2D/ReadVariableOp2f
1sequential_22/block3_conv3/BiasAdd/ReadVariableOp1sequential_22/block3_conv3/BiasAdd/ReadVariableOp2d
0sequential_22/block3_conv3/Conv2D/ReadVariableOp0sequential_22/block3_conv3/Conv2D/ReadVariableOp2f
1sequential_22/block4_conv1/BiasAdd/ReadVariableOp1sequential_22/block4_conv1/BiasAdd/ReadVariableOp2d
0sequential_22/block4_conv1/Conv2D/ReadVariableOp0sequential_22/block4_conv1/Conv2D/ReadVariableOp2f
1sequential_22/block4_conv2/BiasAdd/ReadVariableOp1sequential_22/block4_conv2/BiasAdd/ReadVariableOp2d
0sequential_22/block4_conv2/Conv2D/ReadVariableOp0sequential_22/block4_conv2/Conv2D/ReadVariableOp2f
1sequential_22/block4_conv3/BiasAdd/ReadVariableOp1sequential_22/block4_conv3/BiasAdd/ReadVariableOp2d
0sequential_22/block4_conv3/Conv2D/ReadVariableOp0sequential_22/block4_conv3/Conv2D/ReadVariableOp2f
1sequential_22/block5_conv1/BiasAdd/ReadVariableOp1sequential_22/block5_conv1/BiasAdd/ReadVariableOp2d
0sequential_22/block5_conv1/Conv2D/ReadVariableOp0sequential_22/block5_conv1/Conv2D/ReadVariableOp2f
1sequential_22/block5_conv2/BiasAdd/ReadVariableOp1sequential_22/block5_conv2/BiasAdd/ReadVariableOp2d
0sequential_22/block5_conv2/Conv2D/ReadVariableOp0sequential_22/block5_conv2/Conv2D/ReadVariableOp2f
1sequential_22/block5_conv3/BiasAdd/ReadVariableOp1sequential_22/block5_conv3/BiasAdd/ReadVariableOp2d
0sequential_22/block5_conv3/Conv2D/ReadVariableOp0sequential_22/block5_conv3/Conv2D/ReadVariableOp2^
-sequential_22/dense_42/BiasAdd/ReadVariableOp-sequential_22/dense_42/BiasAdd/ReadVariableOp2\
,sequential_22/dense_42/MatMul/ReadVariableOp,sequential_22/dense_42/MatMul/ReadVariableOp2^
-sequential_22/dense_43/BiasAdd/ReadVariableOp-sequential_22/dense_43/BiasAdd/ReadVariableOp2\
,sequential_22/dense_43/MatMul/ReadVariableOp,sequential_22/dense_43/MatMul/ReadVariableOp2^
-sequential_22/dense_44/BiasAdd/ReadVariableOp-sequential_22/dense_44/BiasAdd/ReadVariableOp2\
,sequential_22/dense_44/MatMul/ReadVariableOp,sequential_22/dense_44/MatMul/ReadVariableOp:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15


G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs
j
О
H__inference_sequential_22_layer_call_and_return_conditional_losses_54532
input_15,
block1_conv1_54444:@ 
block1_conv1_54446:@,
block1_conv2_54449:@@ 
block1_conv2_54451:@-
block2_conv1_54455:@!
block2_conv1_54457:	.
block2_conv2_54460:!
block2_conv2_54462:	.
block3_conv1_54466:!
block3_conv1_54468:	.
block3_conv2_54471:!
block3_conv2_54473:	.
block3_conv3_54476:!
block3_conv3_54478:	.
block4_conv1_54482:!
block4_conv1_54484:	.
block4_conv2_54487:!
block4_conv2_54489:	.
block4_conv3_54492:!
block4_conv3_54494:	.
block5_conv1_54498:!
block5_conv1_54500:	.
block5_conv2_54503:!
block5_conv2_54505:	.
block5_conv3_54508:!
block5_conv3_54510:	!
dense_42_54515:	@d
dense_42_54517:d 
dense_43_54520:d2
dense_43_54522:2 
dense_44_54525:2
dense_44_54527:
identityЂ$block1_conv1/StatefulPartitionedCallЂ$block1_conv2/StatefulPartitionedCallЂ$block2_conv1/StatefulPartitionedCallЂ$block2_conv2/StatefulPartitionedCallЂ$block3_conv1/StatefulPartitionedCallЂ$block3_conv2/StatefulPartitionedCallЂ$block3_conv3/StatefulPartitionedCallЂ$block4_conv1/StatefulPartitionedCallЂ$block4_conv2/StatefulPartitionedCallЂ$block4_conv3/StatefulPartitionedCallЂ$block5_conv1/StatefulPartitionedCallЂ$block5_conv2/StatefulPartitionedCallЂ$block5_conv3/StatefulPartitionedCallЂ dense_42/StatefulPartitionedCallЂ dense_43/StatefulPartitionedCallЂ dense_44/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_15block1_conv1_54444block1_conv1_54446*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_53532Ў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_54449block1_conv2_54451*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549ь
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџKK@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463Є
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_54455block2_conv1_54457*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567­
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_54460block2_conv2_54462*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_53584э
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475Є
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_54466block3_conv1_54468*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_53602­
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_54471block3_conv2_54473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619­
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_54476block3_conv3_54478*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636э
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_53487Є
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_54482block4_conv1_54484*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654­
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_54487block4_conv2_54489*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_53671­
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_54492block4_conv3_54494*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688э
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_53499Є
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_54498block5_conv1_54500*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706­
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_54503block5_conv2_54505*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_53723­
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_54508block5_conv3_54510*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740э
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511к
flatten_14/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753
 dense_42/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_42_54515dense_42_54517*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_42_layer_call_and_return_conditional_losses_53766
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_54520dense_43_54522*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_43_layer_call_and_return_conditional_losses_53783
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_54525dense_44_54527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_44_layer_call_and_return_conditional_losses_53799ф
activation_13/PartitionedCallPartitionedCall)dense_44/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_activation_13_layer_call_and_return_conditional_losses_53810u
IdentityIdentity&activation_13/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЊ
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall:[ W
1
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
input_15


G__inference_block4_conv1_layer_call_and_return_conditional_losses_53654

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_block2_pool_layer_call_and_return_conditional_losses_53475

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ї
Є
,__inference_block3_conv2_layer_call_fn_55120

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ%%*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs


G__inference_block4_conv3_layer_call_and_return_conditional_losses_53688

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_block1_pool_layer_call_and_return_conditional_losses_53463

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block5_conv1_layer_call_and_return_conditional_losses_55251

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs
Ы
d
H__inference_activation_13_layer_call_and_return_conditional_losses_55381

inputs
identityL
SigmoidSigmoidinputs*
T0*'
_output_shapes
:џџџџџџџџџS
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї
Є
,__inference_block5_conv1_layer_call_fn_55240

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ		*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_53706x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs
§
т
-__inference_sequential_22_layer_call_fn_54745

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	@d

unknown_26:d

unknown_27:d2

unknown_28:2

unknown_29:2

unknown_30:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_54214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г
F
*__inference_flatten_14_layer_call_fn_55306

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_53753a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block5_conv3_layer_call_and_return_conditional_losses_53740

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs


G__inference_block5_conv2_layer_call_and_return_conditional_losses_55271

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ		Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ		j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ		w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ		: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ		
 
_user_specified_nameinputs

b
F__inference_block2_pool_layer_call_and_return_conditional_losses_55091

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_block4_pool_layer_call_and_return_conditional_losses_55231

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block1_conv2_layer_call_and_return_conditional_losses_53549

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


G__inference_block3_conv3_layer_call_and_return_conditional_losses_55151

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs


ѕ
C__inference_dense_42_layer_call_and_return_conditional_losses_55332

inputs1
matmul_readvariableop_resource:	@d-
biasadd_readvariableop_resource:d
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


G__inference_block3_conv2_layer_call_and_return_conditional_losses_53619

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs

b
F__inference_block5_pool_layer_call_and_return_conditional_losses_53511

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Щ
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_55312

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ    ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_block3_conv3_layer_call_and_return_conditional_losses_53636

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ%%Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ%%j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ%%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ%%
 
_user_specified_nameinputs
є
Ѓ
,__inference_block2_conv1_layer_call_fn_55050

inputs"
unknown:@
	unknown_0:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџKK*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_53567x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџKK`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџKK@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџKK@
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_defaultЈ
G
input_15;
serving_default_input_15:0џџџџџџџџџA
activation_130
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ию
Ф
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer_with_weights-12
layer-16
layer-17
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer_with_weights-15
layer-21
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures"
_tf_keras_sequential
н
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
н
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
н
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
н
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
н
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
 Y_jit_compiled_convolution_op"
_tf_keras_layer
н
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op"
_tf_keras_layer
н
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias
 k_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
н
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias
 z_jit_compiled_convolution_op"
_tf_keras_layer
с
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+Ё&call_and_return_all_conditional_losses
Ђkernel
	Ѓbias
!Є_jit_compiled_convolution_op"
_tf_keras_layer
ц
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses
Ћkernel
	Ќbias
!­_jit_compiled_convolution_op"
_tf_keras_layer
Ћ
Ў	variables
Џtrainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
У
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias"
_tf_keras_layer
У
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias"
_tf_keras_layer
У
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аkernel
	бbias"
_tf_keras_layer
Ћ
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
І
'0
(1
02
13
?4
@5
H6
I7
W8
X9
`10
a11
i12
j13
x14
y15
16
17
18
19
20
21
Ђ22
Ѓ23
Ћ24
Ќ25
Р26
С27
Ш28
Щ29
а30
б31"
trackable_list_wrapper

0
1
Ђ2
Ѓ3
Ћ4
Ќ5
Р6
С7
Ш8
Щ9
а10
б11"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
нtrace_0
оtrace_1
пtrace_2
рtrace_32ў
-__inference_sequential_22_layer_call_fn_53880
-__inference_sequential_22_layer_call_fn_54676
-__inference_sequential_22_layer_call_fn_54745
-__inference_sequential_22_layer_call_fn_54350П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zнtrace_0zоtrace_1zпtrace_2zрtrace_3
н
сtrace_0
тtrace_1
уtrace_2
фtrace_32ъ
H__inference_sequential_22_layer_call_and_return_conditional_losses_54868
H__inference_sequential_22_layer_call_and_return_conditional_losses_54991
H__inference_sequential_22_layer_call_and_return_conditional_losses_54441
H__inference_sequential_22_layer_call_and_return_conditional_losses_54532П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zсtrace_0zтtrace_1zуtrace_2zфtrace_3
ЬBЩ
 __inference__wrapped_model_53454input_15"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѕ
	хiter

цdecay
чlearning_rate
шmomentummomentummomentumЂmomentumЃmomentumЋmomentumЌmomentumРmomentumСmomentumШmomentumЩmomentumаmomentum бmomentumЁ"
	optimizer
-
щserving_default"
signature_map
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ђ
яtrace_02г
,__inference_block1_conv1_layer_call_fn_55000Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zяtrace_0

№trace_02ю
G__inference_block1_conv1_layer_call_and_return_conditional_losses_55011Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z№trace_0
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ёnon_trainable_variables
ђlayers
ѓmetrics
 єlayer_regularization_losses
ѕlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ђ
іtrace_02г
,__inference_block1_conv2_layer_call_fn_55020Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zіtrace_0

їtrace_02ю
G__inference_block1_conv2_layer_call_and_return_conditional_losses_55031Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zїtrace_0
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
јnon_trainable_variables
љlayers
њmetrics
 ћlayer_regularization_losses
ќlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ё
§trace_02в
+__inference_block1_pool_layer_call_fn_55036Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0

ўtrace_02э
F__inference_block1_pool_layer_call_and_return_conditional_losses_55041Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zўtrace_0
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_block2_conv1_layer_call_fn_55050Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ю
G__inference_block2_conv1_layer_call_and_return_conditional_losses_55061Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.:,@2block2_conv1/kernel
 :2block2_conv1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_block2_conv2_layer_call_fn_55070Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ю
G__inference_block2_conv2_layer_call_and_return_conditional_losses_55081Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
/:-2block2_conv2/kernel
 :2block2_conv2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ё
trace_02в
+__inference_block2_pool_layer_call_fn_55086Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02э
F__inference_block2_pool_layer_call_and_return_conditional_losses_55091Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_block3_conv1_layer_call_fn_55100Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ю
G__inference_block3_conv1_layer_call_and_return_conditional_losses_55111Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
/:-2block3_conv1/kernel
 :2block3_conv1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
ђ
 trace_02г
,__inference_block3_conv2_layer_call_fn_55120Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0

Ёtrace_02ю
G__inference_block3_conv2_layer_call_and_return_conditional_losses_55131Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЁtrace_0
/:-2block3_conv2/kernel
 :2block3_conv2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ђ
Їtrace_02г
,__inference_block3_conv3_layer_call_fn_55140Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0

Јtrace_02ю
G__inference_block3_conv3_layer_call_and_return_conditional_losses_55151Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЈtrace_0
/:-2block3_conv3/kernel
 :2block3_conv3/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
ё
Ўtrace_02в
+__inference_block3_pool_layer_call_fn_55156Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0

Џtrace_02э
F__inference_block3_pool_layer_call_and_return_conditional_losses_55161Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЏtrace_0
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
ђ
Еtrace_02г
,__inference_block4_conv1_layer_call_fn_55170Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0

Жtrace_02ю
G__inference_block4_conv1_layer_call_and_return_conditional_losses_55181Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0
/:-2block4_conv1/kernel
 :2block4_conv1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Д
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
Мtrace_02г
,__inference_block4_conv2_layer_call_fn_55190Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0

Нtrace_02ю
G__inference_block4_conv2_layer_call_and_return_conditional_losses_55201Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0
/:-2block4_conv2/kernel
 :2block4_conv2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
Уtrace_02г
,__inference_block4_conv3_layer_call_fn_55210Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zУtrace_0

Фtrace_02ю
G__inference_block4_conv3_layer_call_and_return_conditional_losses_55221Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0
/:-2block4_conv3/kernel
 :2block4_conv3/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ё
Ъtrace_02в
+__inference_block4_pool_layer_call_fn_55226Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЪtrace_0

Ыtrace_02э
F__inference_block4_pool_layer_call_and_return_conditional_losses_55231Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЫtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ђ
бtrace_02г
,__inference_block5_conv1_layer_call_fn_55240Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zбtrace_0

вtrace_02ю
G__inference_block5_conv1_layer_call_and_return_conditional_losses_55251Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zвtrace_0
/:-2block5_conv1/kernel
 :2block5_conv1/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
0
Ђ0
Ѓ1"
trackable_list_wrapper
0
Ђ0
Ѓ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
ђ
иtrace_02г
,__inference_block5_conv2_layer_call_fn_55260Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0

йtrace_02ю
G__inference_block5_conv2_layer_call_and_return_conditional_losses_55271Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zйtrace_0
/:-2block5_conv2/kernel
 :2block5_conv2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
0
Ћ0
Ќ1"
trackable_list_wrapper
0
Ћ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
ђ
пtrace_02г
,__inference_block5_conv3_layer_call_fn_55280Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0

рtrace_02ю
G__inference_block5_conv3_layer_call_and_return_conditional_losses_55291Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zрtrace_0
/:-2block5_conv3/kernel
 :2block5_conv3/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Ў	variables
Џtrainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
ё
цtrace_02в
+__inference_block5_pool_layer_call_fn_55296Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zцtrace_0

чtrace_02э
F__inference_block5_pool_layer_call_and_return_conditional_losses_55301Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zчtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
№
эtrace_02б
*__inference_flatten_14_layer_call_fn_55306Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zэtrace_0

юtrace_02ь
E__inference_flatten_14_layer_call_and_return_conditional_losses_55312Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zюtrace_0
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
яnon_trainable_variables
№layers
ёmetrics
 ђlayer_regularization_losses
ѓlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
ю
єtrace_02Я
(__inference_dense_42_layer_call_fn_55321Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0

ѕtrace_02ъ
C__inference_dense_42_layer_call_and_return_conditional_losses_55332Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zѕtrace_0
": 	@d2dense_42/kernel
:d2dense_42/bias
0
Ш0
Щ1"
trackable_list_wrapper
0
Ш0
Щ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
ю
ћtrace_02Я
(__inference_dense_43_layer_call_fn_55341Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0

ќtrace_02ъ
C__inference_dense_43_layer_call_and_return_conditional_losses_55352Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zќtrace_0
!:d22dense_43/kernel
:22dense_43/bias
0
а0
б1"
trackable_list_wrapper
0
а0
б1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
(__inference_dense_44_layer_call_fn_55361Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
C__inference_dense_44_layer_call_and_return_conditional_losses_55371Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
!:22dense_44/kernel
:2dense_44/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
ѓ
trace_02д
-__inference_activation_13_layer_call_fn_55376Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02я
H__inference_activation_13_layer_call_and_return_conditional_losses_55381Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
К
'0
(1
02
13
?4
@5
H6
I7
W8
X9
`10
a11
i12
j13
x14
y15
16
17
18
19"
trackable_list_wrapper
Ю
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
-__inference_sequential_22_layer_call_fn_53880input_15"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
-__inference_sequential_22_layer_call_fn_54676inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
-__inference_sequential_22_layer_call_fn_54745inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
-__inference_sequential_22_layer_call_fn_54350input_15"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_sequential_22_layer_call_and_return_conditional_losses_54868inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_sequential_22_layer_call_and_return_conditional_losses_54991inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_sequential_22_layer_call_and_return_conditional_losses_54441input_15"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_sequential_22_layer_call_and_return_conditional_losses_54532input_15"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
ЫBШ
#__inference_signature_wrapper_54607input_15"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block1_conv1_layer_call_fn_55000inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block1_conv1_layer_call_and_return_conditional_losses_55011inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block1_conv2_layer_call_fn_55020inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block1_conv2_layer_call_and_return_conditional_losses_55031inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_block1_pool_layer_call_fn_55036inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_block1_pool_layer_call_and_return_conditional_losses_55041inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block2_conv1_layer_call_fn_55050inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block2_conv1_layer_call_and_return_conditional_losses_55061inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block2_conv2_layer_call_fn_55070inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block2_conv2_layer_call_and_return_conditional_losses_55081inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_block2_pool_layer_call_fn_55086inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_block2_pool_layer_call_and_return_conditional_losses_55091inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block3_conv1_layer_call_fn_55100inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block3_conv1_layer_call_and_return_conditional_losses_55111inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block3_conv2_layer_call_fn_55120inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block3_conv2_layer_call_and_return_conditional_losses_55131inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block3_conv3_layer_call_fn_55140inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block3_conv3_layer_call_and_return_conditional_losses_55151inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_block3_pool_layer_call_fn_55156inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_block3_pool_layer_call_and_return_conditional_losses_55161inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block4_conv1_layer_call_fn_55170inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block4_conv1_layer_call_and_return_conditional_losses_55181inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block4_conv2_layer_call_fn_55190inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block4_conv2_layer_call_and_return_conditional_losses_55201inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block4_conv3_layer_call_fn_55210inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block4_conv3_layer_call_and_return_conditional_losses_55221inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_block4_pool_layer_call_fn_55226inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_block4_pool_layer_call_and_return_conditional_losses_55231inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block5_conv1_layer_call_fn_55240inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block5_conv1_layer_call_and_return_conditional_losses_55251inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block5_conv2_layer_call_fn_55260inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block5_conv2_layer_call_and_return_conditional_losses_55271inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_block5_conv3_layer_call_fn_55280inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_block5_conv3_layer_call_and_return_conditional_losses_55291inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_block5_pool_layer_call_fn_55296inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_block5_pool_layer_call_and_return_conditional_losses_55301inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
*__inference_flatten_14_layer_call_fn_55306inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_flatten_14_layer_call_and_return_conditional_losses_55312inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_dense_42_layer_call_fn_55321inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_dense_42_layer_call_and_return_conditional_losses_55332inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_dense_43_layer_call_fn_55341inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_dense_43_layer_call_and_return_conditional_losses_55352inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мBй
(__inference_dense_44_layer_call_fn_55361inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
C__inference_dense_44_layer_call_and_return_conditional_losses_55371inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сBо
-__inference_activation_13_layer_call_fn_55376inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
H__inference_activation_13_layer_call_and_return_conditional_losses_55381inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
::82 SGD/block5_conv1/kernel/momentum
+:)2SGD/block5_conv1/bias/momentum
::82 SGD/block5_conv2/kernel/momentum
+:)2SGD/block5_conv2/bias/momentum
::82 SGD/block5_conv3/kernel/momentum
+:)2SGD/block5_conv3/bias/momentum
-:+	@d2SGD/dense_42/kernel/momentum
&:$d2SGD/dense_42/bias/momentum
,:*d22SGD/dense_43/kernel/momentum
&:$22SGD/dense_43/bias/momentum
,:*22SGD/dense_44/kernel/momentum
&:$2SGD/dense_44/bias/momentumг
 __inference__wrapped_model_53454Ў0'(01?@HIWX`aijxyЂЃЋЌРСШЩаб;Ђ8
1Ђ.
,)
input_15џџџџџџџџџ
Њ "=Њ:
8
activation_13'$
activation_13џџџџџџџџџЋ
H__inference_activation_13_layer_call_and_return_conditional_losses_55381_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
-__inference_activation_13_layer_call_fn_55376T/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџТ
G__inference_block1_conv1_layer_call_and_return_conditional_losses_55011w'(9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ@
 
,__inference_block1_conv1_layer_call_fn_55000l'(9Ђ6
/Ђ,
*'
inputsџџџџџџџџџ
Њ "+(
unknownџџџџџџџџџ@Т
G__inference_block1_conv2_layer_call_and_return_conditional_losses_55031w019Ђ6
/Ђ,
*'
inputsџџџџџџџџџ@
Њ "6Ђ3
,)
tensor_0џџџџџџџџџ@
 
,__inference_block1_conv2_layer_call_fn_55020l019Ђ6
/Ђ,
*'
inputsџџџџџџџџџ@
Њ "+(
unknownџџџџџџџџџ@№
F__inference_block1_pool_layer_call_and_return_conditional_losses_55041ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
+__inference_block1_pool_layer_call_fn_55036RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџП
G__inference_block2_conv1_layer_call_and_return_conditional_losses_55061t?@7Ђ4
-Ђ*
(%
inputsџџџџџџџџџKK@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџKK
 
,__inference_block2_conv1_layer_call_fn_55050i?@7Ђ4
-Ђ*
(%
inputsџџџџџџџџџKK@
Њ "*'
unknownџџџџџџџџџKKР
G__inference_block2_conv2_layer_call_and_return_conditional_losses_55081uHI8Ђ5
.Ђ+
)&
inputsџџџџџџџџџKK
Њ "5Ђ2
+(
tensor_0џџџџџџџџџKK
 
,__inference_block2_conv2_layer_call_fn_55070jHI8Ђ5
.Ђ+
)&
inputsџџџџџџџџџKK
Њ "*'
unknownџџџџџџџџџKK№
F__inference_block2_pool_layer_call_and_return_conditional_losses_55091ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
+__inference_block2_pool_layer_call_fn_55086RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџР
G__inference_block3_conv1_layer_call_and_return_conditional_losses_55111uWX8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ%%
 
,__inference_block3_conv1_layer_call_fn_55100jWX8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "*'
unknownџџџџџџџџџ%%Р
G__inference_block3_conv2_layer_call_and_return_conditional_losses_55131u`a8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ%%
 
,__inference_block3_conv2_layer_call_fn_55120j`a8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "*'
unknownџџџџџџџџџ%%Р
G__inference_block3_conv3_layer_call_and_return_conditional_losses_55151uij8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ%%
 
,__inference_block3_conv3_layer_call_fn_55140jij8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ%%
Њ "*'
unknownџџџџџџџџџ%%№
F__inference_block3_pool_layer_call_and_return_conditional_losses_55161ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
+__inference_block3_pool_layer_call_fn_55156RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџР
G__inference_block4_conv1_layer_call_and_return_conditional_losses_55181uxy8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 
,__inference_block4_conv1_layer_call_fn_55170jxy8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "*'
unknownџџџџџџџџџТ
G__inference_block4_conv2_layer_call_and_return_conditional_losses_55201w8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 
,__inference_block4_conv2_layer_call_fn_55190l8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "*'
unknownџџџџџџџџџТ
G__inference_block4_conv3_layer_call_and_return_conditional_losses_55221w8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 
,__inference_block4_conv3_layer_call_fn_55210l8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "*'
unknownџџџџџџџџџ№
F__inference_block4_pool_layer_call_and_return_conditional_losses_55231ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
+__inference_block4_pool_layer_call_fn_55226RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџТ
G__inference_block5_conv1_layer_call_and_return_conditional_losses_55251w8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ		
 
,__inference_block5_conv1_layer_call_fn_55240l8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "*'
unknownџџџџџџџџџ		Т
G__inference_block5_conv2_layer_call_and_return_conditional_losses_55271wЂЃ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ		
 
,__inference_block5_conv2_layer_call_fn_55260lЂЃ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "*'
unknownџџџџџџџџџ		Т
G__inference_block5_conv3_layer_call_and_return_conditional_losses_55291wЋЌ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ		
 
,__inference_block5_conv3_layer_call_fn_55280lЋЌ8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ		
Њ "*'
unknownџџџџџџџџџ		№
F__inference_block5_pool_layer_call_and_return_conditional_losses_55301ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ъ
+__inference_block5_pool_layer_call_fn_55296RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ­
C__inference_dense_42_layer_call_and_return_conditional_losses_55332fРС0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ ",Ђ)
"
tensor_0џџџџџџџџџd
 
(__inference_dense_42_layer_call_fn_55321[РС0Ђ-
&Ђ#
!
inputsџџџџџџџџџ@
Њ "!
unknownџџџџџџџџџdЌ
C__inference_dense_43_layer_call_and_return_conditional_losses_55352eШЩ/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 
(__inference_dense_43_layer_call_fn_55341ZШЩ/Ђ,
%Ђ"
 
inputsџџџџџџџџџd
Њ "!
unknownџџџџџџџџџ2Ќ
C__inference_dense_44_layer_call_and_return_conditional_losses_55371eаб/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
(__inference_dense_44_layer_call_fn_55361Zаб/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "!
unknownџџџџџџџџџВ
E__inference_flatten_14_layer_call_and_return_conditional_losses_55312i8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ@
 
*__inference_flatten_14_layer_call_fn_55306^8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџ@ђ
H__inference_sequential_22_layer_call_and_return_conditional_losses_54441Ѕ0'(01?@HIWX`aijxyЂЃЋЌРСШЩабCЂ@
9Ђ6
,)
input_15џџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 ђ
H__inference_sequential_22_layer_call_and_return_conditional_losses_54532Ѕ0'(01?@HIWX`aijxyЂЃЋЌРСШЩабCЂ@
9Ђ6
,)
input_15џџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 №
H__inference_sequential_22_layer_call_and_return_conditional_losses_54868Ѓ0'(01?@HIWX`aijxyЂЃЋЌРСШЩабAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 №
H__inference_sequential_22_layer_call_and_return_conditional_losses_54991Ѓ0'(01?@HIWX`aijxyЂЃЋЌРСШЩабAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ь
-__inference_sequential_22_layer_call_fn_538800'(01?@HIWX`aijxyЂЃЋЌРСШЩабCЂ@
9Ђ6
,)
input_15џџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЬ
-__inference_sequential_22_layer_call_fn_543500'(01?@HIWX`aijxyЂЃЋЌРСШЩабCЂ@
9Ђ6
,)
input_15џџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЪ
-__inference_sequential_22_layer_call_fn_546760'(01?@HIWX`aijxyЂЃЋЌРСШЩабAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЪ
-__inference_sequential_22_layer_call_fn_547450'(01?@HIWX`aijxyЂЃЋЌРСШЩабAЂ>
7Ђ4
*'
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџт
#__inference_signature_wrapper_54607К0'(01?@HIWX`aijxyЂЃЋЌРСШЩабGЂD
Ђ 
=Њ:
8
input_15,)
input_15џџџџџџџџџ"=Њ:
8
activation_13'$
activation_13џџџџџџџџџ