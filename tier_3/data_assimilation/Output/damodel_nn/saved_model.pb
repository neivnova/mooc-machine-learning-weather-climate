��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8��
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
�
Adam/v/conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv1d_7/bias
y
(Adam/v/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_7/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv1d_7/bias
y
(Adam/m/conv1d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_7/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv1d_7/kernel
�
*Adam/v/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_7/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv1d_7/kernel
�
*Adam/m/conv1d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_7/kernel*"
_output_shapes
:*
dtype0
�
Adam/v/conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv1d_6/bias
y
(Adam/v/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_6/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv1d_6/bias
y
(Adam/m/conv1d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_6/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv1d_6/kernel
�
*Adam/v/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_6/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv1d_6/kernel
�
*Adam/m/conv1d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_6/kernel*"
_output_shapes
:*
dtype0
�
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_2/beta
�
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes
:*
dtype0
�
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_2/beta
�
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_2/gamma
�
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_2/gamma
�
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:*
dtype0
~
conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
:*
dtype0
r
conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_6/bias
k
!conv1d_6/bias/Read/ReadVariableOpReadVariableOpconv1d_6/bias*
_output_shapes
:*
dtype0
~
conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_6/kernel
w
#conv1d_6/kernel/Read/ReadVariableOpReadVariableOpconv1d_6/kernel*"
_output_shapes
:*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
�
serving_default_input_3Placeholder*+
_output_shapes
:���������(*
dtype0* 
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betaconv1d_6/kernelconv1d_6/biasconv1d_7/kernelconv1d_7/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_83626

NoOpNoOp
�1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�1
value�1B�1 B�1
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
axis
	gamma
beta
moving_mean
moving_variance*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
<
0
1
2
3
&4
'5
/6
07*
.
0
1
&2
'3
/4
05*
	
20* 
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
8trace_0
9trace_1
:trace_2
;trace_3* 
6
<trace_0
=trace_1
>trace_2
?trace_3* 
* 
�
@
_variables
A_iterations
B_learning_rate
C_index_dict
D
_momentums
E_velocities
F_update_step_xla*

Gserving_default* 
* 
* 
* 
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Mtrace_0* 

Ntrace_0* 
 
0
1
2
3*

0
1*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ttrace_0
Utrace_1* 

Vtrace_0
Wtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
_Y
VARIABLE_VALUEconv1d_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

/0
01*

/0
01*
	
20* 
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
_Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ftrace_0* 

0
1*
'
0
1
2
3
4*

g0*
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
b
A0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
h0
j1
l2
n3
p4
r5*
.
i0
k1
m2
o3
q4
s5*
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
0
1*
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
	
20* 
* 
* 
* 
* 
8
t	variables
u	keras_api
	vtotal
	wcount*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_6/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_6/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv1d_6/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv1d_6/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_7/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv1d_7/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv1d_7/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv1d_7/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

v0
w1*

t	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#conv1d_6/kernel/Read/ReadVariableOp!conv1d_6/bias/Read/ReadVariableOp#conv1d_7/kernel/Read/ReadVariableOp!conv1d_7/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_2/beta/Read/ReadVariableOp5Adam/v/batch_normalization_2/beta/Read/ReadVariableOp*Adam/m/conv1d_6/kernel/Read/ReadVariableOp*Adam/v/conv1d_6/kernel/Read/ReadVariableOp(Adam/m/conv1d_6/bias/Read/ReadVariableOp(Adam/v/conv1d_6/bias/Read/ReadVariableOp*Adam/m/conv1d_7/kernel/Read/ReadVariableOp*Adam/v/conv1d_7/kernel/Read/ReadVariableOp(Adam/m/conv1d_7/bias/Read/ReadVariableOp(Adam/v/conv1d_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_84056
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv1d_6/kernelconv1d_6/biasconv1d_7/kernelconv1d_7/bias	iterationlearning_rate"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/conv1d_6/kernelAdam/v/conv1d_6/kernelAdam/m/conv1d_6/biasAdam/v/conv1d_6/biasAdam/m/conv1d_7/kernelAdam/v/conv1d_7/kernelAdam/m/conv1d_7/biasAdam/v/conv1d_7/biastotalcount*$
Tin
2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_84138��
�
P
4__inference_periodic1d_padding_2_layer_call_fn_83805

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
B__inference_model_2_layer_call_and_return_conditional_losses_83501

inputs)
batch_normalization_2_83477:)
batch_normalization_2_83479:)
batch_normalization_2_83481:)
batch_normalization_2_83483:$
conv1d_6_83486:
conv1d_6_83488:$
conv1d_7_83491:
conv1d_7_83493:
identity��-batch_normalization_2/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
$periodic1d_padding_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall-periodic1d_padding_2/PartitionedCall:output:0batch_normalization_2_83477batch_normalization_2_83479batch_normalization_2_83481batch_normalization_2_83483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83310�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv1d_6_83486conv1d_6_83488*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0conv1d_7_83491conv1d_7_83493*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_83491*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
IdentityIdentity)conv1d_7/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
'__inference_model_2_layer_call_fn_83651

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_83405s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
(__inference_conv1d_6_layer_call_fn_83908

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������.: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������.
 
_user_specified_nameinputs
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������(�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
#__inference_signature_wrapper_83626
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_83239s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83865

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
B__inference_model_2_layer_call_and_return_conditional_losses_83569
input_3)
batch_normalization_2_83545:)
batch_normalization_2_83547:)
batch_normalization_2_83549:)
batch_normalization_2_83551:$
conv1d_6_83554:
conv1d_6_83556:$
conv1d_7_83559:
conv1d_7_83561:
identity��-batch_normalization_2/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
$periodic1d_padding_2/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall-periodic1d_padding_2/PartitionedCall:output:0batch_normalization_2_83545batch_normalization_2_83547batch_normalization_2_83549batch_normalization_2_83551*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83263�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv1d_6_83554conv1d_6_83556*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0conv1d_7_83559conv1d_7_83561*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_83559*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
IdentityIdentity)conv1d_7/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�g
�	
B__inference_model_2_layer_call_and_return_conditional_losses_83800

inputsK
=batch_normalization_2_assignmovingavg_readvariableop_resource:M
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:E
7batch_normalization_2_batchnorm_readvariableop_resource:J
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_6_biasadd_readvariableop_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:
identity��%batch_normalization_2/AssignMovingAvg�4batch_normalization_2/AssignMovingAvg/ReadVariableOp�'batch_normalization_2/AssignMovingAvg_1�6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_2/batchnorm/ReadVariableOp�2batch_normalization_2/batchnorm/mul/ReadVariableOp�conv1d_6/BiasAdd/ReadVariableOp�+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_7/BiasAdd/ReadVariableOp�+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp}
(periodic1d_padding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    
*periodic1d_padding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            
*periodic1d_padding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"periodic1d_padding_2/strided_sliceStridedSliceinputs1periodic1d_padding_2/strided_slice/stack:output:03periodic1d_padding_2/strided_slice/stack_1:output:03periodic1d_padding_2/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask
*periodic1d_padding_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
,periodic1d_padding_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
,periodic1d_padding_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
$periodic1d_padding_2/strided_slice_1StridedSliceinputs3periodic1d_padding_2/strided_slice_1/stack:output:05periodic1d_padding_2/strided_slice_1/stack_1:output:05periodic1d_padding_2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
 periodic1d_padding_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
periodic1d_padding_2/concatConcatV2+periodic1d_padding_2/strided_slice:output:0inputs-periodic1d_padding_2/strided_slice_1:output:0)periodic1d_padding_2/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������.�
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
"batch_normalization_2/moments/meanMean$periodic1d_padding_2/concat:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*"
_output_shapes
:�
/batch_normalization_2/moments/SquaredDifferenceSquaredDifference$periodic1d_padding_2/concat:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������.�
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(�
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes
:�
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_2/batchnorm/mul_1Mul$periodic1d_padding_2/concat:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������.�
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������.i
conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_6/Conv1D/ExpandDims
ExpandDims)batch_normalization_2/batchnorm/add_1:z:0'conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������.�
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_6/Conv1D/ExpandDims_1
ExpandDims3conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_6/Conv1DConv2D#conv1d_6/Conv1D/ExpandDims:output:0%conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
conv1d_6/Conv1D/SqueezeSqueezeconv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_6/BiasAddBiasAdd conv1d_6/Conv1D/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(f
conv1d_6/TanhTanhconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������(i
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_7/Conv1D/ExpandDims
ExpandDimsconv1d_6/Tanh:y:0'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������(�
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: l
IdentityIdentityconv1d_7/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�i
�
!__inference__traced_restore_84138
file_prefix:
,assignvariableop_batch_normalization_2_gamma:;
-assignvariableop_1_batch_normalization_2_beta:B
4assignvariableop_2_batch_normalization_2_moving_mean:F
8assignvariableop_3_batch_normalization_2_moving_variance:8
"assignvariableop_4_conv1d_6_kernel:.
 assignvariableop_5_conv1d_6_bias:8
"assignvariableop_6_conv1d_7_kernel:.
 assignvariableop_7_conv1d_7_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: D
6assignvariableop_10_adam_m_batch_normalization_2_gamma:D
6assignvariableop_11_adam_v_batch_normalization_2_gamma:C
5assignvariableop_12_adam_m_batch_normalization_2_beta:C
5assignvariableop_13_adam_v_batch_normalization_2_beta:@
*assignvariableop_14_adam_m_conv1d_6_kernel:@
*assignvariableop_15_adam_v_conv1d_6_kernel:6
(assignvariableop_16_adam_m_conv1d_6_bias:6
(assignvariableop_17_adam_v_conv1d_6_bias:@
*assignvariableop_18_adam_m_conv1d_7_kernel:@
*assignvariableop_19_adam_v_conv1d_7_kernel:6
(assignvariableop_20_adam_m_conv1d_7_bias:6
(assignvariableop_21_adam_v_conv1d_7_bias:#
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_2_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_2_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_2_moving_meanIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_2_moving_varianceIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv1d_6_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv1d_6_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_7_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_7_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_adam_m_batch_normalization_2_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp6assignvariableop_11_adam_v_batch_normalization_2_gammaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp5assignvariableop_12_adam_m_batch_normalization_2_betaIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp5assignvariableop_13_adam_v_batch_normalization_2_betaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_m_conv1d_6_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_v_conv1d_6_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv1d_6_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv1d_6_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv1d_7_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv1d_7_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_conv1d_7_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_conv1d_7_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�O
�
 __inference__wrapped_model_83239
input_3M
?model_2_batch_normalization_2_batchnorm_readvariableop_resource:Q
Cmodel_2_batch_normalization_2_batchnorm_mul_readvariableop_resource:O
Amodel_2_batch_normalization_2_batchnorm_readvariableop_1_resource:O
Amodel_2_batch_normalization_2_batchnorm_readvariableop_2_resource:R
<model_2_conv1d_6_conv1d_expanddims_1_readvariableop_resource:>
0model_2_conv1d_6_biasadd_readvariableop_resource:R
<model_2_conv1d_7_conv1d_expanddims_1_readvariableop_resource:>
0model_2_conv1d_7_biasadd_readvariableop_resource:
identity��6model_2/batch_normalization_2/batchnorm/ReadVariableOp�8model_2/batch_normalization_2/batchnorm/ReadVariableOp_1�8model_2/batch_normalization_2/batchnorm/ReadVariableOp_2�:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp�'model_2/conv1d_6/BiasAdd/ReadVariableOp�3model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp�'model_2/conv1d_7/BiasAdd/ReadVariableOp�3model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp�
0model_2/periodic1d_padding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    �
2model_2/periodic1d_padding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            �
2model_2/periodic1d_padding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
*model_2/periodic1d_padding_2/strided_sliceStridedSliceinput_39model_2/periodic1d_padding_2/strided_slice/stack:output:0;model_2/periodic1d_padding_2/strided_slice/stack_1:output:0;model_2/periodic1d_padding_2/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask�
2model_2/periodic1d_padding_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
4model_2/periodic1d_padding_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
4model_2/periodic1d_padding_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
,model_2/periodic1d_padding_2/strided_slice_1StridedSliceinput_3;model_2/periodic1d_padding_2/strided_slice_1/stack:output:0=model_2/periodic1d_padding_2/strided_slice_1/stack_1:output:0=model_2/periodic1d_padding_2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
(model_2/periodic1d_padding_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
#model_2/periodic1d_padding_2/concatConcatV23model_2/periodic1d_padding_2/strided_slice:output:0input_35model_2/periodic1d_padding_2/strided_slice_1:output:01model_2/periodic1d_padding_2/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������.�
6model_2/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp?model_2_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0r
-model_2/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_2/batch_normalization_2/batchnorm/addAddV2>model_2/batch_normalization_2/batchnorm/ReadVariableOp:value:06model_2/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
-model_2/batch_normalization_2/batchnorm/RsqrtRsqrt/model_2/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:�
:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_2_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
+model_2/batch_normalization_2/batchnorm/mulMul1model_2/batch_normalization_2/batchnorm/Rsqrt:y:0Bmodel_2/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
-model_2/batch_normalization_2/batchnorm/mul_1Mul,model_2/periodic1d_padding_2/concat:output:0/model_2/batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������.�
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_2_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
-model_2/batch_normalization_2/batchnorm/mul_2Mul@model_2/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0/model_2/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:�
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_2_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
+model_2/batch_normalization_2/batchnorm/subSub@model_2/batch_normalization_2/batchnorm/ReadVariableOp_2:value:01model_2/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
-model_2/batch_normalization_2/batchnorm/add_1AddV21model_2/batch_normalization_2/batchnorm/mul_1:z:0/model_2/batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������.q
&model_2/conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"model_2/conv1d_6/Conv1D/ExpandDims
ExpandDims1model_2/batch_normalization_2/batchnorm/add_1:z:0/model_2/conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������.�
3model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp<model_2_conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0j
(model_2/conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
$model_2/conv1d_6/Conv1D/ExpandDims_1
ExpandDims;model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:01model_2/conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
model_2/conv1d_6/Conv1DConv2D+model_2/conv1d_6/Conv1D/ExpandDims:output:0-model_2/conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
model_2/conv1d_6/Conv1D/SqueezeSqueeze model_2/conv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
'model_2/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv1d_6/BiasAddBiasAdd(model_2/conv1d_6/Conv1D/Squeeze:output:0/model_2/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(v
model_2/conv1d_6/TanhTanh!model_2/conv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������(q
&model_2/conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"model_2/conv1d_7/Conv1D/ExpandDims
ExpandDimsmodel_2/conv1d_6/Tanh:y:0/model_2/conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������(�
3model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp<model_2_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0j
(model_2/conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
$model_2/conv1d_7/Conv1D/ExpandDims_1
ExpandDims;model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:01model_2/conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
model_2/conv1d_7/Conv1DConv2D+model_2/conv1d_7/Conv1D/ExpandDims:output:0-model_2/conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
model_2/conv1d_7/Conv1D/SqueezeSqueeze model_2/conv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
'model_2/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/conv1d_7/BiasAddBiasAdd(model_2/conv1d_7/Conv1D/Squeeze:output:0/model_2/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(t
IdentityIdentity!model_2/conv1d_7/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp7^model_2/batch_normalization_2/batchnorm/ReadVariableOp9^model_2/batch_normalization_2/batchnorm/ReadVariableOp_19^model_2/batch_normalization_2/batchnorm/ReadVariableOp_2;^model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp(^model_2/conv1d_6/BiasAdd/ReadVariableOp4^model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp(^model_2/conv1d_7/BiasAdd/ReadVariableOp4^model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2p
6model_2/batch_normalization_2/batchnorm/ReadVariableOp6model_2/batch_normalization_2/batchnorm/ReadVariableOp2t
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_18model_2/batch_normalization_2/batchnorm/ReadVariableOp_12t
8model_2/batch_normalization_2/batchnorm/ReadVariableOp_28model_2/batch_normalization_2/batchnorm/ReadVariableOp_22x
:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp:model_2/batch_normalization_2/batchnorm/mul/ReadVariableOp2R
'model_2/conv1d_6/BiasAdd/ReadVariableOp'model_2/conv1d_6/BiasAdd/ReadVariableOp2j
3model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp3model_2/conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2R
'model_2/conv1d_7/BiasAdd/ReadVariableOp'model_2/conv1d_7/BiasAdd/ReadVariableOp2j
3model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp3model_2/conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�8
�
__inference__traced_save_84056
file_prefix:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_conv1d_6_kernel_read_readvariableop,
(savev2_conv1d_6_bias_read_readvariableop.
*savev2_conv1d_7_kernel_read_readvariableop,
(savev2_conv1d_7_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopA
=savev2_adam_m_batch_normalization_2_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_2_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_2_beta_read_readvariableop5
1savev2_adam_m_conv1d_6_kernel_read_readvariableop5
1savev2_adam_v_conv1d_6_kernel_read_readvariableop3
/savev2_adam_m_conv1d_6_bias_read_readvariableop3
/savev2_adam_v_conv1d_6_bias_read_readvariableop5
1savev2_adam_m_conv1d_7_kernel_read_readvariableop5
1savev2_adam_v_conv1d_7_kernel_read_readvariableop3
/savev2_adam_m_conv1d_7_bias_read_readvariableop3
/savev2_adam_v_conv1d_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_conv1d_6_kernel_read_readvariableop(savev2_conv1d_6_bias_read_readvariableop*savev2_conv1d_7_kernel_read_readvariableop(savev2_conv1d_7_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop=savev2_adam_m_batch_normalization_2_gamma_read_readvariableop=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop<savev2_adam_m_batch_normalization_2_beta_read_readvariableop<savev2_adam_v_batch_normalization_2_beta_read_readvariableop1savev2_adam_m_conv1d_6_kernel_read_readvariableop1savev2_adam_v_conv1d_6_kernel_read_readvariableop/savev2_adam_m_conv1d_6_bias_read_readvariableop/savev2_adam_v_conv1d_6_bias_read_readvariableop1savev2_adam_m_conv1d_7_kernel_read_readvariableop1savev2_adam_v_conv1d_7_kernel_read_readvariableop/savev2_adam_m_conv1d_7_bias_read_readvariableop/savev2_adam_v_conv1d_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::: : ::::::::::::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
'__inference_model_2_layer_call_fn_83672

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_83501s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�%
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83899

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�%
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83310

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
k
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            l
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           l
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2strided_slice:output:0inputsstrided_slice_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:���������.[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:���������."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_83961P
:conv1d_7_kernel_regularizer_l2loss_readvariableop_resource:
identity��1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv1d_7_kernel_regularizer_l2loss_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������.�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:���������([
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������.
 
_user_specified_nameinputs
�M
�
B__inference_model_2_layer_call_and_return_conditional_losses_83729

inputsE
7batch_normalization_2_batchnorm_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:G
9batch_normalization_2_batchnorm_readvariableop_1_resource:G
9batch_normalization_2_batchnorm_readvariableop_2_resource:J
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_6_biasadd_readvariableop_resource:J
4conv1d_7_conv1d_expanddims_1_readvariableop_resource:6
(conv1d_7_biasadd_readvariableop_resource:
identity��.batch_normalization_2/batchnorm/ReadVariableOp�0batch_normalization_2/batchnorm/ReadVariableOp_1�0batch_normalization_2/batchnorm/ReadVariableOp_2�2batch_normalization_2/batchnorm/mul/ReadVariableOp�conv1d_6/BiasAdd/ReadVariableOp�+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_7/BiasAdd/ReadVariableOp�+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp}
(periodic1d_padding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    
*periodic1d_padding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            
*periodic1d_padding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"periodic1d_padding_2/strided_sliceStridedSliceinputs1periodic1d_padding_2/strided_slice/stack:output:03periodic1d_padding_2/strided_slice/stack_1:output:03periodic1d_padding_2/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask
*periodic1d_padding_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
,periodic1d_padding_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
,periodic1d_padding_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
$periodic1d_padding_2/strided_slice_1StridedSliceinputs3periodic1d_padding_2/strided_slice_1/stack:output:05periodic1d_padding_2/strided_slice_1/stack_1:output:05periodic1d_padding_2/strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
 periodic1d_padding_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
periodic1d_padding_2/concatConcatV2+periodic1d_padding_2/strided_slice:output:0inputs-periodic1d_padding_2/strided_slice_1:output:0)periodic1d_padding_2/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������.�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_2/batchnorm/mul_1Mul$periodic1d_padding_2/concat:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������.�
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������.i
conv1d_6/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_6/Conv1D/ExpandDims
ExpandDims)batch_normalization_2/batchnorm/add_1:z:0'conv1d_6/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������.�
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_6/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_6/Conv1D/ExpandDims_1
ExpandDims3conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_6/Conv1DConv2D#conv1d_6/Conv1D/ExpandDims:output:0%conv1d_6/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
conv1d_6/Conv1D/SqueezeSqueezeconv1d_6/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_6/BiasAddBiasAdd conv1d_6/Conv1D/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(f
conv1d_6/TanhTanhconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������(i
conv1d_7/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_7/Conv1D/ExpandDims
ExpandDimsconv1d_6/Tanh:y:0'conv1d_7/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������(�
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0b
 conv1d_7/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_7/Conv1D/ExpandDims_1
ExpandDims3conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
conv1d_7/Conv1DConv2D#conv1d_7/Conv1D/ExpandDims:output:0%conv1d_7/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
conv1d_7/Conv1D/SqueezeSqueezeconv1d_7/Conv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

����������
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv1d_7/BiasAddBiasAdd conv1d_7/Conv1D/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: l
IdentityIdentityconv1d_7/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_6/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_7/Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
'__inference_model_2_layer_call_fn_83541
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_83501s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83924

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������.�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:���������([
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������.
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_2_layer_call_fn_83845

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83310|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83952

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������(�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������(*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������(*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������(�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
B__inference_model_2_layer_call_and_return_conditional_losses_83405

inputs)
batch_normalization_2_83344:)
batch_normalization_2_83346:)
batch_normalization_2_83348:)
batch_normalization_2_83350:$
conv1d_6_83370:
conv1d_6_83372:$
conv1d_7_83395:
conv1d_7_83397:
identity��-batch_normalization_2/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
$periodic1d_padding_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall-periodic1d_padding_2/PartitionedCall:output:0batch_normalization_2_83344batch_normalization_2_83346batch_normalization_2_83348batch_normalization_2_83350*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83263�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv1d_6_83370conv1d_6_83372*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0conv1d_7_83395conv1d_7_83397*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_83395*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
IdentityIdentity)conv1d_7/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
B__inference_model_2_layer_call_and_return_conditional_losses_83597
input_3)
batch_normalization_2_83573:)
batch_normalization_2_83575:)
batch_normalization_2_83577:)
batch_normalization_2_83579:$
conv1d_6_83582:
conv1d_6_83584:$
conv1d_7_83587:
conv1d_7_83589:
identity��-batch_normalization_2/StatefulPartitionedCall� conv1d_6/StatefulPartitionedCall� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp�
$periodic1d_padding_2/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83342�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall-periodic1d_padding_2/PartitionedCall:output:0batch_normalization_2_83573batch_normalization_2_83575batch_normalization_2_83577batch_normalization_2_83579*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83310�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv1d_6_83582conv1d_6_83584*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83369�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0conv1d_7_83587conv1d_7_83589*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394�
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv1d_7_83587*"
_output_shapes
:*
dtype0�
"conv1d_7/kernel/Regularizer/L2LossL2Loss9conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�ŧ7�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0+conv1d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: |
IdentityIdentity)conv1d_7/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(�
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall!^conv1d_6/StatefulPartitionedCall!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv1d_7/kernel/Regularizer/L2Loss/ReadVariableOp:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�	
�
'__inference_model_2_layer_call_fn_83424
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_83405s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������(
!
_user_specified_name	input_3
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83263

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_2_layer_call_fn_83832

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83263|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
(__inference_conv1d_7_layer_call_fn_83933

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83394s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������(: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
k
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83819

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskj
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            l
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           l
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2strided_slice:output:0inputsstrided_slice_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:���������.[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:���������."
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������(:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_34
serving_default_input_3:0���������(@
conv1d_74
StatefulPartitionedCall:0���������(tensorflow/serving/predict:Ô
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
X
0
1
2
3
&4
'5
/6
07"
trackable_list_wrapper
J
0
1
&2
'3
/4
05"
trackable_list_wrapper
'
20"
trackable_list_wrapper
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
8trace_0
9trace_1
:trace_2
;trace_32�
'__inference_model_2_layer_call_fn_83424
'__inference_model_2_layer_call_fn_83651
'__inference_model_2_layer_call_fn_83672
'__inference_model_2_layer_call_fn_83541�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z8trace_0z9trace_1z:trace_2z;trace_3
�
<trace_0
=trace_1
>trace_2
?trace_32�
B__inference_model_2_layer_call_and_return_conditional_losses_83729
B__inference_model_2_layer_call_and_return_conditional_losses_83800
B__inference_model_2_layer_call_and_return_conditional_losses_83569
B__inference_model_2_layer_call_and_return_conditional_losses_83597�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z<trace_0z=trace_1z>trace_2z?trace_3
�B�
 __inference__wrapped_model_83239input_3"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
@
_variables
A_iterations
B_learning_rate
C_index_dict
D
_momentums
E_velocities
F_update_step_xla"
experimentalOptimizer
,
Gserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Mtrace_02�
4__inference_periodic1d_padding_2_layer_call_fn_83805�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
�
Ntrace_02�
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83819�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_0
Utrace_12�
5__inference_batch_normalization_2_layer_call_fn_83832
5__inference_batch_normalization_2_layer_call_fn_83845�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0zUtrace_1
�
Vtrace_0
Wtrace_12�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83865
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83899�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0zWtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
(__inference_conv1d_6_layer_call_fn_83908�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
�
^trace_02�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83924�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0
%:#2conv1d_6/kernel
:2conv1d_6/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
'
20"
trackable_list_wrapper
�
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
dtrace_02�
(__inference_conv1d_7_layer_call_fn_83933�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zdtrace_0
�
etrace_02�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83952�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0
%:#2conv1d_7/kernel
:2conv1d_7/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
ftrace_02�
__inference_loss_fn_0_83961�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zftrace_0
.
0
1"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_2_layer_call_fn_83424input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_2_layer_call_fn_83651inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_2_layer_call_fn_83672inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_2_layer_call_fn_83541input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_83729inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_83800inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_83569input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_2_layer_call_and_return_conditional_losses_83597input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
~
A0
h1
i2
j3
k4
l5
m6
n7
o8
p9
q10
r11
s12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
h0
j1
l2
n3
p4
r5"
trackable_list_wrapper
J
i0
k1
m2
o3
q4
s5"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_83626input_3"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
4__inference_periodic1d_padding_2_layer_call_fn_83805inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83819inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_batch_normalization_2_layer_call_fn_83832inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_2_layer_call_fn_83845inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83865inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83899inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_conv1d_6_layer_call_fn_83908inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83924inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv1d_7_layer_call_fn_83933inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83952inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_83961"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
t	variables
u	keras_api
	vtotal
	wcount"
_tf_keras_metric
.:,2"Adam/m/batch_normalization_2/gamma
.:,2"Adam/v/batch_normalization_2/gamma
-:+2!Adam/m/batch_normalization_2/beta
-:+2!Adam/v/batch_normalization_2/beta
*:(2Adam/m/conv1d_6/kernel
*:(2Adam/v/conv1d_6/kernel
 :2Adam/m/conv1d_6/bias
 :2Adam/v/conv1d_6/bias
*:(2Adam/m/conv1d_7/kernel
*:(2Adam/v/conv1d_7/kernel
 :2Adam/m/conv1d_7/bias
 :2Adam/v/conv1d_7/bias
.
v0
w1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count�
 __inference__wrapped_model_83239y&'/04�1
*�'
%�"
input_3���������(
� "7�4
2
conv1d_7&�#
conv1d_7���������(�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83865�@�=
6�3
-�*
inputs������������������
p 
� "9�6
/�,
tensor_0������������������
� �
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_83899�@�=
6�3
-�*
inputs������������������
p
� "9�6
/�,
tensor_0������������������
� �
5__inference_batch_normalization_2_layer_call_fn_83832x@�=
6�3
-�*
inputs������������������
p 
� ".�+
unknown�������������������
5__inference_batch_normalization_2_layer_call_fn_83845x@�=
6�3
-�*
inputs������������������
p
� ".�+
unknown�������������������
C__inference_conv1d_6_layer_call_and_return_conditional_losses_83924k&'3�0
)�&
$�!
inputs���������.
� "0�-
&�#
tensor_0���������(
� �
(__inference_conv1d_6_layer_call_fn_83908`&'3�0
)�&
$�!
inputs���������.
� "%�"
unknown���������(�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_83952k/03�0
)�&
$�!
inputs���������(
� "0�-
&�#
tensor_0���������(
� �
(__inference_conv1d_7_layer_call_fn_83933`/03�0
)�&
$�!
inputs���������(
� "%�"
unknown���������(C
__inference_loss_fn_0_83961$/�

� 
� "�
unknown �
B__inference_model_2_layer_call_and_return_conditional_losses_83569z&'/0<�9
2�/
%�"
input_3���������(
p 

 
� "0�-
&�#
tensor_0���������(
� �
B__inference_model_2_layer_call_and_return_conditional_losses_83597z&'/0<�9
2�/
%�"
input_3���������(
p

 
� "0�-
&�#
tensor_0���������(
� �
B__inference_model_2_layer_call_and_return_conditional_losses_83729y&'/0;�8
1�.
$�!
inputs���������(
p 

 
� "0�-
&�#
tensor_0���������(
� �
B__inference_model_2_layer_call_and_return_conditional_losses_83800y&'/0;�8
1�.
$�!
inputs���������(
p

 
� "0�-
&�#
tensor_0���������(
� �
'__inference_model_2_layer_call_fn_83424o&'/0<�9
2�/
%�"
input_3���������(
p 

 
� "%�"
unknown���������(�
'__inference_model_2_layer_call_fn_83541o&'/0<�9
2�/
%�"
input_3���������(
p

 
� "%�"
unknown���������(�
'__inference_model_2_layer_call_fn_83651n&'/0;�8
1�.
$�!
inputs���������(
p 

 
� "%�"
unknown���������(�
'__inference_model_2_layer_call_fn_83672n&'/0;�8
1�.
$�!
inputs���������(
p

 
� "%�"
unknown���������(�
O__inference_periodic1d_padding_2_layer_call_and_return_conditional_losses_83819g3�0
)�&
$�!
inputs���������(
� "0�-
&�#
tensor_0���������.
� �
4__inference_periodic1d_padding_2_layer_call_fn_83805\3�0
)�&
$�!
inputs���������(
� "%�"
unknown���������.�
#__inference_signature_wrapper_83626�&'/0?�<
� 
5�2
0
input_3%�"
input_3���������("7�4
2
conv1d_7&�#
conv1d_7���������(