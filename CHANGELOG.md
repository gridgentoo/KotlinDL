# 0.3.0 (28/09/2021) ONNX for inference and transfer learning and ONNX Model Hub
Features:
* Implemented the [copying for the Functional and Sequential models](https://github.com/JetBrains/KotlinDL/issues/40)
* Implemented the [copying for the TensorFlow-based Inference Model](https://github.com/JetBrains/KotlinDL/issues/178)
* Implemented the [experimental ONNX integration](https://github.com/JetBrains/KotlinDL/issues/184):
   * added new 'onnx' module
   * added the ONNXModel implementing the common InferenceModel interface
   * ONNX model could be used as a preprocessing stage for the TensorFlow model
   * prepared ONNX model without top layers could be fine-tuned via training of top layers implemented with TensorFlow-based layers
* Added SSD and YOLOv4 object detection models to the Model Hub
* Added Fan2D106 face alignment model to the Model Hub
* Added SSDObjectDetectionModel with the easy API for object detection, including pre- and post-processing
* Added a few models in ONNX format to the Model Hub
   * ResNet18
   * ResNet34
   * ResNet50
   * ResNet101 
   * ResNet152 
   * ResNet18V2
   * ResNet34V2
   * ResNet50V2 
   * ResNet101V2 
   * ResNet152V2
   * EfficientNetV4
* Added [new TensorFlow-based models to the Model Zoo (or Model Hub)](https://github.com/JetBrains/KotlinDL/issues/101): 
   * NasNetMobile
   * NasNetLarge
   * DenseNet121
   * DenseNet169
   * DenseNet201
   * Xception 
* Added [ResNet18 and ResNet34 TensorFlow-based models to ModelZoo](https://github.com/JetBrains/KotlinDL/issues/175)
* Added [L1 and L2 regularization to the layers](https://github.com/JetBrains/KotlinDL/issues/83)
* Added [Identity initializer](https://github.com/JetBrains/KotlinDL/issues/50)
* Added [Orthogonal initializer](https://github.com/JetBrains/KotlinDL/issues/51)
* Added [Softmax activation layer](https://github.com/JetBrains/KotlinDL/issues/52)
* Added [LeakyReLU activation layer](https://github.com/JetBrains/KotlinDL/issues/53)
* Added [PReLU activation layer](https://github.com/JetBrains/KotlinDL/issues/54)
* Added [ELU activation layer](https://github.com/JetBrains/KotlinDL/issues/55)
* Added [ThresholdedReLU activation layer](https://github.com/JetBrains/KotlinDL/issues/56)
* Added [Conv1D layer](https://github.com/JetBrains/KotlinDL/issues/59)
* Added [MaxPooling1D layer](https://github.com/JetBrains/KotlinDL/issues/60)
* Added [AveragePooling1D layer](https://github.com/JetBrains/KotlinDL/issues/61)
* Added [GlobalMaxPooling1D layer](https://github.com/JetBrains/KotlinDL/issues/62)
* Added [GlobalAveragePooling1D layer](https://github.com/JetBrains/KotlinDL/issues/63)
* Added [Conv3D layer](https://github.com/JetBrains/KotlinDL/issues/79)
* Added [MaxPooling3D layer](https://github.com/JetBrains/KotlinDL/issues/80)
* Added [AveragePooling3D layer](https://github.com/JetBrains/KotlinDL/issues/81)
* Added [GlobalAveragePooling3D layer](https://github.com/JetBrains/KotlinDL/issues/82)
* Added [GlobalMaxPool2D layer](https://github.com/JetBrains/KotlinDL/issues/116)
* Added [GlobalMaxPool3D layer](https://github.com/JetBrains/KotlinDL/issues/117)
* Added [Cropping1D and Cropping3D layers](https://github.com/JetBrains/KotlinDL/issues/121)
* Added [Permute layer](https://github.com/JetBrains/KotlinDL/issues/142)
* Added [RepeatVector layer](https://github.com/JetBrains/KotlinDL/issues/123)
* Added [UpSampling1D, UpSampling2D and UpSampling3D layers](https://github.com/JetBrains/KotlinDL/issues/143)
* Added [Gelu activation function](https://github.com/JetBrains/KotlinDL/issues/165)
* Added [HardShrink activation function](https://github.com/JetBrains/KotlinDL/issues/166)
* Added [LiSHT activation function](https://github.com/JetBrains/KotlinDL/issues/167)
* Added [Mish activation function](https://github.com/JetBrains/KotlinDL/issues/168)
* Added [Snake activation function](https://github.com/JetBrains/KotlinDL/issues/169)
* Added [Tanh shrink activation function](https://github.com/JetBrains/KotlinDL/issues/172)
* Added [TimeStopping callback](https://github.com/JetBrains/KotlinDL/issues/174)

Bugs:
* Added [missed loaders for the ReLU and ELU activation layers](https://github.com/JetBrains/KotlinDL/issues/78)
* Add [model export for a few layers (Concatenate, DepthwiseConv2D, SeparableConv2D) missed in ModelSaver.kt](https://github.com/JetBrains/KotlinDL/issues/87)
* Fixed the use-case when [ModelSaver fails on saving Input with 2d and 3d tensors](https://github.com/JetBrains/KotlinDL/issues/160)
* Fixed a [StackOverflowError in objectDetectionSSD.kt example](https://github.com/JetBrains/KotlinDL/issues/230)
* Fixed a problem with the [confusing logs during weights loading from .h5 file](https://github.com/JetBrains/KotlinDL/issues/155)
* Fixed the Windows separator usage instead of [File.separator in the Save and Load preprocessors](https://github.com/JetBrains/KotlinDL/issues/226)
* Fixed the [incorrect temporary folder for the cat-vs-dogs dataset](https://github.com/JetBrains/KotlinDL/issues/161)
* Fixed the problem when [ImageConverter and Loading do not close opened streams](https://github.com/JetBrains/KotlinDL/issues/228)
* Fixed the [Image Preprocessing DSL issues](https://github.com/JetBrains/KotlinDL/issues/208)
* Reduced time complexity of FloatArray::argmax to linear

API breaking changes:
* Renamed ModelZoo to the ModelHub
* Changed the ImagePreprocessing DSL: loading and saving are moved to the separate level of DSL
* Changed the [TrainableModel::summary API to return ModelSummary](https://github.com/JetBrains/KotlinDL/issues/135)

Infrastructure:
* Loaded the weights and JSON configurations of the newly added ModelHub models to S3 storage
* [Moved ImageDSL and Dataset API to the separate 'dataset' module](https://github.com/JetBrains/KotlinDL/issues/180)
* Added a new 'visualization' module with the basic support for painting on Swing and in Jupyter Notebook with lets-plot
* Transformed the project from the single-module project to the multi-module project

Docs:
* Created [website with API Documentation from KDoc via Dokka](https://github.com/JetBrains/KotlinDL/issues/71)
* Added support for the multiple version API Documentation from KDoc via Dokka 
* Updated all existing tutorials
* Updated the Readme.md
* Updated the existing KDocs
* Added a new tutorial about ONNX models usage
* Added a new tutorial about Transfer Learning with ONNX ResNet no-top model and TensorFlow

Examples:
* Added an [example](https://github.com/JetBrains/KotlinDL/blob/master/examples/src/main/kotlin/examples/onnx/objectdetection/ssd/objectDetectionSSD.kt) of SSDObjectDetectionModel usage and visualisation of the detected objects on the Swing panel
* Added an [example](https://github.com/JetBrains/KotlinDL/blob/master/examples/src/main/kotlin/examples/onnx/faces/predictionFan2D106.kt) of Fan2D106 (face alignment) model and landmarks visualisation on the Swing panel
* Added an [example](https://github.com/JetBrains/KotlinDL/blob/master/examples/src/main/kotlin/examples/onnx/cv/custom/additionalTrainingWithTensorFlow.kt) where the prepared ONNX model without top layers is fine-tuned via training of top layers implemented with TensorFlow-based layers
* Added a lot of examples for the newly added to the ModelHub models (ONNX-based and TensorFlow-based)
* Added an [example](https://github.com/JetBrains/KotlinDL/blob/master/examples/src/main/kotlin/examples/visualization/SoundNetFSDDVisualization.kt) with the model SoundNet trained on Free Spoken Digits Dataset to classify the audio 
* Updated ['visualization'](https://github.com/JetBrains/KotlinDL/tree/master/examples/src/main/kotlin/examples/visualization) examples with the new Batik and lets-plot support

Tests:
* Added tests for ModelLoading
* Added tests for InputLayer
* Added tests for all newly added layers

# 0.2.0 (17/05/2021) Functional API, Model Zoo and Image Preprocessing DSL
Features:
* Added [support for Functional API](https://github.com/JetBrains/KotlinDL/issues/23)
* Added [BatchNorm layer](https://github.com/JetBrains/KotlinDL/issues/34) for inference
* Added [GlobalAveragePooling2D layer](https://github.com/JetBrains/KotlinDL/issues/38)
* Added [7 Merge layers](https://github.com/JetBrains/KotlinDL/issues/37) 
(Add, Average, Concatenate, Maximum, Minimum, Multiply, Subtract)
* Added [Activation layer](https://github.com/JetBrains/KotlinDL/issues/35)
* Added ReLU layer
* Added DepthwiseConv2D layer
* Added SeparableConv2D layer
* Added Reshape layer
* Added Cropping2D layer
* Added ZeroPadding2D layer
* Added NoGradients interface to indicate layers whose weights cannot be updated during training due to the lack of gradients in TensorFlow
* Added Model Zoo with the following models:
    * VGG'16
    * VGG'19
    * ResNet50
    * ResNet101
    * ResNet152
    * ResNet50V2
    * ResNet101V2
    * ResNet152V2
    * MobileNet
    * MobileNetV2
* Added ImageNet related preprocessing for each of the ModelZoo supported models: available in ModelZoo object and as a `sharpen` stage in the image preprocessing DSL
* Added model descriptions for models from ModelZoo (excluding MobileNet) designed with the Functional API in _org.jetbrains.kotlinx.dl.api.core.model_ package
* Added two implementations of the Dataset class: OnFlyImageDataset and OnHeapDataset
* Added topological sort for layers as nodes in the DAG model representation
* Added `shuffle` function support for both Dataset implementations
* Added the Kotlin-idiomatic DSL for image preprocessing with the following operations:
    * Load
    * Crop
    * Resize
    * Rotate
    * Rescale
    * Sharpen
    * Save
* Implemented label generation on the fly from the names of image folders
* Implemented `summary` method for the Functional API
* Added embedded datasets support (MNIST, FashionMNIST, Cifar'10, Cats & Dogs)

Bugs:
* Fixed a bug with BGR and RGB preprocessing in examples
* Fixed missed `useBias` field in convolutional layers

Internals improvements:
* Refactored: both Sequential and Functional models now inherit the GraphTrainableModel class
* Completed the Klaxon migration from 5.0.1 to 5.5
* Removed useless labels and data transformations before sending to  `Tensor.create(...)`

Infrastructure:
* Loaded the weights and JSON configurations of ModelZoo models to S3 storage
* Added a TeamCity build for the examples
* Loaded embedded datasets to S3 storage
* Removed dependencies from `jcenter`
* Moved an artifact to the Maven Central Repository
* Changed the groupId and artifactId
* Reduced the size of the downloaded `api` artifact from 65 MB to 650 KB by cleaning up resources and migrating the model and datasets to the S3 storage

Docs:
* Updated all the tutorials
* Updated the Readme.md

Examples:
* Renamed all the example's packages
* Regrouped examples between packages
* Added examples for training all ResNet models from scratch on the Cats & Dogs dataset
* Tuned hyper-parameters in all examples with VGG-like architecture to achieve convergence
* Added examples for the Image Preprocessing DSL
* Added examples for all available ModelZoo models, including additional training on the subset of the Cats & Dogs dataset
* Added ToyResNet examples (trained on the FashionMnist dataset)

Tests:
* Converted all examples to integration tests by refactoring `main` functions

# 0.1.1 (01/02/2021)
Features:
* Added [support batch processing for predictSoftly in #28](https://github.com/JetBrains/KotlinDL/issues/28)
* Converted [getXXX functions to properties in public API (layers and model classes)](https://github.com/JetBrains/KotlinDL/issues/29)
* Removed [a flag `verbose` from public API](https://github.com/JetBrains/KotlinDL/issues/20)
* Made logging based on a configuration.

Bugs:
* Fixed #25 [Suspiciously slow calls to `Sequential.predictSoftly`](https://github.com/JetBrains/KotlinDL/issues/25)
* Fixed #24 [reshapeFunction not initialized after model load](https://github.com/JetBrains/KotlinDL/issues/24)
* Fixed #22 [Exception in combination with Log4J](https://github.com/JetBrains/KotlinDL/issues/22)
* Added permission 'executable' making gradle wraper script runnable on Linux/Mac OS X systems

Internals improvements:
* Removed unnecessary copying of FloatArray to off-heap memory in `internalPredict` method

Docs:
* Added "Release check list" for release managers
* Updated Readme.md with new chapters about logging and fatJar issue
* Minor updates in "Tutorials"

# 0.1.0 (09/12/2020)
Features:
* Added @JvmStatic for companion methods

Examples:
* Provided support for VGG'16 and VGG'19 weights and models in examples
* Added links for loading all models and weights used in examples
* Moved direct file paths to property file
* Removed duplicated resources
* Transfer Learning examples are merged and improved
* Added description for all examples

Docs:
* Minor updates in "Transfer Learning Tutorial"

# 0.0.14 (20/11/2020)
Features:
* ReductionType support for loss function: SUM and SUM_OVER_BATCH_SIZE
* Added new loss functions: LogCosh, BinaryCrossEntropy, SquaredHinge

Tests:
* Added tests for all loss functions (in Eager Mode)
* Added tests for new scenarios of Keras weights loading

Docs:
* "Transfer Learning Tutorial" added
* Code of conduct and ChangeLog documents added
