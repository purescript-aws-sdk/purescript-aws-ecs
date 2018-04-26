## Module AWS.ECS.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException NoArguments
```

<p>You do not have authorization to perform the requested action.</p>

##### Instances
``` purescript
Newtype AccessDeniedException _
Generic AccessDeniedException _
Show AccessDeniedException
Decode AccessDeniedException
Encode AccessDeniedException
```

#### `AgentUpdateStatus`

``` purescript
newtype AgentUpdateStatus
  = AgentUpdateStatus String
```

##### Instances
``` purescript
Newtype AgentUpdateStatus _
Generic AgentUpdateStatus _
Show AgentUpdateStatus
Decode AgentUpdateStatus
Encode AgentUpdateStatus
```

#### `AssignPublicIp`

``` purescript
newtype AssignPublicIp
  = AssignPublicIp String
```

##### Instances
``` purescript
Newtype AssignPublicIp _
Generic AssignPublicIp _
Show AssignPublicIp
Decode AssignPublicIp
Encode AssignPublicIp
```

#### `Attachment`

``` purescript
newtype Attachment
  = Attachment { id :: Maybe (String), "type" :: Maybe (String), status :: Maybe (String), details :: Maybe (AttachmentDetails) }
```

<p>An object representing a container instance or task attachment.</p>

##### Instances
``` purescript
Newtype Attachment _
Generic Attachment _
Show Attachment
Decode Attachment
Encode Attachment
```

#### `newAttachment`

``` purescript
newAttachment :: Attachment
```

Constructs Attachment from required parameters

#### `newAttachment'`

``` purescript
newAttachment' :: ({ id :: Maybe (String), "type" :: Maybe (String), status :: Maybe (String), details :: Maybe (AttachmentDetails) } -> { id :: Maybe (String), "type" :: Maybe (String), status :: Maybe (String), details :: Maybe (AttachmentDetails) }) -> Attachment
```

Constructs Attachment's fields from required parameters

#### `AttachmentDetails`

``` purescript
newtype AttachmentDetails
  = AttachmentDetails (Array KeyValuePair)
```

##### Instances
``` purescript
Newtype AttachmentDetails _
Generic AttachmentDetails _
Show AttachmentDetails
Decode AttachmentDetails
Encode AttachmentDetails
```

#### `AttachmentStateChange`

``` purescript
newtype AttachmentStateChange
  = AttachmentStateChange { attachmentArn :: String, status :: String }
```

<p>An object representing a change in state for a task attachment.</p>

##### Instances
``` purescript
Newtype AttachmentStateChange _
Generic AttachmentStateChange _
Show AttachmentStateChange
Decode AttachmentStateChange
Encode AttachmentStateChange
```

#### `newAttachmentStateChange`

``` purescript
newAttachmentStateChange :: String -> String -> AttachmentStateChange
```

Constructs AttachmentStateChange from required parameters

#### `newAttachmentStateChange'`

``` purescript
newAttachmentStateChange' :: String -> String -> ({ attachmentArn :: String, status :: String } -> { attachmentArn :: String, status :: String }) -> AttachmentStateChange
```

Constructs AttachmentStateChange's fields from required parameters

#### `AttachmentStateChanges`

``` purescript
newtype AttachmentStateChanges
  = AttachmentStateChanges (Array AttachmentStateChange)
```

##### Instances
``` purescript
Newtype AttachmentStateChanges _
Generic AttachmentStateChanges _
Show AttachmentStateChanges
Decode AttachmentStateChanges
Encode AttachmentStateChanges
```

#### `Attachments`

``` purescript
newtype Attachments
  = Attachments (Array Attachment)
```

##### Instances
``` purescript
Newtype Attachments _
Generic Attachments _
Show Attachments
Decode Attachments
Encode Attachments
```

#### `Attribute`

``` purescript
newtype Attribute
  = Attribute { name :: String, value :: Maybe (String), targetType :: Maybe (TargetType), targetId :: Maybe (String) }
```

<p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype Attribute _
Generic Attribute _
Show Attribute
Decode Attribute
Encode Attribute
```

#### `newAttribute`

``` purescript
newAttribute :: String -> Attribute
```

Constructs Attribute from required parameters

#### `newAttribute'`

``` purescript
newAttribute' :: String -> ({ name :: String, value :: Maybe (String), targetType :: Maybe (TargetType), targetId :: Maybe (String) } -> { name :: String, value :: Maybe (String), targetType :: Maybe (TargetType), targetId :: Maybe (String) }) -> Attribute
```

Constructs Attribute's fields from required parameters

#### `AttributeLimitExceededException`

``` purescript
newtype AttributeLimitExceededException
  = AttributeLimitExceededException NoArguments
```

<p>You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with <a>ListAttributes</a>. You can remove existing attributes on a resource with <a>DeleteAttributes</a>.</p>

##### Instances
``` purescript
Newtype AttributeLimitExceededException _
Generic AttributeLimitExceededException _
Show AttributeLimitExceededException
Decode AttributeLimitExceededException
Encode AttributeLimitExceededException
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (Array Attribute)
```

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `AwsVpcConfiguration`

``` purescript
newtype AwsVpcConfiguration
  = AwsVpcConfiguration { subnets :: StringList, securityGroups :: Maybe (StringList), assignPublicIp :: Maybe (AssignPublicIp) }
```

<p>An object representing the networking details for a task or service.</p>

##### Instances
``` purescript
Newtype AwsVpcConfiguration _
Generic AwsVpcConfiguration _
Show AwsVpcConfiguration
Decode AwsVpcConfiguration
Encode AwsVpcConfiguration
```

#### `newAwsVpcConfiguration`

``` purescript
newAwsVpcConfiguration :: StringList -> AwsVpcConfiguration
```

Constructs AwsVpcConfiguration from required parameters

#### `newAwsVpcConfiguration'`

``` purescript
newAwsVpcConfiguration' :: StringList -> ({ subnets :: StringList, securityGroups :: Maybe (StringList), assignPublicIp :: Maybe (AssignPublicIp) } -> { subnets :: StringList, securityGroups :: Maybe (StringList), assignPublicIp :: Maybe (AssignPublicIp) }) -> AwsVpcConfiguration
```

Constructs AwsVpcConfiguration's fields from required parameters

#### `BlockedException`

``` purescript
newtype BlockedException
  = BlockedException NoArguments
```

<p>Your AWS account has been blocked. <a href="http://aws.amazon.com/contact-us/">Contact AWS Support</a> for more information.</p>

##### Instances
``` purescript
Newtype BlockedException _
Generic BlockedException _
Show BlockedException
Decode BlockedException
Encode BlockedException
```

#### `BoxedBoolean`

``` purescript
newtype BoxedBoolean
  = BoxedBoolean Boolean
```

##### Instances
``` purescript
Newtype BoxedBoolean _
Generic BoxedBoolean _
Show BoxedBoolean
Decode BoxedBoolean
Encode BoxedBoolean
```

#### `BoxedInteger`

``` purescript
newtype BoxedInteger
  = BoxedInteger Int
```

##### Instances
``` purescript
Newtype BoxedInteger _
Generic BoxedInteger _
Show BoxedInteger
Decode BoxedInteger
Encode BoxedInteger
```

#### `ClientException`

``` purescript
newtype ClientException
  = ClientException { message :: Maybe (String) }
```

<p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid.</p>

##### Instances
``` purescript
Newtype ClientException _
Generic ClientException _
Show ClientException
Decode ClientException
Encode ClientException
```

#### `newClientException`

``` purescript
newClientException :: ClientException
```

Constructs ClientException from required parameters

#### `newClientException'`

``` purescript
newClientException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ClientException
```

Constructs ClientException's fields from required parameters

#### `Cluster`

``` purescript
newtype Cluster
  = Cluster { clusterArn :: Maybe (String), clusterName :: Maybe (String), status :: Maybe (String), registeredContainerInstancesCount :: Maybe (Int), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), activeServicesCount :: Maybe (Int), statistics :: Maybe (Statistics) }
```

<p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>

##### Instances
``` purescript
Newtype Cluster _
Generic Cluster _
Show Cluster
Decode Cluster
Encode Cluster
```

#### `newCluster`

``` purescript
newCluster :: Cluster
```

Constructs Cluster from required parameters

#### `newCluster'`

``` purescript
newCluster' :: ({ clusterArn :: Maybe (String), clusterName :: Maybe (String), status :: Maybe (String), registeredContainerInstancesCount :: Maybe (Int), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), activeServicesCount :: Maybe (Int), statistics :: Maybe (Statistics) } -> { clusterArn :: Maybe (String), clusterName :: Maybe (String), status :: Maybe (String), registeredContainerInstancesCount :: Maybe (Int), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), activeServicesCount :: Maybe (Int), statistics :: Maybe (Statistics) }) -> Cluster
```

Constructs Cluster's fields from required parameters

#### `ClusterContainsContainerInstancesException`

``` purescript
newtype ClusterContainsContainerInstancesException
  = ClusterContainsContainerInstancesException NoArguments
```

<p>You cannot delete a cluster that has registered container instances. You must first deregister the container instances before you can delete the cluster. For more information, see <a>DeregisterContainerInstance</a>.</p>

##### Instances
``` purescript
Newtype ClusterContainsContainerInstancesException _
Generic ClusterContainsContainerInstancesException _
Show ClusterContainsContainerInstancesException
Decode ClusterContainsContainerInstancesException
Encode ClusterContainsContainerInstancesException
```

#### `ClusterContainsServicesException`

``` purescript
newtype ClusterContainsServicesException
  = ClusterContainsServicesException NoArguments
```

<p>You cannot delete a cluster that contains services. You must first update the service to reduce its desired task count to 0 and then delete the service. For more information, see <a>UpdateService</a> and <a>DeleteService</a>.</p>

##### Instances
``` purescript
Newtype ClusterContainsServicesException _
Generic ClusterContainsServicesException _
Show ClusterContainsServicesException
Decode ClusterContainsServicesException
Encode ClusterContainsServicesException
```

#### `ClusterContainsTasksException`

``` purescript
newtype ClusterContainsTasksException
  = ClusterContainsTasksException NoArguments
```

<p>You cannot delete a cluster that has active tasks.</p>

##### Instances
``` purescript
Newtype ClusterContainsTasksException _
Generic ClusterContainsTasksException _
Show ClusterContainsTasksException
Decode ClusterContainsTasksException
Encode ClusterContainsTasksException
```

#### `ClusterField`

``` purescript
newtype ClusterField
  = ClusterField String
```

##### Instances
``` purescript
Newtype ClusterField _
Generic ClusterField _
Show ClusterField
Decode ClusterField
Encode ClusterField
```

#### `ClusterFieldList`

``` purescript
newtype ClusterFieldList
  = ClusterFieldList (Array ClusterField)
```

##### Instances
``` purescript
Newtype ClusterFieldList _
Generic ClusterFieldList _
Show ClusterFieldList
Decode ClusterFieldList
Encode ClusterFieldList
```

#### `ClusterNotFoundException`

``` purescript
newtype ClusterNotFoundException
  = ClusterNotFoundException NoArguments
```

<p>The specified cluster could not be found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are region-specific.</p>

##### Instances
``` purescript
Newtype ClusterNotFoundException _
Generic ClusterNotFoundException _
Show ClusterNotFoundException
Decode ClusterNotFoundException
Encode ClusterNotFoundException
```

#### `Clusters`

``` purescript
newtype Clusters
  = Clusters (Array Cluster)
```

##### Instances
``` purescript
Newtype Clusters _
Generic Clusters _
Show Clusters
Decode Clusters
Encode Clusters
```

#### `Compatibility`

``` purescript
newtype Compatibility
  = Compatibility String
```

##### Instances
``` purescript
Newtype Compatibility _
Generic Compatibility _
Show Compatibility
Decode Compatibility
Encode Compatibility
```

#### `CompatibilityList`

``` purescript
newtype CompatibilityList
  = CompatibilityList (Array Compatibility)
```

##### Instances
``` purescript
Newtype CompatibilityList _
Generic CompatibilityList _
Show CompatibilityList
Decode CompatibilityList
Encode CompatibilityList
```

#### `Connectivity`

``` purescript
newtype Connectivity
  = Connectivity String
```

##### Instances
``` purescript
Newtype Connectivity _
Generic Connectivity _
Show Connectivity
Decode Connectivity
Encode Connectivity
```

#### `Container`

``` purescript
newtype Container
  = Container { containerArn :: Maybe (String), taskArn :: Maybe (String), name :: Maybe (String), lastStatus :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings), networkInterfaces :: Maybe (NetworkInterfaces), healthStatus :: Maybe (HealthStatus) }
```

<p>A Docker container that is part of a task.</p>

##### Instances
``` purescript
Newtype Container _
Generic Container _
Show Container
Decode Container
Encode Container
```

#### `newContainer`

``` purescript
newContainer :: Container
```

Constructs Container from required parameters

#### `newContainer'`

``` purescript
newContainer' :: ({ containerArn :: Maybe (String), taskArn :: Maybe (String), name :: Maybe (String), lastStatus :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings), networkInterfaces :: Maybe (NetworkInterfaces), healthStatus :: Maybe (HealthStatus) } -> { containerArn :: Maybe (String), taskArn :: Maybe (String), name :: Maybe (String), lastStatus :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings), networkInterfaces :: Maybe (NetworkInterfaces), healthStatus :: Maybe (HealthStatus) }) -> Container
```

Constructs Container's fields from required parameters

#### `ContainerDefinition`

``` purescript
newtype ContainerDefinition
  = ContainerDefinition { name :: Maybe (String), image :: Maybe (String), cpu :: Maybe (Int), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger), links :: Maybe (StringList), portMappings :: Maybe (PortMappingList), essential :: Maybe (BoxedBoolean), entryPoint :: Maybe (StringList), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), mountPoints :: Maybe (MountPointList), volumesFrom :: Maybe (VolumeFromList), linuxParameters :: Maybe (LinuxParameters), hostname :: Maybe (String), user :: Maybe (String), workingDirectory :: Maybe (String), disableNetworking :: Maybe (BoxedBoolean), privileged :: Maybe (BoxedBoolean), readonlyRootFilesystem :: Maybe (BoxedBoolean), dnsServers :: Maybe (StringList), dnsSearchDomains :: Maybe (StringList), extraHosts :: Maybe (HostEntryList), dockerSecurityOptions :: Maybe (StringList), dockerLabels :: Maybe (DockerLabelsMap), ulimits :: Maybe (UlimitList), logConfiguration :: Maybe (LogConfiguration), healthCheck :: Maybe (HealthCheck) }
```

<p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>

##### Instances
``` purescript
Newtype ContainerDefinition _
Generic ContainerDefinition _
Show ContainerDefinition
Decode ContainerDefinition
Encode ContainerDefinition
```

#### `newContainerDefinition`

``` purescript
newContainerDefinition :: ContainerDefinition
```

Constructs ContainerDefinition from required parameters

#### `newContainerDefinition'`

``` purescript
newContainerDefinition' :: ({ name :: Maybe (String), image :: Maybe (String), cpu :: Maybe (Int), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger), links :: Maybe (StringList), portMappings :: Maybe (PortMappingList), essential :: Maybe (BoxedBoolean), entryPoint :: Maybe (StringList), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), mountPoints :: Maybe (MountPointList), volumesFrom :: Maybe (VolumeFromList), linuxParameters :: Maybe (LinuxParameters), hostname :: Maybe (String), user :: Maybe (String), workingDirectory :: Maybe (String), disableNetworking :: Maybe (BoxedBoolean), privileged :: Maybe (BoxedBoolean), readonlyRootFilesystem :: Maybe (BoxedBoolean), dnsServers :: Maybe (StringList), dnsSearchDomains :: Maybe (StringList), extraHosts :: Maybe (HostEntryList), dockerSecurityOptions :: Maybe (StringList), dockerLabels :: Maybe (DockerLabelsMap), ulimits :: Maybe (UlimitList), logConfiguration :: Maybe (LogConfiguration), healthCheck :: Maybe (HealthCheck) } -> { name :: Maybe (String), image :: Maybe (String), cpu :: Maybe (Int), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger), links :: Maybe (StringList), portMappings :: Maybe (PortMappingList), essential :: Maybe (BoxedBoolean), entryPoint :: Maybe (StringList), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), mountPoints :: Maybe (MountPointList), volumesFrom :: Maybe (VolumeFromList), linuxParameters :: Maybe (LinuxParameters), hostname :: Maybe (String), user :: Maybe (String), workingDirectory :: Maybe (String), disableNetworking :: Maybe (BoxedBoolean), privileged :: Maybe (BoxedBoolean), readonlyRootFilesystem :: Maybe (BoxedBoolean), dnsServers :: Maybe (StringList), dnsSearchDomains :: Maybe (StringList), extraHosts :: Maybe (HostEntryList), dockerSecurityOptions :: Maybe (StringList), dockerLabels :: Maybe (DockerLabelsMap), ulimits :: Maybe (UlimitList), logConfiguration :: Maybe (LogConfiguration), healthCheck :: Maybe (HealthCheck) }) -> ContainerDefinition
```

Constructs ContainerDefinition's fields from required parameters

#### `ContainerDefinitions`

``` purescript
newtype ContainerDefinitions
  = ContainerDefinitions (Array ContainerDefinition)
```

##### Instances
``` purescript
Newtype ContainerDefinitions _
Generic ContainerDefinitions _
Show ContainerDefinitions
Decode ContainerDefinitions
Encode ContainerDefinitions
```

#### `ContainerInstance`

``` purescript
newtype ContainerInstance
  = ContainerInstance { containerInstanceArn :: Maybe (String), ec2InstanceId :: Maybe (String), version :: Maybe (Number), versionInfo :: Maybe (VersionInfo), remainingResources :: Maybe (Resources), registeredResources :: Maybe (Resources), status :: Maybe (String), agentConnected :: Maybe (Boolean), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), agentUpdateStatus :: Maybe (AgentUpdateStatus), attributes :: Maybe (Attributes), registeredAt :: Maybe (Timestamp), attachments :: Maybe (Attachments) }
```

<p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>

##### Instances
``` purescript
Newtype ContainerInstance _
Generic ContainerInstance _
Show ContainerInstance
Decode ContainerInstance
Encode ContainerInstance
```

#### `newContainerInstance`

``` purescript
newContainerInstance :: ContainerInstance
```

Constructs ContainerInstance from required parameters

#### `newContainerInstance'`

``` purescript
newContainerInstance' :: ({ containerInstanceArn :: Maybe (String), ec2InstanceId :: Maybe (String), version :: Maybe (Number), versionInfo :: Maybe (VersionInfo), remainingResources :: Maybe (Resources), registeredResources :: Maybe (Resources), status :: Maybe (String), agentConnected :: Maybe (Boolean), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), agentUpdateStatus :: Maybe (AgentUpdateStatus), attributes :: Maybe (Attributes), registeredAt :: Maybe (Timestamp), attachments :: Maybe (Attachments) } -> { containerInstanceArn :: Maybe (String), ec2InstanceId :: Maybe (String), version :: Maybe (Number), versionInfo :: Maybe (VersionInfo), remainingResources :: Maybe (Resources), registeredResources :: Maybe (Resources), status :: Maybe (String), agentConnected :: Maybe (Boolean), runningTasksCount :: Maybe (Int), pendingTasksCount :: Maybe (Int), agentUpdateStatus :: Maybe (AgentUpdateStatus), attributes :: Maybe (Attributes), registeredAt :: Maybe (Timestamp), attachments :: Maybe (Attachments) }) -> ContainerInstance
```

Constructs ContainerInstance's fields from required parameters

#### `ContainerInstanceStatus`

``` purescript
newtype ContainerInstanceStatus
  = ContainerInstanceStatus String
```

##### Instances
``` purescript
Newtype ContainerInstanceStatus _
Generic ContainerInstanceStatus _
Show ContainerInstanceStatus
Decode ContainerInstanceStatus
Encode ContainerInstanceStatus
```

#### `ContainerInstances`

``` purescript
newtype ContainerInstances
  = ContainerInstances (Array ContainerInstance)
```

##### Instances
``` purescript
Newtype ContainerInstances _
Generic ContainerInstances _
Show ContainerInstances
Decode ContainerInstances
Encode ContainerInstances
```

#### `ContainerOverride`

``` purescript
newtype ContainerOverride
  = ContainerOverride { name :: Maybe (String), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), cpu :: Maybe (BoxedInteger), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger) }
```

<p>The overrides that should be sent to a container.</p>

##### Instances
``` purescript
Newtype ContainerOverride _
Generic ContainerOverride _
Show ContainerOverride
Decode ContainerOverride
Encode ContainerOverride
```

#### `newContainerOverride`

``` purescript
newContainerOverride :: ContainerOverride
```

Constructs ContainerOverride from required parameters

#### `newContainerOverride'`

``` purescript
newContainerOverride' :: ({ name :: Maybe (String), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), cpu :: Maybe (BoxedInteger), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger) } -> { name :: Maybe (String), command :: Maybe (StringList), environment :: Maybe (EnvironmentVariables), cpu :: Maybe (BoxedInteger), memory :: Maybe (BoxedInteger), memoryReservation :: Maybe (BoxedInteger) }) -> ContainerOverride
```

Constructs ContainerOverride's fields from required parameters

#### `ContainerOverrides`

``` purescript
newtype ContainerOverrides
  = ContainerOverrides (Array ContainerOverride)
```

##### Instances
``` purescript
Newtype ContainerOverrides _
Generic ContainerOverrides _
Show ContainerOverrides
Decode ContainerOverrides
Encode ContainerOverrides
```

#### `ContainerStateChange`

``` purescript
newtype ContainerStateChange
  = ContainerStateChange { containerName :: Maybe (String), exitCode :: Maybe (BoxedInteger), networkBindings :: Maybe (NetworkBindings), reason :: Maybe (String), status :: Maybe (String) }
```

<p>An object representing a change in state for a container.</p>

##### Instances
``` purescript
Newtype ContainerStateChange _
Generic ContainerStateChange _
Show ContainerStateChange
Decode ContainerStateChange
Encode ContainerStateChange
```

#### `newContainerStateChange`

``` purescript
newContainerStateChange :: ContainerStateChange
```

Constructs ContainerStateChange from required parameters

#### `newContainerStateChange'`

``` purescript
newContainerStateChange' :: ({ containerName :: Maybe (String), exitCode :: Maybe (BoxedInteger), networkBindings :: Maybe (NetworkBindings), reason :: Maybe (String), status :: Maybe (String) } -> { containerName :: Maybe (String), exitCode :: Maybe (BoxedInteger), networkBindings :: Maybe (NetworkBindings), reason :: Maybe (String), status :: Maybe (String) }) -> ContainerStateChange
```

Constructs ContainerStateChange's fields from required parameters

#### `ContainerStateChanges`

``` purescript
newtype ContainerStateChanges
  = ContainerStateChanges (Array ContainerStateChange)
```

##### Instances
``` purescript
Newtype ContainerStateChanges _
Generic ContainerStateChanges _
Show ContainerStateChanges
Decode ContainerStateChanges
Encode ContainerStateChanges
```

#### `Containers`

``` purescript
newtype Containers
  = Containers (Array Container)
```

##### Instances
``` purescript
Newtype Containers _
Generic Containers _
Show Containers
Decode Containers
Encode Containers
```

#### `CreateClusterRequest`

``` purescript
newtype CreateClusterRequest
  = CreateClusterRequest { clusterName :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateClusterRequest _
Generic CreateClusterRequest _
Show CreateClusterRequest
Decode CreateClusterRequest
Encode CreateClusterRequest
```

#### `newCreateClusterRequest`

``` purescript
newCreateClusterRequest :: CreateClusterRequest
```

Constructs CreateClusterRequest from required parameters

#### `newCreateClusterRequest'`

``` purescript
newCreateClusterRequest' :: ({ clusterName :: Maybe (String) } -> { clusterName :: Maybe (String) }) -> CreateClusterRequest
```

Constructs CreateClusterRequest's fields from required parameters

#### `CreateClusterResponse`

``` purescript
newtype CreateClusterResponse
  = CreateClusterResponse { cluster :: Maybe (Cluster) }
```

##### Instances
``` purescript
Newtype CreateClusterResponse _
Generic CreateClusterResponse _
Show CreateClusterResponse
Decode CreateClusterResponse
Encode CreateClusterResponse
```

#### `newCreateClusterResponse`

``` purescript
newCreateClusterResponse :: CreateClusterResponse
```

Constructs CreateClusterResponse from required parameters

#### `newCreateClusterResponse'`

``` purescript
newCreateClusterResponse' :: ({ cluster :: Maybe (Cluster) } -> { cluster :: Maybe (Cluster) }) -> CreateClusterResponse
```

Constructs CreateClusterResponse's fields from required parameters

#### `CreateServiceRequest`

``` purescript
newtype CreateServiceRequest
  = CreateServiceRequest { cluster :: Maybe (String), serviceName :: String, taskDefinition :: String, loadBalancers :: Maybe (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), role :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype CreateServiceRequest _
Generic CreateServiceRequest _
Show CreateServiceRequest
Decode CreateServiceRequest
Encode CreateServiceRequest
```

#### `newCreateServiceRequest`

``` purescript
newCreateServiceRequest :: BoxedInteger -> String -> String -> CreateServiceRequest
```

Constructs CreateServiceRequest from required parameters

#### `newCreateServiceRequest'`

``` purescript
newCreateServiceRequest' :: BoxedInteger -> String -> String -> ({ cluster :: Maybe (String), serviceName :: String, taskDefinition :: String, loadBalancers :: Maybe (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), role :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) } -> { cluster :: Maybe (String), serviceName :: String, taskDefinition :: String, loadBalancers :: Maybe (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), role :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }) -> CreateServiceRequest
```

Constructs CreateServiceRequest's fields from required parameters

#### `CreateServiceResponse`

``` purescript
newtype CreateServiceResponse
  = CreateServiceResponse { service :: Maybe (Service) }
```

##### Instances
``` purescript
Newtype CreateServiceResponse _
Generic CreateServiceResponse _
Show CreateServiceResponse
Decode CreateServiceResponse
Encode CreateServiceResponse
```

#### `newCreateServiceResponse`

``` purescript
newCreateServiceResponse :: CreateServiceResponse
```

Constructs CreateServiceResponse from required parameters

#### `newCreateServiceResponse'`

``` purescript
newCreateServiceResponse' :: ({ service :: Maybe (Service) } -> { service :: Maybe (Service) }) -> CreateServiceResponse
```

Constructs CreateServiceResponse's fields from required parameters

#### `DeleteAttributesRequest`

``` purescript
newtype DeleteAttributesRequest
  = DeleteAttributesRequest { cluster :: Maybe (String), attributes :: Attributes }
```

##### Instances
``` purescript
Newtype DeleteAttributesRequest _
Generic DeleteAttributesRequest _
Show DeleteAttributesRequest
Decode DeleteAttributesRequest
Encode DeleteAttributesRequest
```

#### `newDeleteAttributesRequest`

``` purescript
newDeleteAttributesRequest :: Attributes -> DeleteAttributesRequest
```

Constructs DeleteAttributesRequest from required parameters

#### `newDeleteAttributesRequest'`

``` purescript
newDeleteAttributesRequest' :: Attributes -> ({ cluster :: Maybe (String), attributes :: Attributes } -> { cluster :: Maybe (String), attributes :: Attributes }) -> DeleteAttributesRequest
```

Constructs DeleteAttributesRequest's fields from required parameters

#### `DeleteAttributesResponse`

``` purescript
newtype DeleteAttributesResponse
  = DeleteAttributesResponse { attributes :: Maybe (Attributes) }
```

##### Instances
``` purescript
Newtype DeleteAttributesResponse _
Generic DeleteAttributesResponse _
Show DeleteAttributesResponse
Decode DeleteAttributesResponse
Encode DeleteAttributesResponse
```

#### `newDeleteAttributesResponse`

``` purescript
newDeleteAttributesResponse :: DeleteAttributesResponse
```

Constructs DeleteAttributesResponse from required parameters

#### `newDeleteAttributesResponse'`

``` purescript
newDeleteAttributesResponse' :: ({ attributes :: Maybe (Attributes) } -> { attributes :: Maybe (Attributes) }) -> DeleteAttributesResponse
```

Constructs DeleteAttributesResponse's fields from required parameters

#### `DeleteClusterRequest`

``` purescript
newtype DeleteClusterRequest
  = DeleteClusterRequest { cluster :: String }
```

##### Instances
``` purescript
Newtype DeleteClusterRequest _
Generic DeleteClusterRequest _
Show DeleteClusterRequest
Decode DeleteClusterRequest
Encode DeleteClusterRequest
```

#### `newDeleteClusterRequest`

``` purescript
newDeleteClusterRequest :: String -> DeleteClusterRequest
```

Constructs DeleteClusterRequest from required parameters

#### `newDeleteClusterRequest'`

``` purescript
newDeleteClusterRequest' :: String -> ({ cluster :: String } -> { cluster :: String }) -> DeleteClusterRequest
```

Constructs DeleteClusterRequest's fields from required parameters

#### `DeleteClusterResponse`

``` purescript
newtype DeleteClusterResponse
  = DeleteClusterResponse { cluster :: Maybe (Cluster) }
```

##### Instances
``` purescript
Newtype DeleteClusterResponse _
Generic DeleteClusterResponse _
Show DeleteClusterResponse
Decode DeleteClusterResponse
Encode DeleteClusterResponse
```

#### `newDeleteClusterResponse`

``` purescript
newDeleteClusterResponse :: DeleteClusterResponse
```

Constructs DeleteClusterResponse from required parameters

#### `newDeleteClusterResponse'`

``` purescript
newDeleteClusterResponse' :: ({ cluster :: Maybe (Cluster) } -> { cluster :: Maybe (Cluster) }) -> DeleteClusterResponse
```

Constructs DeleteClusterResponse's fields from required parameters

#### `DeleteServiceRequest`

``` purescript
newtype DeleteServiceRequest
  = DeleteServiceRequest { cluster :: Maybe (String), service :: String }
```

##### Instances
``` purescript
Newtype DeleteServiceRequest _
Generic DeleteServiceRequest _
Show DeleteServiceRequest
Decode DeleteServiceRequest
Encode DeleteServiceRequest
```

#### `newDeleteServiceRequest`

``` purescript
newDeleteServiceRequest :: String -> DeleteServiceRequest
```

Constructs DeleteServiceRequest from required parameters

#### `newDeleteServiceRequest'`

``` purescript
newDeleteServiceRequest' :: String -> ({ cluster :: Maybe (String), service :: String } -> { cluster :: Maybe (String), service :: String }) -> DeleteServiceRequest
```

Constructs DeleteServiceRequest's fields from required parameters

#### `DeleteServiceResponse`

``` purescript
newtype DeleteServiceResponse
  = DeleteServiceResponse { service :: Maybe (Service) }
```

##### Instances
``` purescript
Newtype DeleteServiceResponse _
Generic DeleteServiceResponse _
Show DeleteServiceResponse
Decode DeleteServiceResponse
Encode DeleteServiceResponse
```

#### `newDeleteServiceResponse`

``` purescript
newDeleteServiceResponse :: DeleteServiceResponse
```

Constructs DeleteServiceResponse from required parameters

#### `newDeleteServiceResponse'`

``` purescript
newDeleteServiceResponse' :: ({ service :: Maybe (Service) } -> { service :: Maybe (Service) }) -> DeleteServiceResponse
```

Constructs DeleteServiceResponse's fields from required parameters

#### `Deployment`

``` purescript
newtype Deployment
  = Deployment { id :: Maybe (String), status :: Maybe (String), taskDefinition :: Maybe (String), desiredCount :: Maybe (Int), pendingCount :: Maybe (Int), runningCount :: Maybe (Int), createdAt :: Maybe (Timestamp), updatedAt :: Maybe (Timestamp), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }
```

<p>The details of an Amazon ECS service deployment.</p>

##### Instances
``` purescript
Newtype Deployment _
Generic Deployment _
Show Deployment
Decode Deployment
Encode Deployment
```

#### `newDeployment`

``` purescript
newDeployment :: Deployment
```

Constructs Deployment from required parameters

#### `newDeployment'`

``` purescript
newDeployment' :: ({ id :: Maybe (String), status :: Maybe (String), taskDefinition :: Maybe (String), desiredCount :: Maybe (Int), pendingCount :: Maybe (Int), runningCount :: Maybe (Int), createdAt :: Maybe (Timestamp), updatedAt :: Maybe (Timestamp), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) } -> { id :: Maybe (String), status :: Maybe (String), taskDefinition :: Maybe (String), desiredCount :: Maybe (Int), pendingCount :: Maybe (Int), runningCount :: Maybe (Int), createdAt :: Maybe (Timestamp), updatedAt :: Maybe (Timestamp), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }) -> Deployment
```

Constructs Deployment's fields from required parameters

#### `DeploymentConfiguration`

``` purescript
newtype DeploymentConfiguration
  = DeploymentConfiguration { maximumPercent :: Maybe (BoxedInteger), minimumHealthyPercent :: Maybe (BoxedInteger) }
```

<p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>

##### Instances
``` purescript
Newtype DeploymentConfiguration _
Generic DeploymentConfiguration _
Show DeploymentConfiguration
Decode DeploymentConfiguration
Encode DeploymentConfiguration
```

#### `newDeploymentConfiguration`

``` purescript
newDeploymentConfiguration :: DeploymentConfiguration
```

Constructs DeploymentConfiguration from required parameters

#### `newDeploymentConfiguration'`

``` purescript
newDeploymentConfiguration' :: ({ maximumPercent :: Maybe (BoxedInteger), minimumHealthyPercent :: Maybe (BoxedInteger) } -> { maximumPercent :: Maybe (BoxedInteger), minimumHealthyPercent :: Maybe (BoxedInteger) }) -> DeploymentConfiguration
```

Constructs DeploymentConfiguration's fields from required parameters

#### `Deployments`

``` purescript
newtype Deployments
  = Deployments (Array Deployment)
```

##### Instances
``` purescript
Newtype Deployments _
Generic Deployments _
Show Deployments
Decode Deployments
Encode Deployments
```

#### `DeregisterContainerInstanceRequest`

``` purescript
newtype DeregisterContainerInstanceRequest
  = DeregisterContainerInstanceRequest { cluster :: Maybe (String), containerInstance :: String, force :: Maybe (BoxedBoolean) }
```

##### Instances
``` purescript
Newtype DeregisterContainerInstanceRequest _
Generic DeregisterContainerInstanceRequest _
Show DeregisterContainerInstanceRequest
Decode DeregisterContainerInstanceRequest
Encode DeregisterContainerInstanceRequest
```

#### `newDeregisterContainerInstanceRequest`

``` purescript
newDeregisterContainerInstanceRequest :: String -> DeregisterContainerInstanceRequest
```

Constructs DeregisterContainerInstanceRequest from required parameters

#### `newDeregisterContainerInstanceRequest'`

``` purescript
newDeregisterContainerInstanceRequest' :: String -> ({ cluster :: Maybe (String), containerInstance :: String, force :: Maybe (BoxedBoolean) } -> { cluster :: Maybe (String), containerInstance :: String, force :: Maybe (BoxedBoolean) }) -> DeregisterContainerInstanceRequest
```

Constructs DeregisterContainerInstanceRequest's fields from required parameters

#### `DeregisterContainerInstanceResponse`

``` purescript
newtype DeregisterContainerInstanceResponse
  = DeregisterContainerInstanceResponse { containerInstance :: Maybe (ContainerInstance) }
```

##### Instances
``` purescript
Newtype DeregisterContainerInstanceResponse _
Generic DeregisterContainerInstanceResponse _
Show DeregisterContainerInstanceResponse
Decode DeregisterContainerInstanceResponse
Encode DeregisterContainerInstanceResponse
```

#### `newDeregisterContainerInstanceResponse`

``` purescript
newDeregisterContainerInstanceResponse :: DeregisterContainerInstanceResponse
```

Constructs DeregisterContainerInstanceResponse from required parameters

#### `newDeregisterContainerInstanceResponse'`

``` purescript
newDeregisterContainerInstanceResponse' :: ({ containerInstance :: Maybe (ContainerInstance) } -> { containerInstance :: Maybe (ContainerInstance) }) -> DeregisterContainerInstanceResponse
```

Constructs DeregisterContainerInstanceResponse's fields from required parameters

#### `DeregisterTaskDefinitionRequest`

``` purescript
newtype DeregisterTaskDefinitionRequest
  = DeregisterTaskDefinitionRequest { taskDefinition :: String }
```

##### Instances
``` purescript
Newtype DeregisterTaskDefinitionRequest _
Generic DeregisterTaskDefinitionRequest _
Show DeregisterTaskDefinitionRequest
Decode DeregisterTaskDefinitionRequest
Encode DeregisterTaskDefinitionRequest
```

#### `newDeregisterTaskDefinitionRequest`

``` purescript
newDeregisterTaskDefinitionRequest :: String -> DeregisterTaskDefinitionRequest
```

Constructs DeregisterTaskDefinitionRequest from required parameters

#### `newDeregisterTaskDefinitionRequest'`

``` purescript
newDeregisterTaskDefinitionRequest' :: String -> ({ taskDefinition :: String } -> { taskDefinition :: String }) -> DeregisterTaskDefinitionRequest
```

Constructs DeregisterTaskDefinitionRequest's fields from required parameters

#### `DeregisterTaskDefinitionResponse`

``` purescript
newtype DeregisterTaskDefinitionResponse
  = DeregisterTaskDefinitionResponse { taskDefinition :: Maybe (TaskDefinition) }
```

##### Instances
``` purescript
Newtype DeregisterTaskDefinitionResponse _
Generic DeregisterTaskDefinitionResponse _
Show DeregisterTaskDefinitionResponse
Decode DeregisterTaskDefinitionResponse
Encode DeregisterTaskDefinitionResponse
```

#### `newDeregisterTaskDefinitionResponse`

``` purescript
newDeregisterTaskDefinitionResponse :: DeregisterTaskDefinitionResponse
```

Constructs DeregisterTaskDefinitionResponse from required parameters

#### `newDeregisterTaskDefinitionResponse'`

``` purescript
newDeregisterTaskDefinitionResponse' :: ({ taskDefinition :: Maybe (TaskDefinition) } -> { taskDefinition :: Maybe (TaskDefinition) }) -> DeregisterTaskDefinitionResponse
```

Constructs DeregisterTaskDefinitionResponse's fields from required parameters

#### `DescribeClustersRequest`

``` purescript
newtype DescribeClustersRequest
  = DescribeClustersRequest { clusters :: Maybe (StringList), include :: Maybe (ClusterFieldList) }
```

##### Instances
``` purescript
Newtype DescribeClustersRequest _
Generic DescribeClustersRequest _
Show DescribeClustersRequest
Decode DescribeClustersRequest
Encode DescribeClustersRequest
```

#### `newDescribeClustersRequest`

``` purescript
newDescribeClustersRequest :: DescribeClustersRequest
```

Constructs DescribeClustersRequest from required parameters

#### `newDescribeClustersRequest'`

``` purescript
newDescribeClustersRequest' :: ({ clusters :: Maybe (StringList), include :: Maybe (ClusterFieldList) } -> { clusters :: Maybe (StringList), include :: Maybe (ClusterFieldList) }) -> DescribeClustersRequest
```

Constructs DescribeClustersRequest's fields from required parameters

#### `DescribeClustersResponse`

``` purescript
newtype DescribeClustersResponse
  = DescribeClustersResponse { clusters :: Maybe (Clusters), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype DescribeClustersResponse _
Generic DescribeClustersResponse _
Show DescribeClustersResponse
Decode DescribeClustersResponse
Encode DescribeClustersResponse
```

#### `newDescribeClustersResponse`

``` purescript
newDescribeClustersResponse :: DescribeClustersResponse
```

Constructs DescribeClustersResponse from required parameters

#### `newDescribeClustersResponse'`

``` purescript
newDescribeClustersResponse' :: ({ clusters :: Maybe (Clusters), failures :: Maybe (Failures) } -> { clusters :: Maybe (Clusters), failures :: Maybe (Failures) }) -> DescribeClustersResponse
```

Constructs DescribeClustersResponse's fields from required parameters

#### `DescribeContainerInstancesRequest`

``` purescript
newtype DescribeContainerInstancesRequest
  = DescribeContainerInstancesRequest { cluster :: Maybe (String), containerInstances :: StringList }
```

##### Instances
``` purescript
Newtype DescribeContainerInstancesRequest _
Generic DescribeContainerInstancesRequest _
Show DescribeContainerInstancesRequest
Decode DescribeContainerInstancesRequest
Encode DescribeContainerInstancesRequest
```

#### `newDescribeContainerInstancesRequest`

``` purescript
newDescribeContainerInstancesRequest :: StringList -> DescribeContainerInstancesRequest
```

Constructs DescribeContainerInstancesRequest from required parameters

#### `newDescribeContainerInstancesRequest'`

``` purescript
newDescribeContainerInstancesRequest' :: StringList -> ({ cluster :: Maybe (String), containerInstances :: StringList } -> { cluster :: Maybe (String), containerInstances :: StringList }) -> DescribeContainerInstancesRequest
```

Constructs DescribeContainerInstancesRequest's fields from required parameters

#### `DescribeContainerInstancesResponse`

``` purescript
newtype DescribeContainerInstancesResponse
  = DescribeContainerInstancesResponse { containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype DescribeContainerInstancesResponse _
Generic DescribeContainerInstancesResponse _
Show DescribeContainerInstancesResponse
Decode DescribeContainerInstancesResponse
Encode DescribeContainerInstancesResponse
```

#### `newDescribeContainerInstancesResponse`

``` purescript
newDescribeContainerInstancesResponse :: DescribeContainerInstancesResponse
```

Constructs DescribeContainerInstancesResponse from required parameters

#### `newDescribeContainerInstancesResponse'`

``` purescript
newDescribeContainerInstancesResponse' :: ({ containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) } -> { containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) }) -> DescribeContainerInstancesResponse
```

Constructs DescribeContainerInstancesResponse's fields from required parameters

#### `DescribeServicesRequest`

``` purescript
newtype DescribeServicesRequest
  = DescribeServicesRequest { cluster :: Maybe (String), services :: StringList }
```

##### Instances
``` purescript
Newtype DescribeServicesRequest _
Generic DescribeServicesRequest _
Show DescribeServicesRequest
Decode DescribeServicesRequest
Encode DescribeServicesRequest
```

#### `newDescribeServicesRequest`

``` purescript
newDescribeServicesRequest :: StringList -> DescribeServicesRequest
```

Constructs DescribeServicesRequest from required parameters

#### `newDescribeServicesRequest'`

``` purescript
newDescribeServicesRequest' :: StringList -> ({ cluster :: Maybe (String), services :: StringList } -> { cluster :: Maybe (String), services :: StringList }) -> DescribeServicesRequest
```

Constructs DescribeServicesRequest's fields from required parameters

#### `DescribeServicesResponse`

``` purescript
newtype DescribeServicesResponse
  = DescribeServicesResponse { services :: Maybe (Services), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype DescribeServicesResponse _
Generic DescribeServicesResponse _
Show DescribeServicesResponse
Decode DescribeServicesResponse
Encode DescribeServicesResponse
```

#### `newDescribeServicesResponse`

``` purescript
newDescribeServicesResponse :: DescribeServicesResponse
```

Constructs DescribeServicesResponse from required parameters

#### `newDescribeServicesResponse'`

``` purescript
newDescribeServicesResponse' :: ({ services :: Maybe (Services), failures :: Maybe (Failures) } -> { services :: Maybe (Services), failures :: Maybe (Failures) }) -> DescribeServicesResponse
```

Constructs DescribeServicesResponse's fields from required parameters

#### `DescribeTaskDefinitionRequest`

``` purescript
newtype DescribeTaskDefinitionRequest
  = DescribeTaskDefinitionRequest { taskDefinition :: String }
```

##### Instances
``` purescript
Newtype DescribeTaskDefinitionRequest _
Generic DescribeTaskDefinitionRequest _
Show DescribeTaskDefinitionRequest
Decode DescribeTaskDefinitionRequest
Encode DescribeTaskDefinitionRequest
```

#### `newDescribeTaskDefinitionRequest`

``` purescript
newDescribeTaskDefinitionRequest :: String -> DescribeTaskDefinitionRequest
```

Constructs DescribeTaskDefinitionRequest from required parameters

#### `newDescribeTaskDefinitionRequest'`

``` purescript
newDescribeTaskDefinitionRequest' :: String -> ({ taskDefinition :: String } -> { taskDefinition :: String }) -> DescribeTaskDefinitionRequest
```

Constructs DescribeTaskDefinitionRequest's fields from required parameters

#### `DescribeTaskDefinitionResponse`

``` purescript
newtype DescribeTaskDefinitionResponse
  = DescribeTaskDefinitionResponse { taskDefinition :: Maybe (TaskDefinition) }
```

##### Instances
``` purescript
Newtype DescribeTaskDefinitionResponse _
Generic DescribeTaskDefinitionResponse _
Show DescribeTaskDefinitionResponse
Decode DescribeTaskDefinitionResponse
Encode DescribeTaskDefinitionResponse
```

#### `newDescribeTaskDefinitionResponse`

``` purescript
newDescribeTaskDefinitionResponse :: DescribeTaskDefinitionResponse
```

Constructs DescribeTaskDefinitionResponse from required parameters

#### `newDescribeTaskDefinitionResponse'`

``` purescript
newDescribeTaskDefinitionResponse' :: ({ taskDefinition :: Maybe (TaskDefinition) } -> { taskDefinition :: Maybe (TaskDefinition) }) -> DescribeTaskDefinitionResponse
```

Constructs DescribeTaskDefinitionResponse's fields from required parameters

#### `DescribeTasksRequest`

``` purescript
newtype DescribeTasksRequest
  = DescribeTasksRequest { cluster :: Maybe (String), tasks :: StringList }
```

##### Instances
``` purescript
Newtype DescribeTasksRequest _
Generic DescribeTasksRequest _
Show DescribeTasksRequest
Decode DescribeTasksRequest
Encode DescribeTasksRequest
```

#### `newDescribeTasksRequest`

``` purescript
newDescribeTasksRequest :: StringList -> DescribeTasksRequest
```

Constructs DescribeTasksRequest from required parameters

#### `newDescribeTasksRequest'`

``` purescript
newDescribeTasksRequest' :: StringList -> ({ cluster :: Maybe (String), tasks :: StringList } -> { cluster :: Maybe (String), tasks :: StringList }) -> DescribeTasksRequest
```

Constructs DescribeTasksRequest's fields from required parameters

#### `DescribeTasksResponse`

``` purescript
newtype DescribeTasksResponse
  = DescribeTasksResponse { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype DescribeTasksResponse _
Generic DescribeTasksResponse _
Show DescribeTasksResponse
Decode DescribeTasksResponse
Encode DescribeTasksResponse
```

#### `newDescribeTasksResponse`

``` purescript
newDescribeTasksResponse :: DescribeTasksResponse
```

Constructs DescribeTasksResponse from required parameters

#### `newDescribeTasksResponse'`

``` purescript
newDescribeTasksResponse' :: ({ tasks :: Maybe (Tasks), failures :: Maybe (Failures) } -> { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }) -> DescribeTasksResponse
```

Constructs DescribeTasksResponse's fields from required parameters

#### `DesiredStatus`

``` purescript
newtype DesiredStatus
  = DesiredStatus String
```

##### Instances
``` purescript
Newtype DesiredStatus _
Generic DesiredStatus _
Show DesiredStatus
Decode DesiredStatus
Encode DesiredStatus
```

#### `Device`

``` purescript
newtype Device
  = Device { hostPath :: String, containerPath :: Maybe (String), permissions :: Maybe (DeviceCgroupPermissions) }
```

<p>An object representing a container instance host device.</p>

##### Instances
``` purescript
Newtype Device _
Generic Device _
Show Device
Decode Device
Encode Device
```

#### `newDevice`

``` purescript
newDevice :: String -> Device
```

Constructs Device from required parameters

#### `newDevice'`

``` purescript
newDevice' :: String -> ({ hostPath :: String, containerPath :: Maybe (String), permissions :: Maybe (DeviceCgroupPermissions) } -> { hostPath :: String, containerPath :: Maybe (String), permissions :: Maybe (DeviceCgroupPermissions) }) -> Device
```

Constructs Device's fields from required parameters

#### `DeviceCgroupPermission`

``` purescript
newtype DeviceCgroupPermission
  = DeviceCgroupPermission String
```

##### Instances
``` purescript
Newtype DeviceCgroupPermission _
Generic DeviceCgroupPermission _
Show DeviceCgroupPermission
Decode DeviceCgroupPermission
Encode DeviceCgroupPermission
```

#### `DeviceCgroupPermissions`

``` purescript
newtype DeviceCgroupPermissions
  = DeviceCgroupPermissions (Array DeviceCgroupPermission)
```

##### Instances
``` purescript
Newtype DeviceCgroupPermissions _
Generic DeviceCgroupPermissions _
Show DeviceCgroupPermissions
Decode DeviceCgroupPermissions
Encode DeviceCgroupPermissions
```

#### `DevicesList`

``` purescript
newtype DevicesList
  = DevicesList (Array Device)
```

##### Instances
``` purescript
Newtype DevicesList _
Generic DevicesList _
Show DevicesList
Decode DevicesList
Encode DevicesList
```

#### `DiscoverPollEndpointRequest`

``` purescript
newtype DiscoverPollEndpointRequest
  = DiscoverPollEndpointRequest { containerInstance :: Maybe (String), cluster :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DiscoverPollEndpointRequest _
Generic DiscoverPollEndpointRequest _
Show DiscoverPollEndpointRequest
Decode DiscoverPollEndpointRequest
Encode DiscoverPollEndpointRequest
```

#### `newDiscoverPollEndpointRequest`

``` purescript
newDiscoverPollEndpointRequest :: DiscoverPollEndpointRequest
```

Constructs DiscoverPollEndpointRequest from required parameters

#### `newDiscoverPollEndpointRequest'`

``` purescript
newDiscoverPollEndpointRequest' :: ({ containerInstance :: Maybe (String), cluster :: Maybe (String) } -> { containerInstance :: Maybe (String), cluster :: Maybe (String) }) -> DiscoverPollEndpointRequest
```

Constructs DiscoverPollEndpointRequest's fields from required parameters

#### `DiscoverPollEndpointResponse`

``` purescript
newtype DiscoverPollEndpointResponse
  = DiscoverPollEndpointResponse { endpoint :: Maybe (String), telemetryEndpoint :: Maybe (String) }
```

##### Instances
``` purescript
Newtype DiscoverPollEndpointResponse _
Generic DiscoverPollEndpointResponse _
Show DiscoverPollEndpointResponse
Decode DiscoverPollEndpointResponse
Encode DiscoverPollEndpointResponse
```

#### `newDiscoverPollEndpointResponse`

``` purescript
newDiscoverPollEndpointResponse :: DiscoverPollEndpointResponse
```

Constructs DiscoverPollEndpointResponse from required parameters

#### `newDiscoverPollEndpointResponse'`

``` purescript
newDiscoverPollEndpointResponse' :: ({ endpoint :: Maybe (String), telemetryEndpoint :: Maybe (String) } -> { endpoint :: Maybe (String), telemetryEndpoint :: Maybe (String) }) -> DiscoverPollEndpointResponse
```

Constructs DiscoverPollEndpointResponse's fields from required parameters

#### `DockerLabelsMap`

``` purescript
newtype DockerLabelsMap
  = DockerLabelsMap (StrMap String)
```

##### Instances
``` purescript
Newtype DockerLabelsMap _
Generic DockerLabelsMap _
Show DockerLabelsMap
Decode DockerLabelsMap
Encode DockerLabelsMap
```

#### `EnvironmentVariables`

``` purescript
newtype EnvironmentVariables
  = EnvironmentVariables (Array KeyValuePair)
```

##### Instances
``` purescript
Newtype EnvironmentVariables _
Generic EnvironmentVariables _
Show EnvironmentVariables
Decode EnvironmentVariables
Encode EnvironmentVariables
```

#### `Failure`

``` purescript
newtype Failure
  = Failure { arn :: Maybe (String), reason :: Maybe (String) }
```

<p>A failed resource.</p>

##### Instances
``` purescript
Newtype Failure _
Generic Failure _
Show Failure
Decode Failure
Encode Failure
```

#### `newFailure`

``` purescript
newFailure :: Failure
```

Constructs Failure from required parameters

#### `newFailure'`

``` purescript
newFailure' :: ({ arn :: Maybe (String), reason :: Maybe (String) } -> { arn :: Maybe (String), reason :: Maybe (String) }) -> Failure
```

Constructs Failure's fields from required parameters

#### `Failures`

``` purescript
newtype Failures
  = Failures (Array Failure)
```

##### Instances
``` purescript
Newtype Failures _
Generic Failures _
Show Failures
Decode Failures
Encode Failures
```

#### `HealthCheck`

``` purescript
newtype HealthCheck
  = HealthCheck { command :: StringList, interval :: Maybe (BoxedInteger), timeout :: Maybe (BoxedInteger), retries :: Maybe (BoxedInteger), startPeriod :: Maybe (BoxedInteger) }
```

<p>An object representing a container health check. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile).</p>

##### Instances
``` purescript
Newtype HealthCheck _
Generic HealthCheck _
Show HealthCheck
Decode HealthCheck
Encode HealthCheck
```

#### `newHealthCheck`

``` purescript
newHealthCheck :: StringList -> HealthCheck
```

Constructs HealthCheck from required parameters

#### `newHealthCheck'`

``` purescript
newHealthCheck' :: StringList -> ({ command :: StringList, interval :: Maybe (BoxedInteger), timeout :: Maybe (BoxedInteger), retries :: Maybe (BoxedInteger), startPeriod :: Maybe (BoxedInteger) } -> { command :: StringList, interval :: Maybe (BoxedInteger), timeout :: Maybe (BoxedInteger), retries :: Maybe (BoxedInteger), startPeriod :: Maybe (BoxedInteger) }) -> HealthCheck
```

Constructs HealthCheck's fields from required parameters

#### `HealthStatus`

``` purescript
newtype HealthStatus
  = HealthStatus String
```

##### Instances
``` purescript
Newtype HealthStatus _
Generic HealthStatus _
Show HealthStatus
Decode HealthStatus
Encode HealthStatus
```

#### `HostEntry`

``` purescript
newtype HostEntry
  = HostEntry { hostname :: String, ipAddress :: String }
```

<p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>

##### Instances
``` purescript
Newtype HostEntry _
Generic HostEntry _
Show HostEntry
Decode HostEntry
Encode HostEntry
```

#### `newHostEntry`

``` purescript
newHostEntry :: String -> String -> HostEntry
```

Constructs HostEntry from required parameters

#### `newHostEntry'`

``` purescript
newHostEntry' :: String -> String -> ({ hostname :: String, ipAddress :: String } -> { hostname :: String, ipAddress :: String }) -> HostEntry
```

Constructs HostEntry's fields from required parameters

#### `HostEntryList`

``` purescript
newtype HostEntryList
  = HostEntryList (Array HostEntry)
```

##### Instances
``` purescript
Newtype HostEntryList _
Generic HostEntryList _
Show HostEntryList
Decode HostEntryList
Encode HostEntryList
```

#### `HostVolumeProperties`

``` purescript
newtype HostVolumeProperties
  = HostVolumeProperties { sourcePath :: Maybe (String) }
```

<p>Details on a container instance host volume.</p>

##### Instances
``` purescript
Newtype HostVolumeProperties _
Generic HostVolumeProperties _
Show HostVolumeProperties
Decode HostVolumeProperties
Encode HostVolumeProperties
```

#### `newHostVolumeProperties`

``` purescript
newHostVolumeProperties :: HostVolumeProperties
```

Constructs HostVolumeProperties from required parameters

#### `newHostVolumeProperties'`

``` purescript
newHostVolumeProperties' :: ({ sourcePath :: Maybe (String) } -> { sourcePath :: Maybe (String) }) -> HostVolumeProperties
```

Constructs HostVolumeProperties's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException NoArguments
```

<p>The specified parameter is invalid. Review the available parameters for the API request.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `KernelCapabilities`

``` purescript
newtype KernelCapabilities
  = KernelCapabilities { add :: Maybe (StringList), drop :: Maybe (StringList) }
```

<p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker. For more information on the default capabilities and the non-default available capabilities, see <a href="https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities">Runtime privilege and Linux capabilities</a> in the <i>Docker run reference</i>. For more detailed information on these Linux capabilities, see the <a href="http://man7.org/linux/man-pages/man7/capabilities.7.html">capabilities(7)</a> Linux manual page.</p>

##### Instances
``` purescript
Newtype KernelCapabilities _
Generic KernelCapabilities _
Show KernelCapabilities
Decode KernelCapabilities
Encode KernelCapabilities
```

#### `newKernelCapabilities`

``` purescript
newKernelCapabilities :: KernelCapabilities
```

Constructs KernelCapabilities from required parameters

#### `newKernelCapabilities'`

``` purescript
newKernelCapabilities' :: ({ add :: Maybe (StringList), drop :: Maybe (StringList) } -> { add :: Maybe (StringList), drop :: Maybe (StringList) }) -> KernelCapabilities
```

Constructs KernelCapabilities's fields from required parameters

#### `KeyValuePair`

``` purescript
newtype KeyValuePair
  = KeyValuePair { name :: Maybe (String), value :: Maybe (String) }
```

<p>A key and value pair object.</p>

##### Instances
``` purescript
Newtype KeyValuePair _
Generic KeyValuePair _
Show KeyValuePair
Decode KeyValuePair
Encode KeyValuePair
```

#### `newKeyValuePair`

``` purescript
newKeyValuePair :: KeyValuePair
```

Constructs KeyValuePair from required parameters

#### `newKeyValuePair'`

``` purescript
newKeyValuePair' :: ({ name :: Maybe (String), value :: Maybe (String) } -> { name :: Maybe (String), value :: Maybe (String) }) -> KeyValuePair
```

Constructs KeyValuePair's fields from required parameters

#### `LaunchType`

``` purescript
newtype LaunchType
  = LaunchType String
```

##### Instances
``` purescript
Newtype LaunchType _
Generic LaunchType _
Show LaunchType
Decode LaunchType
Encode LaunchType
```

#### `LinuxParameters`

``` purescript
newtype LinuxParameters
  = LinuxParameters { capabilities :: Maybe (KernelCapabilities), devices :: Maybe (DevicesList), initProcessEnabled :: Maybe (BoxedBoolean) }
```

<p>Linux-specific options that are applied to the container, such as Linux <a>KernelCapabilities</a>.</p>

##### Instances
``` purescript
Newtype LinuxParameters _
Generic LinuxParameters _
Show LinuxParameters
Decode LinuxParameters
Encode LinuxParameters
```

#### `newLinuxParameters`

``` purescript
newLinuxParameters :: LinuxParameters
```

Constructs LinuxParameters from required parameters

#### `newLinuxParameters'`

``` purescript
newLinuxParameters' :: ({ capabilities :: Maybe (KernelCapabilities), devices :: Maybe (DevicesList), initProcessEnabled :: Maybe (BoxedBoolean) } -> { capabilities :: Maybe (KernelCapabilities), devices :: Maybe (DevicesList), initProcessEnabled :: Maybe (BoxedBoolean) }) -> LinuxParameters
```

Constructs LinuxParameters's fields from required parameters

#### `ListAttributesRequest`

``` purescript
newtype ListAttributesRequest
  = ListAttributesRequest { cluster :: Maybe (String), targetType :: TargetType, attributeName :: Maybe (String), attributeValue :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype ListAttributesRequest _
Generic ListAttributesRequest _
Show ListAttributesRequest
Decode ListAttributesRequest
Encode ListAttributesRequest
```

#### `newListAttributesRequest`

``` purescript
newListAttributesRequest :: TargetType -> ListAttributesRequest
```

Constructs ListAttributesRequest from required parameters

#### `newListAttributesRequest'`

``` purescript
newListAttributesRequest' :: TargetType -> ({ cluster :: Maybe (String), targetType :: TargetType, attributeName :: Maybe (String), attributeValue :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) } -> { cluster :: Maybe (String), targetType :: TargetType, attributeName :: Maybe (String), attributeValue :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }) -> ListAttributesRequest
```

Constructs ListAttributesRequest's fields from required parameters

#### `ListAttributesResponse`

``` purescript
newtype ListAttributesResponse
  = ListAttributesResponse { attributes :: Maybe (Attributes), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListAttributesResponse _
Generic ListAttributesResponse _
Show ListAttributesResponse
Decode ListAttributesResponse
Encode ListAttributesResponse
```

#### `newListAttributesResponse`

``` purescript
newListAttributesResponse :: ListAttributesResponse
```

Constructs ListAttributesResponse from required parameters

#### `newListAttributesResponse'`

``` purescript
newListAttributesResponse' :: ({ attributes :: Maybe (Attributes), nextToken :: Maybe (String) } -> { attributes :: Maybe (Attributes), nextToken :: Maybe (String) }) -> ListAttributesResponse
```

Constructs ListAttributesResponse's fields from required parameters

#### `ListClustersRequest`

``` purescript
newtype ListClustersRequest
  = ListClustersRequest { nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype ListClustersRequest _
Generic ListClustersRequest _
Show ListClustersRequest
Decode ListClustersRequest
Encode ListClustersRequest
```

#### `newListClustersRequest`

``` purescript
newListClustersRequest :: ListClustersRequest
```

Constructs ListClustersRequest from required parameters

#### `newListClustersRequest'`

``` purescript
newListClustersRequest' :: ({ nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) } -> { nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }) -> ListClustersRequest
```

Constructs ListClustersRequest's fields from required parameters

#### `ListClustersResponse`

``` purescript
newtype ListClustersResponse
  = ListClustersResponse { clusterArns :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListClustersResponse _
Generic ListClustersResponse _
Show ListClustersResponse
Decode ListClustersResponse
Encode ListClustersResponse
```

#### `newListClustersResponse`

``` purescript
newListClustersResponse :: ListClustersResponse
```

Constructs ListClustersResponse from required parameters

#### `newListClustersResponse'`

``` purescript
newListClustersResponse' :: ({ clusterArns :: Maybe (StringList), nextToken :: Maybe (String) } -> { clusterArns :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListClustersResponse
```

Constructs ListClustersResponse's fields from required parameters

#### `ListContainerInstancesRequest`

``` purescript
newtype ListContainerInstancesRequest
  = ListContainerInstancesRequest { cluster :: Maybe (String), filter :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), status :: Maybe (ContainerInstanceStatus) }
```

##### Instances
``` purescript
Newtype ListContainerInstancesRequest _
Generic ListContainerInstancesRequest _
Show ListContainerInstancesRequest
Decode ListContainerInstancesRequest
Encode ListContainerInstancesRequest
```

#### `newListContainerInstancesRequest`

``` purescript
newListContainerInstancesRequest :: ListContainerInstancesRequest
```

Constructs ListContainerInstancesRequest from required parameters

#### `newListContainerInstancesRequest'`

``` purescript
newListContainerInstancesRequest' :: ({ cluster :: Maybe (String), filter :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), status :: Maybe (ContainerInstanceStatus) } -> { cluster :: Maybe (String), filter :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), status :: Maybe (ContainerInstanceStatus) }) -> ListContainerInstancesRequest
```

Constructs ListContainerInstancesRequest's fields from required parameters

#### `ListContainerInstancesResponse`

``` purescript
newtype ListContainerInstancesResponse
  = ListContainerInstancesResponse { containerInstanceArns :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListContainerInstancesResponse _
Generic ListContainerInstancesResponse _
Show ListContainerInstancesResponse
Decode ListContainerInstancesResponse
Encode ListContainerInstancesResponse
```

#### `newListContainerInstancesResponse`

``` purescript
newListContainerInstancesResponse :: ListContainerInstancesResponse
```

Constructs ListContainerInstancesResponse from required parameters

#### `newListContainerInstancesResponse'`

``` purescript
newListContainerInstancesResponse' :: ({ containerInstanceArns :: Maybe (StringList), nextToken :: Maybe (String) } -> { containerInstanceArns :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListContainerInstancesResponse
```

Constructs ListContainerInstancesResponse's fields from required parameters

#### `ListServicesRequest`

``` purescript
newtype ListServicesRequest
  = ListServicesRequest { cluster :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), launchType :: Maybe (LaunchType) }
```

##### Instances
``` purescript
Newtype ListServicesRequest _
Generic ListServicesRequest _
Show ListServicesRequest
Decode ListServicesRequest
Encode ListServicesRequest
```

#### `newListServicesRequest`

``` purescript
newListServicesRequest :: ListServicesRequest
```

Constructs ListServicesRequest from required parameters

#### `newListServicesRequest'`

``` purescript
newListServicesRequest' :: ({ cluster :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), launchType :: Maybe (LaunchType) } -> { cluster :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), launchType :: Maybe (LaunchType) }) -> ListServicesRequest
```

Constructs ListServicesRequest's fields from required parameters

#### `ListServicesResponse`

``` purescript
newtype ListServicesResponse
  = ListServicesResponse { serviceArns :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListServicesResponse _
Generic ListServicesResponse _
Show ListServicesResponse
Decode ListServicesResponse
Encode ListServicesResponse
```

#### `newListServicesResponse`

``` purescript
newListServicesResponse :: ListServicesResponse
```

Constructs ListServicesResponse from required parameters

#### `newListServicesResponse'`

``` purescript
newListServicesResponse' :: ({ serviceArns :: Maybe (StringList), nextToken :: Maybe (String) } -> { serviceArns :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListServicesResponse
```

Constructs ListServicesResponse's fields from required parameters

#### `ListTaskDefinitionFamiliesRequest`

``` purescript
newtype ListTaskDefinitionFamiliesRequest
  = ListTaskDefinitionFamiliesRequest { familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionFamilyStatus), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype ListTaskDefinitionFamiliesRequest _
Generic ListTaskDefinitionFamiliesRequest _
Show ListTaskDefinitionFamiliesRequest
Decode ListTaskDefinitionFamiliesRequest
Encode ListTaskDefinitionFamiliesRequest
```

#### `newListTaskDefinitionFamiliesRequest`

``` purescript
newListTaskDefinitionFamiliesRequest :: ListTaskDefinitionFamiliesRequest
```

Constructs ListTaskDefinitionFamiliesRequest from required parameters

#### `newListTaskDefinitionFamiliesRequest'`

``` purescript
newListTaskDefinitionFamiliesRequest' :: ({ familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionFamilyStatus), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) } -> { familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionFamilyStatus), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }) -> ListTaskDefinitionFamiliesRequest
```

Constructs ListTaskDefinitionFamiliesRequest's fields from required parameters

#### `ListTaskDefinitionFamiliesResponse`

``` purescript
newtype ListTaskDefinitionFamiliesResponse
  = ListTaskDefinitionFamiliesResponse { families :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListTaskDefinitionFamiliesResponse _
Generic ListTaskDefinitionFamiliesResponse _
Show ListTaskDefinitionFamiliesResponse
Decode ListTaskDefinitionFamiliesResponse
Encode ListTaskDefinitionFamiliesResponse
```

#### `newListTaskDefinitionFamiliesResponse`

``` purescript
newListTaskDefinitionFamiliesResponse :: ListTaskDefinitionFamiliesResponse
```

Constructs ListTaskDefinitionFamiliesResponse from required parameters

#### `newListTaskDefinitionFamiliesResponse'`

``` purescript
newListTaskDefinitionFamiliesResponse' :: ({ families :: Maybe (StringList), nextToken :: Maybe (String) } -> { families :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListTaskDefinitionFamiliesResponse
```

Constructs ListTaskDefinitionFamiliesResponse's fields from required parameters

#### `ListTaskDefinitionsRequest`

``` purescript
newtype ListTaskDefinitionsRequest
  = ListTaskDefinitionsRequest { familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionStatus), sort :: Maybe (SortOrder), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype ListTaskDefinitionsRequest _
Generic ListTaskDefinitionsRequest _
Show ListTaskDefinitionsRequest
Decode ListTaskDefinitionsRequest
Encode ListTaskDefinitionsRequest
```

#### `newListTaskDefinitionsRequest`

``` purescript
newListTaskDefinitionsRequest :: ListTaskDefinitionsRequest
```

Constructs ListTaskDefinitionsRequest from required parameters

#### `newListTaskDefinitionsRequest'`

``` purescript
newListTaskDefinitionsRequest' :: ({ familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionStatus), sort :: Maybe (SortOrder), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) } -> { familyPrefix :: Maybe (String), status :: Maybe (TaskDefinitionStatus), sort :: Maybe (SortOrder), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger) }) -> ListTaskDefinitionsRequest
```

Constructs ListTaskDefinitionsRequest's fields from required parameters

#### `ListTaskDefinitionsResponse`

``` purescript
newtype ListTaskDefinitionsResponse
  = ListTaskDefinitionsResponse { taskDefinitionArns :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListTaskDefinitionsResponse _
Generic ListTaskDefinitionsResponse _
Show ListTaskDefinitionsResponse
Decode ListTaskDefinitionsResponse
Encode ListTaskDefinitionsResponse
```

#### `newListTaskDefinitionsResponse`

``` purescript
newListTaskDefinitionsResponse :: ListTaskDefinitionsResponse
```

Constructs ListTaskDefinitionsResponse from required parameters

#### `newListTaskDefinitionsResponse'`

``` purescript
newListTaskDefinitionsResponse' :: ({ taskDefinitionArns :: Maybe (StringList), nextToken :: Maybe (String) } -> { taskDefinitionArns :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListTaskDefinitionsResponse
```

Constructs ListTaskDefinitionsResponse's fields from required parameters

#### `ListTasksRequest`

``` purescript
newtype ListTasksRequest
  = ListTasksRequest { cluster :: Maybe (String), containerInstance :: Maybe (String), family :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), startedBy :: Maybe (String), serviceName :: Maybe (String), desiredStatus :: Maybe (DesiredStatus), launchType :: Maybe (LaunchType) }
```

##### Instances
``` purescript
Newtype ListTasksRequest _
Generic ListTasksRequest _
Show ListTasksRequest
Decode ListTasksRequest
Encode ListTasksRequest
```

#### `newListTasksRequest`

``` purescript
newListTasksRequest :: ListTasksRequest
```

Constructs ListTasksRequest from required parameters

#### `newListTasksRequest'`

``` purescript
newListTasksRequest' :: ({ cluster :: Maybe (String), containerInstance :: Maybe (String), family :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), startedBy :: Maybe (String), serviceName :: Maybe (String), desiredStatus :: Maybe (DesiredStatus), launchType :: Maybe (LaunchType) } -> { cluster :: Maybe (String), containerInstance :: Maybe (String), family :: Maybe (String), nextToken :: Maybe (String), maxResults :: Maybe (BoxedInteger), startedBy :: Maybe (String), serviceName :: Maybe (String), desiredStatus :: Maybe (DesiredStatus), launchType :: Maybe (LaunchType) }) -> ListTasksRequest
```

Constructs ListTasksRequest's fields from required parameters

#### `ListTasksResponse`

``` purescript
newtype ListTasksResponse
  = ListTasksResponse { taskArns :: Maybe (StringList), nextToken :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListTasksResponse _
Generic ListTasksResponse _
Show ListTasksResponse
Decode ListTasksResponse
Encode ListTasksResponse
```

#### `newListTasksResponse`

``` purescript
newListTasksResponse :: ListTasksResponse
```

Constructs ListTasksResponse from required parameters

#### `newListTasksResponse'`

``` purescript
newListTasksResponse' :: ({ taskArns :: Maybe (StringList), nextToken :: Maybe (String) } -> { taskArns :: Maybe (StringList), nextToken :: Maybe (String) }) -> ListTasksResponse
```

Constructs ListTasksResponse's fields from required parameters

#### `LoadBalancer`

``` purescript
newtype LoadBalancer
  = LoadBalancer { targetGroupArn :: Maybe (String), loadBalancerName :: Maybe (String), containerName :: Maybe (String), containerPort :: Maybe (BoxedInteger) }
```

<p>Details on a load balancer that is used with a service.</p>

##### Instances
``` purescript
Newtype LoadBalancer _
Generic LoadBalancer _
Show LoadBalancer
Decode LoadBalancer
Encode LoadBalancer
```

#### `newLoadBalancer`

``` purescript
newLoadBalancer :: LoadBalancer
```

Constructs LoadBalancer from required parameters

#### `newLoadBalancer'`

``` purescript
newLoadBalancer' :: ({ targetGroupArn :: Maybe (String), loadBalancerName :: Maybe (String), containerName :: Maybe (String), containerPort :: Maybe (BoxedInteger) } -> { targetGroupArn :: Maybe (String), loadBalancerName :: Maybe (String), containerName :: Maybe (String), containerPort :: Maybe (BoxedInteger) }) -> LoadBalancer
```

Constructs LoadBalancer's fields from required parameters

#### `LoadBalancers`

``` purescript
newtype LoadBalancers
  = LoadBalancers (Array LoadBalancer)
```

##### Instances
``` purescript
Newtype LoadBalancers _
Generic LoadBalancers _
Show LoadBalancers
Decode LoadBalancers
Encode LoadBalancers
```

#### `LogConfiguration`

``` purescript
newtype LogConfiguration
  = LogConfiguration { logDriver :: LogDriver, options :: Maybe (LogConfigurationOptionsMap) }
```

<p>Log configuration options to send to a custom log driver for the container.</p>

##### Instances
``` purescript
Newtype LogConfiguration _
Generic LogConfiguration _
Show LogConfiguration
Decode LogConfiguration
Encode LogConfiguration
```

#### `newLogConfiguration`

``` purescript
newLogConfiguration :: LogDriver -> LogConfiguration
```

Constructs LogConfiguration from required parameters

#### `newLogConfiguration'`

``` purescript
newLogConfiguration' :: LogDriver -> ({ logDriver :: LogDriver, options :: Maybe (LogConfigurationOptionsMap) } -> { logDriver :: LogDriver, options :: Maybe (LogConfigurationOptionsMap) }) -> LogConfiguration
```

Constructs LogConfiguration's fields from required parameters

#### `LogConfigurationOptionsMap`

``` purescript
newtype LogConfigurationOptionsMap
  = LogConfigurationOptionsMap (StrMap String)
```

##### Instances
``` purescript
Newtype LogConfigurationOptionsMap _
Generic LogConfigurationOptionsMap _
Show LogConfigurationOptionsMap
Decode LogConfigurationOptionsMap
Encode LogConfigurationOptionsMap
```

#### `LogDriver`

``` purescript
newtype LogDriver
  = LogDriver String
```

##### Instances
``` purescript
Newtype LogDriver _
Generic LogDriver _
Show LogDriver
Decode LogDriver
Encode LogDriver
```

#### `MissingVersionException`

``` purescript
newtype MissingVersionException
  = MissingVersionException NoArguments
```

<p>Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.</p>

##### Instances
``` purescript
Newtype MissingVersionException _
Generic MissingVersionException _
Show MissingVersionException
Decode MissingVersionException
Encode MissingVersionException
```

#### `MountPoint`

``` purescript
newtype MountPoint
  = MountPoint { sourceVolume :: Maybe (String), containerPath :: Maybe (String), readOnly :: Maybe (BoxedBoolean) }
```

<p>Details on a volume mount point that is used in a container definition.</p>

##### Instances
``` purescript
Newtype MountPoint _
Generic MountPoint _
Show MountPoint
Decode MountPoint
Encode MountPoint
```

#### `newMountPoint`

``` purescript
newMountPoint :: MountPoint
```

Constructs MountPoint from required parameters

#### `newMountPoint'`

``` purescript
newMountPoint' :: ({ sourceVolume :: Maybe (String), containerPath :: Maybe (String), readOnly :: Maybe (BoxedBoolean) } -> { sourceVolume :: Maybe (String), containerPath :: Maybe (String), readOnly :: Maybe (BoxedBoolean) }) -> MountPoint
```

Constructs MountPoint's fields from required parameters

#### `MountPointList`

``` purescript
newtype MountPointList
  = MountPointList (Array MountPoint)
```

##### Instances
``` purescript
Newtype MountPointList _
Generic MountPointList _
Show MountPointList
Decode MountPointList
Encode MountPointList
```

#### `NetworkBinding`

``` purescript
newtype NetworkBinding
  = NetworkBinding { bindIP :: Maybe (String), containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) }
```

<p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>

##### Instances
``` purescript
Newtype NetworkBinding _
Generic NetworkBinding _
Show NetworkBinding
Decode NetworkBinding
Encode NetworkBinding
```

#### `newNetworkBinding`

``` purescript
newNetworkBinding :: NetworkBinding
```

Constructs NetworkBinding from required parameters

#### `newNetworkBinding'`

``` purescript
newNetworkBinding' :: ({ bindIP :: Maybe (String), containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) } -> { bindIP :: Maybe (String), containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) }) -> NetworkBinding
```

Constructs NetworkBinding's fields from required parameters

#### `NetworkBindings`

``` purescript
newtype NetworkBindings
  = NetworkBindings (Array NetworkBinding)
```

##### Instances
``` purescript
Newtype NetworkBindings _
Generic NetworkBindings _
Show NetworkBindings
Decode NetworkBindings
Encode NetworkBindings
```

#### `NetworkConfiguration`

``` purescript
newtype NetworkConfiguration
  = NetworkConfiguration { awsvpcConfiguration :: Maybe (AwsVpcConfiguration) }
```

<p>An object representing the network configuration for a task or service.</p>

##### Instances
``` purescript
Newtype NetworkConfiguration _
Generic NetworkConfiguration _
Show NetworkConfiguration
Decode NetworkConfiguration
Encode NetworkConfiguration
```

#### `newNetworkConfiguration`

``` purescript
newNetworkConfiguration :: NetworkConfiguration
```

Constructs NetworkConfiguration from required parameters

#### `newNetworkConfiguration'`

``` purescript
newNetworkConfiguration' :: ({ awsvpcConfiguration :: Maybe (AwsVpcConfiguration) } -> { awsvpcConfiguration :: Maybe (AwsVpcConfiguration) }) -> NetworkConfiguration
```

Constructs NetworkConfiguration's fields from required parameters

#### `NetworkInterface`

``` purescript
newtype NetworkInterface
  = NetworkInterface { attachmentId :: Maybe (String), privateIpv4Address :: Maybe (String), ipv6Address :: Maybe (String) }
```

<p>An object representing the Elastic Network Interface for tasks that use the <code>awsvpc</code> network mode.</p>

##### Instances
``` purescript
Newtype NetworkInterface _
Generic NetworkInterface _
Show NetworkInterface
Decode NetworkInterface
Encode NetworkInterface
```

#### `newNetworkInterface`

``` purescript
newNetworkInterface :: NetworkInterface
```

Constructs NetworkInterface from required parameters

#### `newNetworkInterface'`

``` purescript
newNetworkInterface' :: ({ attachmentId :: Maybe (String), privateIpv4Address :: Maybe (String), ipv6Address :: Maybe (String) } -> { attachmentId :: Maybe (String), privateIpv4Address :: Maybe (String), ipv6Address :: Maybe (String) }) -> NetworkInterface
```

Constructs NetworkInterface's fields from required parameters

#### `NetworkInterfaces`

``` purescript
newtype NetworkInterfaces
  = NetworkInterfaces (Array NetworkInterface)
```

##### Instances
``` purescript
Newtype NetworkInterfaces _
Generic NetworkInterfaces _
Show NetworkInterfaces
Decode NetworkInterfaces
Encode NetworkInterfaces
```

#### `NetworkMode`

``` purescript
newtype NetworkMode
  = NetworkMode String
```

##### Instances
``` purescript
Newtype NetworkMode _
Generic NetworkMode _
Show NetworkMode
Decode NetworkMode
Encode NetworkMode
```

#### `NoUpdateAvailableException`

``` purescript
newtype NoUpdateAvailableException
  = NoUpdateAvailableException NoArguments
```

<p>There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.</p>

##### Instances
``` purescript
Newtype NoUpdateAvailableException _
Generic NoUpdateAvailableException _
Show NoUpdateAvailableException
Decode NoUpdateAvailableException
Encode NoUpdateAvailableException
```

#### `PlacementConstraint`

``` purescript
newtype PlacementConstraint
  = PlacementConstraint { "type" :: Maybe (PlacementConstraintType), expression :: Maybe (String) }
```

<p>An object representing a constraint on task placement. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype PlacementConstraint _
Generic PlacementConstraint _
Show PlacementConstraint
Decode PlacementConstraint
Encode PlacementConstraint
```

#### `newPlacementConstraint`

``` purescript
newPlacementConstraint :: PlacementConstraint
```

Constructs PlacementConstraint from required parameters

#### `newPlacementConstraint'`

``` purescript
newPlacementConstraint' :: ({ "type" :: Maybe (PlacementConstraintType), expression :: Maybe (String) } -> { "type" :: Maybe (PlacementConstraintType), expression :: Maybe (String) }) -> PlacementConstraint
```

Constructs PlacementConstraint's fields from required parameters

#### `PlacementConstraintType`

``` purescript
newtype PlacementConstraintType
  = PlacementConstraintType String
```

##### Instances
``` purescript
Newtype PlacementConstraintType _
Generic PlacementConstraintType _
Show PlacementConstraintType
Decode PlacementConstraintType
Encode PlacementConstraintType
```

#### `PlacementConstraints`

``` purescript
newtype PlacementConstraints
  = PlacementConstraints (Array PlacementConstraint)
```

##### Instances
``` purescript
Newtype PlacementConstraints _
Generic PlacementConstraints _
Show PlacementConstraints
Decode PlacementConstraints
Encode PlacementConstraints
```

#### `PlacementStrategies`

``` purescript
newtype PlacementStrategies
  = PlacementStrategies (Array PlacementStrategy)
```

##### Instances
``` purescript
Newtype PlacementStrategies _
Generic PlacementStrategies _
Show PlacementStrategies
Decode PlacementStrategies
Encode PlacementStrategies
```

#### `PlacementStrategy`

``` purescript
newtype PlacementStrategy
  = PlacementStrategy { "type" :: Maybe (PlacementStrategyType), field :: Maybe (String) }
```

<p>The task placement strategy for a task or service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype PlacementStrategy _
Generic PlacementStrategy _
Show PlacementStrategy
Decode PlacementStrategy
Encode PlacementStrategy
```

#### `newPlacementStrategy`

``` purescript
newPlacementStrategy :: PlacementStrategy
```

Constructs PlacementStrategy from required parameters

#### `newPlacementStrategy'`

``` purescript
newPlacementStrategy' :: ({ "type" :: Maybe (PlacementStrategyType), field :: Maybe (String) } -> { "type" :: Maybe (PlacementStrategyType), field :: Maybe (String) }) -> PlacementStrategy
```

Constructs PlacementStrategy's fields from required parameters

#### `PlacementStrategyType`

``` purescript
newtype PlacementStrategyType
  = PlacementStrategyType String
```

##### Instances
``` purescript
Newtype PlacementStrategyType _
Generic PlacementStrategyType _
Show PlacementStrategyType
Decode PlacementStrategyType
Encode PlacementStrategyType
```

#### `PlatformTaskDefinitionIncompatibilityException`

``` purescript
newtype PlatformTaskDefinitionIncompatibilityException
  = PlatformTaskDefinitionIncompatibilityException NoArguments
```

<p>The specified platform version does not satisfy the task definition’s required capabilities.</p>

##### Instances
``` purescript
Newtype PlatformTaskDefinitionIncompatibilityException _
Generic PlatformTaskDefinitionIncompatibilityException _
Show PlatformTaskDefinitionIncompatibilityException
Decode PlatformTaskDefinitionIncompatibilityException
Encode PlatformTaskDefinitionIncompatibilityException
```

#### `PlatformUnknownException`

``` purescript
newtype PlatformUnknownException
  = PlatformUnknownException NoArguments
```

<p>The specified platform version does not exist.</p>

##### Instances
``` purescript
Newtype PlatformUnknownException _
Generic PlatformUnknownException _
Show PlatformUnknownException
Decode PlatformUnknownException
Encode PlatformUnknownException
```

#### `PortMapping`

``` purescript
newtype PortMapping
  = PortMapping { containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) }
```

<p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition.</p> <p>If using containers in a task with the <code>awsvpc</code> or <code>host</code> network mode, exposed ports should be specified using <code>containerPort</code>. The <code>hostPort</code> can be left blank or it must be the same value as the <code>containerPort</code>.</p> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>

##### Instances
``` purescript
Newtype PortMapping _
Generic PortMapping _
Show PortMapping
Decode PortMapping
Encode PortMapping
```

#### `newPortMapping`

``` purescript
newPortMapping :: PortMapping
```

Constructs PortMapping from required parameters

#### `newPortMapping'`

``` purescript
newPortMapping' :: ({ containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) } -> { containerPort :: Maybe (BoxedInteger), hostPort :: Maybe (BoxedInteger), protocol :: Maybe (TransportProtocol) }) -> PortMapping
```

Constructs PortMapping's fields from required parameters

#### `PortMappingList`

``` purescript
newtype PortMappingList
  = PortMappingList (Array PortMapping)
```

##### Instances
``` purescript
Newtype PortMappingList _
Generic PortMappingList _
Show PortMappingList
Decode PortMappingList
Encode PortMappingList
```

#### `PutAttributesRequest`

``` purescript
newtype PutAttributesRequest
  = PutAttributesRequest { cluster :: Maybe (String), attributes :: Attributes }
```

##### Instances
``` purescript
Newtype PutAttributesRequest _
Generic PutAttributesRequest _
Show PutAttributesRequest
Decode PutAttributesRequest
Encode PutAttributesRequest
```

#### `newPutAttributesRequest`

``` purescript
newPutAttributesRequest :: Attributes -> PutAttributesRequest
```

Constructs PutAttributesRequest from required parameters

#### `newPutAttributesRequest'`

``` purescript
newPutAttributesRequest' :: Attributes -> ({ cluster :: Maybe (String), attributes :: Attributes } -> { cluster :: Maybe (String), attributes :: Attributes }) -> PutAttributesRequest
```

Constructs PutAttributesRequest's fields from required parameters

#### `PutAttributesResponse`

``` purescript
newtype PutAttributesResponse
  = PutAttributesResponse { attributes :: Maybe (Attributes) }
```

##### Instances
``` purescript
Newtype PutAttributesResponse _
Generic PutAttributesResponse _
Show PutAttributesResponse
Decode PutAttributesResponse
Encode PutAttributesResponse
```

#### `newPutAttributesResponse`

``` purescript
newPutAttributesResponse :: PutAttributesResponse
```

Constructs PutAttributesResponse from required parameters

#### `newPutAttributesResponse'`

``` purescript
newPutAttributesResponse' :: ({ attributes :: Maybe (Attributes) } -> { attributes :: Maybe (Attributes) }) -> PutAttributesResponse
```

Constructs PutAttributesResponse's fields from required parameters

#### `RegisterContainerInstanceRequest`

``` purescript
newtype RegisterContainerInstanceRequest
  = RegisterContainerInstanceRequest { cluster :: Maybe (String), instanceIdentityDocument :: Maybe (String), instanceIdentityDocumentSignature :: Maybe (String), totalResources :: Maybe (Resources), versionInfo :: Maybe (VersionInfo), containerInstanceArn :: Maybe (String), attributes :: Maybe (Attributes) }
```

##### Instances
``` purescript
Newtype RegisterContainerInstanceRequest _
Generic RegisterContainerInstanceRequest _
Show RegisterContainerInstanceRequest
Decode RegisterContainerInstanceRequest
Encode RegisterContainerInstanceRequest
```

#### `newRegisterContainerInstanceRequest`

``` purescript
newRegisterContainerInstanceRequest :: RegisterContainerInstanceRequest
```

Constructs RegisterContainerInstanceRequest from required parameters

#### `newRegisterContainerInstanceRequest'`

``` purescript
newRegisterContainerInstanceRequest' :: ({ cluster :: Maybe (String), instanceIdentityDocument :: Maybe (String), instanceIdentityDocumentSignature :: Maybe (String), totalResources :: Maybe (Resources), versionInfo :: Maybe (VersionInfo), containerInstanceArn :: Maybe (String), attributes :: Maybe (Attributes) } -> { cluster :: Maybe (String), instanceIdentityDocument :: Maybe (String), instanceIdentityDocumentSignature :: Maybe (String), totalResources :: Maybe (Resources), versionInfo :: Maybe (VersionInfo), containerInstanceArn :: Maybe (String), attributes :: Maybe (Attributes) }) -> RegisterContainerInstanceRequest
```

Constructs RegisterContainerInstanceRequest's fields from required parameters

#### `RegisterContainerInstanceResponse`

``` purescript
newtype RegisterContainerInstanceResponse
  = RegisterContainerInstanceResponse { containerInstance :: Maybe (ContainerInstance) }
```

##### Instances
``` purescript
Newtype RegisterContainerInstanceResponse _
Generic RegisterContainerInstanceResponse _
Show RegisterContainerInstanceResponse
Decode RegisterContainerInstanceResponse
Encode RegisterContainerInstanceResponse
```

#### `newRegisterContainerInstanceResponse`

``` purescript
newRegisterContainerInstanceResponse :: RegisterContainerInstanceResponse
```

Constructs RegisterContainerInstanceResponse from required parameters

#### `newRegisterContainerInstanceResponse'`

``` purescript
newRegisterContainerInstanceResponse' :: ({ containerInstance :: Maybe (ContainerInstance) } -> { containerInstance :: Maybe (ContainerInstance) }) -> RegisterContainerInstanceResponse
```

Constructs RegisterContainerInstanceResponse's fields from required parameters

#### `RegisterTaskDefinitionRequest`

``` purescript
newtype RegisterTaskDefinitionRequest
  = RegisterTaskDefinitionRequest { family :: String, taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: Maybe (VolumeList), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) }
```

##### Instances
``` purescript
Newtype RegisterTaskDefinitionRequest _
Generic RegisterTaskDefinitionRequest _
Show RegisterTaskDefinitionRequest
Decode RegisterTaskDefinitionRequest
Encode RegisterTaskDefinitionRequest
```

#### `newRegisterTaskDefinitionRequest`

``` purescript
newRegisterTaskDefinitionRequest :: ContainerDefinitions -> String -> RegisterTaskDefinitionRequest
```

Constructs RegisterTaskDefinitionRequest from required parameters

#### `newRegisterTaskDefinitionRequest'`

``` purescript
newRegisterTaskDefinitionRequest' :: ContainerDefinitions -> String -> ({ family :: String, taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: Maybe (VolumeList), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) } -> { family :: String, taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: Maybe (VolumeList), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) }) -> RegisterTaskDefinitionRequest
```

Constructs RegisterTaskDefinitionRequest's fields from required parameters

#### `RegisterTaskDefinitionResponse`

``` purescript
newtype RegisterTaskDefinitionResponse
  = RegisterTaskDefinitionResponse { taskDefinition :: Maybe (TaskDefinition) }
```

##### Instances
``` purescript
Newtype RegisterTaskDefinitionResponse _
Generic RegisterTaskDefinitionResponse _
Show RegisterTaskDefinitionResponse
Decode RegisterTaskDefinitionResponse
Encode RegisterTaskDefinitionResponse
```

#### `newRegisterTaskDefinitionResponse`

``` purescript
newRegisterTaskDefinitionResponse :: RegisterTaskDefinitionResponse
```

Constructs RegisterTaskDefinitionResponse from required parameters

#### `newRegisterTaskDefinitionResponse'`

``` purescript
newRegisterTaskDefinitionResponse' :: ({ taskDefinition :: Maybe (TaskDefinition) } -> { taskDefinition :: Maybe (TaskDefinition) }) -> RegisterTaskDefinitionResponse
```

Constructs RegisterTaskDefinitionResponse's fields from required parameters

#### `RequiresAttributes`

``` purescript
newtype RequiresAttributes
  = RequiresAttributes (Array Attribute)
```

##### Instances
``` purescript
Newtype RequiresAttributes _
Generic RequiresAttributes _
Show RequiresAttributes
Decode RequiresAttributes
Encode RequiresAttributes
```

#### `Resource`

``` purescript
newtype Resource
  = Resource { name :: Maybe (String), "type" :: Maybe (String), doubleValue :: Maybe (Number), longValue :: Maybe (Number), integerValue :: Maybe (Int), stringSetValue :: Maybe (StringList) }
```

<p>Describes the resources available for a container instance.</p>

##### Instances
``` purescript
Newtype Resource _
Generic Resource _
Show Resource
Decode Resource
Encode Resource
```

#### `newResource`

``` purescript
newResource :: Resource
```

Constructs Resource from required parameters

#### `newResource'`

``` purescript
newResource' :: ({ name :: Maybe (String), "type" :: Maybe (String), doubleValue :: Maybe (Number), longValue :: Maybe (Number), integerValue :: Maybe (Int), stringSetValue :: Maybe (StringList) } -> { name :: Maybe (String), "type" :: Maybe (String), doubleValue :: Maybe (Number), longValue :: Maybe (Number), integerValue :: Maybe (Int), stringSetValue :: Maybe (StringList) }) -> Resource
```

Constructs Resource's fields from required parameters

#### `Resources`

``` purescript
newtype Resources
  = Resources (Array Resource)
```

##### Instances
``` purescript
Newtype Resources _
Generic Resources _
Show Resources
Decode Resources
Encode Resources
```

#### `RunTaskRequest`

``` purescript
newtype RunTaskRequest
  = RunTaskRequest { cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), count :: Maybe (BoxedInteger), startedBy :: Maybe (String), group :: Maybe (String), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }
```

##### Instances
``` purescript
Newtype RunTaskRequest _
Generic RunTaskRequest _
Show RunTaskRequest
Decode RunTaskRequest
Encode RunTaskRequest
```

#### `newRunTaskRequest`

``` purescript
newRunTaskRequest :: String -> RunTaskRequest
```

Constructs RunTaskRequest from required parameters

#### `newRunTaskRequest'`

``` purescript
newRunTaskRequest' :: String -> ({ cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), count :: Maybe (BoxedInteger), startedBy :: Maybe (String), group :: Maybe (String), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) } -> { cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), count :: Maybe (BoxedInteger), startedBy :: Maybe (String), group :: Maybe (String), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }) -> RunTaskRequest
```

Constructs RunTaskRequest's fields from required parameters

#### `RunTaskResponse`

``` purescript
newtype RunTaskResponse
  = RunTaskResponse { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype RunTaskResponse _
Generic RunTaskResponse _
Show RunTaskResponse
Decode RunTaskResponse
Encode RunTaskResponse
```

#### `newRunTaskResponse`

``` purescript
newRunTaskResponse :: RunTaskResponse
```

Constructs RunTaskResponse from required parameters

#### `newRunTaskResponse'`

``` purescript
newRunTaskResponse' :: ({ tasks :: Maybe (Tasks), failures :: Maybe (Failures) } -> { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }) -> RunTaskResponse
```

Constructs RunTaskResponse's fields from required parameters

#### `ServerException`

``` purescript
newtype ServerException
  = ServerException { message :: Maybe (String) }
```

<p>These errors are usually caused by a server issue.</p>

##### Instances
``` purescript
Newtype ServerException _
Generic ServerException _
Show ServerException
Decode ServerException
Encode ServerException
```

#### `newServerException`

``` purescript
newServerException :: ServerException
```

Constructs ServerException from required parameters

#### `newServerException'`

``` purescript
newServerException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ServerException
```

Constructs ServerException's fields from required parameters

#### `Service`

``` purescript
newtype Service
  = Service { serviceArn :: Maybe (String), serviceName :: Maybe (String), clusterArn :: Maybe (String), loadBalancers :: Maybe (LoadBalancers), status :: Maybe (String), desiredCount :: Maybe (Int), runningCount :: Maybe (Int), pendingCount :: Maybe (Int), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), deployments :: Maybe (Deployments), roleArn :: Maybe (String), events :: Maybe (ServiceEvents), createdAt :: Maybe (Timestamp), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }
```

<p>Details on a service within a cluster</p>

##### Instances
``` purescript
Newtype Service _
Generic Service _
Show Service
Decode Service
Encode Service
```

#### `newService`

``` purescript
newService :: Service
```

Constructs Service from required parameters

#### `newService'`

``` purescript
newService' :: ({ serviceArn :: Maybe (String), serviceName :: Maybe (String), clusterArn :: Maybe (String), loadBalancers :: Maybe (LoadBalancers), status :: Maybe (String), desiredCount :: Maybe (Int), runningCount :: Maybe (Int), pendingCount :: Maybe (Int), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), deployments :: Maybe (Deployments), roleArn :: Maybe (String), events :: Maybe (ServiceEvents), createdAt :: Maybe (Timestamp), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) } -> { serviceArn :: Maybe (String), serviceName :: Maybe (String), clusterArn :: Maybe (String), loadBalancers :: Maybe (LoadBalancers), status :: Maybe (String), desiredCount :: Maybe (Int), runningCount :: Maybe (Int), pendingCount :: Maybe (Int), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), deployments :: Maybe (Deployments), roleArn :: Maybe (String), events :: Maybe (ServiceEvents), createdAt :: Maybe (Timestamp), placementConstraints :: Maybe (PlacementConstraints), placementStrategy :: Maybe (PlacementStrategies), networkConfiguration :: Maybe (NetworkConfiguration), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceEvent`

``` purescript
newtype ServiceEvent
  = ServiceEvent { id :: Maybe (String), createdAt :: Maybe (Timestamp), message :: Maybe (String) }
```

<p>Details on an event associated with a service.</p>

##### Instances
``` purescript
Newtype ServiceEvent _
Generic ServiceEvent _
Show ServiceEvent
Decode ServiceEvent
Encode ServiceEvent
```

#### `newServiceEvent`

``` purescript
newServiceEvent :: ServiceEvent
```

Constructs ServiceEvent from required parameters

#### `newServiceEvent'`

``` purescript
newServiceEvent' :: ({ id :: Maybe (String), createdAt :: Maybe (Timestamp), message :: Maybe (String) } -> { id :: Maybe (String), createdAt :: Maybe (Timestamp), message :: Maybe (String) }) -> ServiceEvent
```

Constructs ServiceEvent's fields from required parameters

#### `ServiceEvents`

``` purescript
newtype ServiceEvents
  = ServiceEvents (Array ServiceEvent)
```

##### Instances
``` purescript
Newtype ServiceEvents _
Generic ServiceEvents _
Show ServiceEvents
Decode ServiceEvents
Encode ServiceEvents
```

#### `ServiceNotActiveException`

``` purescript
newtype ServiceNotActiveException
  = ServiceNotActiveException NoArguments
```

<p>The specified service is not active. You can't update a service that is inactive. If you have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>

##### Instances
``` purescript
Newtype ServiceNotActiveException _
Generic ServiceNotActiveException _
Show ServiceNotActiveException
Decode ServiceNotActiveException
Encode ServiceNotActiveException
```

#### `ServiceNotFoundException`

``` purescript
newtype ServiceNotFoundException
  = ServiceNotFoundException NoArguments
```

<p>The specified service could not be found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster-specific and region-specific.</p>

##### Instances
``` purescript
Newtype ServiceNotFoundException _
Generic ServiceNotFoundException _
Show ServiceNotFoundException
Decode ServiceNotFoundException
Encode ServiceNotFoundException
```

#### `Services`

``` purescript
newtype Services
  = Services (Array Service)
```

##### Instances
``` purescript
Newtype Services _
Generic Services _
Show Services
Decode Services
Encode Services
```

#### `SortOrder`

``` purescript
newtype SortOrder
  = SortOrder String
```

##### Instances
``` purescript
Newtype SortOrder _
Generic SortOrder _
Show SortOrder
Decode SortOrder
Encode SortOrder
```

#### `StartTaskRequest`

``` purescript
newtype StartTaskRequest
  = StartTaskRequest { cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), containerInstances :: StringList, startedBy :: Maybe (String), group :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }
```

##### Instances
``` purescript
Newtype StartTaskRequest _
Generic StartTaskRequest _
Show StartTaskRequest
Decode StartTaskRequest
Encode StartTaskRequest
```

#### `newStartTaskRequest`

``` purescript
newStartTaskRequest :: StringList -> String -> StartTaskRequest
```

Constructs StartTaskRequest from required parameters

#### `newStartTaskRequest'`

``` purescript
newStartTaskRequest' :: StringList -> String -> ({ cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), containerInstances :: StringList, startedBy :: Maybe (String), group :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) } -> { cluster :: Maybe (String), taskDefinition :: String, overrides :: Maybe (TaskOverride), containerInstances :: StringList, startedBy :: Maybe (String), group :: Maybe (String), networkConfiguration :: Maybe (NetworkConfiguration) }) -> StartTaskRequest
```

Constructs StartTaskRequest's fields from required parameters

#### `StartTaskResponse`

``` purescript
newtype StartTaskResponse
  = StartTaskResponse { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype StartTaskResponse _
Generic StartTaskResponse _
Show StartTaskResponse
Decode StartTaskResponse
Encode StartTaskResponse
```

#### `newStartTaskResponse`

``` purescript
newStartTaskResponse :: StartTaskResponse
```

Constructs StartTaskResponse from required parameters

#### `newStartTaskResponse'`

``` purescript
newStartTaskResponse' :: ({ tasks :: Maybe (Tasks), failures :: Maybe (Failures) } -> { tasks :: Maybe (Tasks), failures :: Maybe (Failures) }) -> StartTaskResponse
```

Constructs StartTaskResponse's fields from required parameters

#### `Statistics`

``` purescript
newtype Statistics
  = Statistics (Array KeyValuePair)
```

##### Instances
``` purescript
Newtype Statistics _
Generic Statistics _
Show Statistics
Decode Statistics
Encode Statistics
```

#### `StopTaskRequest`

``` purescript
newtype StopTaskRequest
  = StopTaskRequest { cluster :: Maybe (String), task :: String, reason :: Maybe (String) }
```

##### Instances
``` purescript
Newtype StopTaskRequest _
Generic StopTaskRequest _
Show StopTaskRequest
Decode StopTaskRequest
Encode StopTaskRequest
```

#### `newStopTaskRequest`

``` purescript
newStopTaskRequest :: String -> StopTaskRequest
```

Constructs StopTaskRequest from required parameters

#### `newStopTaskRequest'`

``` purescript
newStopTaskRequest' :: String -> ({ cluster :: Maybe (String), task :: String, reason :: Maybe (String) } -> { cluster :: Maybe (String), task :: String, reason :: Maybe (String) }) -> StopTaskRequest
```

Constructs StopTaskRequest's fields from required parameters

#### `StopTaskResponse`

``` purescript
newtype StopTaskResponse
  = StopTaskResponse { task :: Maybe (Task) }
```

##### Instances
``` purescript
Newtype StopTaskResponse _
Generic StopTaskResponse _
Show StopTaskResponse
Decode StopTaskResponse
Encode StopTaskResponse
```

#### `newStopTaskResponse`

``` purescript
newStopTaskResponse :: StopTaskResponse
```

Constructs StopTaskResponse from required parameters

#### `newStopTaskResponse'`

``` purescript
newStopTaskResponse' :: ({ task :: Maybe (Task) } -> { task :: Maybe (Task) }) -> StopTaskResponse
```

Constructs StopTaskResponse's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `SubmitContainerStateChangeRequest`

``` purescript
newtype SubmitContainerStateChangeRequest
  = SubmitContainerStateChangeRequest { cluster :: Maybe (String), task :: Maybe (String), containerName :: Maybe (String), status :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings) }
```

##### Instances
``` purescript
Newtype SubmitContainerStateChangeRequest _
Generic SubmitContainerStateChangeRequest _
Show SubmitContainerStateChangeRequest
Decode SubmitContainerStateChangeRequest
Encode SubmitContainerStateChangeRequest
```

#### `newSubmitContainerStateChangeRequest`

``` purescript
newSubmitContainerStateChangeRequest :: SubmitContainerStateChangeRequest
```

Constructs SubmitContainerStateChangeRequest from required parameters

#### `newSubmitContainerStateChangeRequest'`

``` purescript
newSubmitContainerStateChangeRequest' :: ({ cluster :: Maybe (String), task :: Maybe (String), containerName :: Maybe (String), status :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings) } -> { cluster :: Maybe (String), task :: Maybe (String), containerName :: Maybe (String), status :: Maybe (String), exitCode :: Maybe (BoxedInteger), reason :: Maybe (String), networkBindings :: Maybe (NetworkBindings) }) -> SubmitContainerStateChangeRequest
```

Constructs SubmitContainerStateChangeRequest's fields from required parameters

#### `SubmitContainerStateChangeResponse`

``` purescript
newtype SubmitContainerStateChangeResponse
  = SubmitContainerStateChangeResponse { acknowledgment :: Maybe (String) }
```

##### Instances
``` purescript
Newtype SubmitContainerStateChangeResponse _
Generic SubmitContainerStateChangeResponse _
Show SubmitContainerStateChangeResponse
Decode SubmitContainerStateChangeResponse
Encode SubmitContainerStateChangeResponse
```

#### `newSubmitContainerStateChangeResponse`

``` purescript
newSubmitContainerStateChangeResponse :: SubmitContainerStateChangeResponse
```

Constructs SubmitContainerStateChangeResponse from required parameters

#### `newSubmitContainerStateChangeResponse'`

``` purescript
newSubmitContainerStateChangeResponse' :: ({ acknowledgment :: Maybe (String) } -> { acknowledgment :: Maybe (String) }) -> SubmitContainerStateChangeResponse
```

Constructs SubmitContainerStateChangeResponse's fields from required parameters

#### `SubmitTaskStateChangeRequest`

``` purescript
newtype SubmitTaskStateChangeRequest
  = SubmitTaskStateChangeRequest { cluster :: Maybe (String), task :: Maybe (String), status :: Maybe (String), reason :: Maybe (String), containers :: Maybe (ContainerStateChanges), attachments :: Maybe (AttachmentStateChanges), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp) }
```

##### Instances
``` purescript
Newtype SubmitTaskStateChangeRequest _
Generic SubmitTaskStateChangeRequest _
Show SubmitTaskStateChangeRequest
Decode SubmitTaskStateChangeRequest
Encode SubmitTaskStateChangeRequest
```

#### `newSubmitTaskStateChangeRequest`

``` purescript
newSubmitTaskStateChangeRequest :: SubmitTaskStateChangeRequest
```

Constructs SubmitTaskStateChangeRequest from required parameters

#### `newSubmitTaskStateChangeRequest'`

``` purescript
newSubmitTaskStateChangeRequest' :: ({ cluster :: Maybe (String), task :: Maybe (String), status :: Maybe (String), reason :: Maybe (String), containers :: Maybe (ContainerStateChanges), attachments :: Maybe (AttachmentStateChanges), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp) } -> { cluster :: Maybe (String), task :: Maybe (String), status :: Maybe (String), reason :: Maybe (String), containers :: Maybe (ContainerStateChanges), attachments :: Maybe (AttachmentStateChanges), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp) }) -> SubmitTaskStateChangeRequest
```

Constructs SubmitTaskStateChangeRequest's fields from required parameters

#### `SubmitTaskStateChangeResponse`

``` purescript
newtype SubmitTaskStateChangeResponse
  = SubmitTaskStateChangeResponse { acknowledgment :: Maybe (String) }
```

##### Instances
``` purescript
Newtype SubmitTaskStateChangeResponse _
Generic SubmitTaskStateChangeResponse _
Show SubmitTaskStateChangeResponse
Decode SubmitTaskStateChangeResponse
Encode SubmitTaskStateChangeResponse
```

#### `newSubmitTaskStateChangeResponse`

``` purescript
newSubmitTaskStateChangeResponse :: SubmitTaskStateChangeResponse
```

Constructs SubmitTaskStateChangeResponse from required parameters

#### `newSubmitTaskStateChangeResponse'`

``` purescript
newSubmitTaskStateChangeResponse' :: ({ acknowledgment :: Maybe (String) } -> { acknowledgment :: Maybe (String) }) -> SubmitTaskStateChangeResponse
```

Constructs SubmitTaskStateChangeResponse's fields from required parameters

#### `TargetNotFoundException`

``` purescript
newtype TargetNotFoundException
  = TargetNotFoundException NoArguments
```

<p>The specified target could not be found. You can view your available container instances with <a>ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and region-specific.</p>

##### Instances
``` purescript
Newtype TargetNotFoundException _
Generic TargetNotFoundException _
Show TargetNotFoundException
Decode TargetNotFoundException
Encode TargetNotFoundException
```

#### `TargetType`

``` purescript
newtype TargetType
  = TargetType String
```

##### Instances
``` purescript
Newtype TargetType _
Generic TargetType _
Show TargetType
Decode TargetType
Encode TargetType
```

#### `Task`

``` purescript
newtype Task
  = Task { taskArn :: Maybe (String), clusterArn :: Maybe (String), taskDefinitionArn :: Maybe (String), containerInstanceArn :: Maybe (String), overrides :: Maybe (TaskOverride), lastStatus :: Maybe (String), desiredStatus :: Maybe (String), cpu :: Maybe (String), memory :: Maybe (String), containers :: Maybe (Containers), startedBy :: Maybe (String), version :: Maybe (Number), stoppedReason :: Maybe (String), connectivity :: Maybe (Connectivity), connectivityAt :: Maybe (Timestamp), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp), createdAt :: Maybe (Timestamp), startedAt :: Maybe (Timestamp), stoppingAt :: Maybe (Timestamp), stoppedAt :: Maybe (Timestamp), group :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), attachments :: Maybe (Attachments), healthStatus :: Maybe (HealthStatus) }
```

<p>Details on a task in a cluster.</p>

##### Instances
``` purescript
Newtype Task _
Generic Task _
Show Task
Decode Task
Encode Task
```

#### `newTask`

``` purescript
newTask :: Task
```

Constructs Task from required parameters

#### `newTask'`

``` purescript
newTask' :: ({ taskArn :: Maybe (String), clusterArn :: Maybe (String), taskDefinitionArn :: Maybe (String), containerInstanceArn :: Maybe (String), overrides :: Maybe (TaskOverride), lastStatus :: Maybe (String), desiredStatus :: Maybe (String), cpu :: Maybe (String), memory :: Maybe (String), containers :: Maybe (Containers), startedBy :: Maybe (String), version :: Maybe (Number), stoppedReason :: Maybe (String), connectivity :: Maybe (Connectivity), connectivityAt :: Maybe (Timestamp), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp), createdAt :: Maybe (Timestamp), startedAt :: Maybe (Timestamp), stoppingAt :: Maybe (Timestamp), stoppedAt :: Maybe (Timestamp), group :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), attachments :: Maybe (Attachments), healthStatus :: Maybe (HealthStatus) } -> { taskArn :: Maybe (String), clusterArn :: Maybe (String), taskDefinitionArn :: Maybe (String), containerInstanceArn :: Maybe (String), overrides :: Maybe (TaskOverride), lastStatus :: Maybe (String), desiredStatus :: Maybe (String), cpu :: Maybe (String), memory :: Maybe (String), containers :: Maybe (Containers), startedBy :: Maybe (String), version :: Maybe (Number), stoppedReason :: Maybe (String), connectivity :: Maybe (Connectivity), connectivityAt :: Maybe (Timestamp), pullStartedAt :: Maybe (Timestamp), pullStoppedAt :: Maybe (Timestamp), executionStoppedAt :: Maybe (Timestamp), createdAt :: Maybe (Timestamp), startedAt :: Maybe (Timestamp), stoppingAt :: Maybe (Timestamp), stoppedAt :: Maybe (Timestamp), group :: Maybe (String), launchType :: Maybe (LaunchType), platformVersion :: Maybe (String), attachments :: Maybe (Attachments), healthStatus :: Maybe (HealthStatus) }) -> Task
```

Constructs Task's fields from required parameters

#### `TaskDefinition`

``` purescript
newtype TaskDefinition
  = TaskDefinition { taskDefinitionArn :: Maybe (String), containerDefinitions :: Maybe (ContainerDefinitions), family :: Maybe (String), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), revision :: Maybe (Int), volumes :: Maybe (VolumeList), status :: Maybe (TaskDefinitionStatus), requiresAttributes :: Maybe (RequiresAttributes), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), compatibilities :: Maybe (CompatibilityList), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) }
```

<p>Details of a task definition.</p>

##### Instances
``` purescript
Newtype TaskDefinition _
Generic TaskDefinition _
Show TaskDefinition
Decode TaskDefinition
Encode TaskDefinition
```

#### `newTaskDefinition`

``` purescript
newTaskDefinition :: TaskDefinition
```

Constructs TaskDefinition from required parameters

#### `newTaskDefinition'`

``` purescript
newTaskDefinition' :: ({ taskDefinitionArn :: Maybe (String), containerDefinitions :: Maybe (ContainerDefinitions), family :: Maybe (String), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), revision :: Maybe (Int), volumes :: Maybe (VolumeList), status :: Maybe (TaskDefinitionStatus), requiresAttributes :: Maybe (RequiresAttributes), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), compatibilities :: Maybe (CompatibilityList), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) } -> { taskDefinitionArn :: Maybe (String), containerDefinitions :: Maybe (ContainerDefinitions), family :: Maybe (String), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String), networkMode :: Maybe (NetworkMode), revision :: Maybe (Int), volumes :: Maybe (VolumeList), status :: Maybe (TaskDefinitionStatus), requiresAttributes :: Maybe (RequiresAttributes), placementConstraints :: Maybe (TaskDefinitionPlacementConstraints), compatibilities :: Maybe (CompatibilityList), requiresCompatibilities :: Maybe (CompatibilityList), cpu :: Maybe (String), memory :: Maybe (String) }) -> TaskDefinition
```

Constructs TaskDefinition's fields from required parameters

#### `TaskDefinitionFamilyStatus`

``` purescript
newtype TaskDefinitionFamilyStatus
  = TaskDefinitionFamilyStatus String
```

##### Instances
``` purescript
Newtype TaskDefinitionFamilyStatus _
Generic TaskDefinitionFamilyStatus _
Show TaskDefinitionFamilyStatus
Decode TaskDefinitionFamilyStatus
Encode TaskDefinitionFamilyStatus
```

#### `TaskDefinitionPlacementConstraint`

``` purescript
newtype TaskDefinitionPlacementConstraint
  = TaskDefinitionPlacementConstraint { "type" :: Maybe (TaskDefinitionPlacementConstraintType), expression :: Maybe (String) }
```

<p>An object representing a constraint on task placement in the task definition.</p> <p>If you are using the Fargate launch type, task placement constraints are not supported.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype TaskDefinitionPlacementConstraint _
Generic TaskDefinitionPlacementConstraint _
Show TaskDefinitionPlacementConstraint
Decode TaskDefinitionPlacementConstraint
Encode TaskDefinitionPlacementConstraint
```

#### `newTaskDefinitionPlacementConstraint`

``` purescript
newTaskDefinitionPlacementConstraint :: TaskDefinitionPlacementConstraint
```

Constructs TaskDefinitionPlacementConstraint from required parameters

#### `newTaskDefinitionPlacementConstraint'`

``` purescript
newTaskDefinitionPlacementConstraint' :: ({ "type" :: Maybe (TaskDefinitionPlacementConstraintType), expression :: Maybe (String) } -> { "type" :: Maybe (TaskDefinitionPlacementConstraintType), expression :: Maybe (String) }) -> TaskDefinitionPlacementConstraint
```

Constructs TaskDefinitionPlacementConstraint's fields from required parameters

#### `TaskDefinitionPlacementConstraintType`

``` purescript
newtype TaskDefinitionPlacementConstraintType
  = TaskDefinitionPlacementConstraintType String
```

##### Instances
``` purescript
Newtype TaskDefinitionPlacementConstraintType _
Generic TaskDefinitionPlacementConstraintType _
Show TaskDefinitionPlacementConstraintType
Decode TaskDefinitionPlacementConstraintType
Encode TaskDefinitionPlacementConstraintType
```

#### `TaskDefinitionPlacementConstraints`

``` purescript
newtype TaskDefinitionPlacementConstraints
  = TaskDefinitionPlacementConstraints (Array TaskDefinitionPlacementConstraint)
```

##### Instances
``` purescript
Newtype TaskDefinitionPlacementConstraints _
Generic TaskDefinitionPlacementConstraints _
Show TaskDefinitionPlacementConstraints
Decode TaskDefinitionPlacementConstraints
Encode TaskDefinitionPlacementConstraints
```

#### `TaskDefinitionStatus`

``` purescript
newtype TaskDefinitionStatus
  = TaskDefinitionStatus String
```

##### Instances
``` purescript
Newtype TaskDefinitionStatus _
Generic TaskDefinitionStatus _
Show TaskDefinitionStatus
Decode TaskDefinitionStatus
Encode TaskDefinitionStatus
```

#### `TaskOverride`

``` purescript
newtype TaskOverride
  = TaskOverride { containerOverrides :: Maybe (ContainerOverrides), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String) }
```

<p>The overrides associated with a task.</p>

##### Instances
``` purescript
Newtype TaskOverride _
Generic TaskOverride _
Show TaskOverride
Decode TaskOverride
Encode TaskOverride
```

#### `newTaskOverride`

``` purescript
newTaskOverride :: TaskOverride
```

Constructs TaskOverride from required parameters

#### `newTaskOverride'`

``` purescript
newTaskOverride' :: ({ containerOverrides :: Maybe (ContainerOverrides), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String) } -> { containerOverrides :: Maybe (ContainerOverrides), taskRoleArn :: Maybe (String), executionRoleArn :: Maybe (String) }) -> TaskOverride
```

Constructs TaskOverride's fields from required parameters

#### `Tasks`

``` purescript
newtype Tasks
  = Tasks (Array Task)
```

##### Instances
``` purescript
Newtype Tasks _
Generic Tasks _
Show Tasks
Decode Tasks
Encode Tasks
```

#### `TransportProtocol`

``` purescript
newtype TransportProtocol
  = TransportProtocol String
```

##### Instances
``` purescript
Newtype TransportProtocol _
Generic TransportProtocol _
Show TransportProtocol
Decode TransportProtocol
Encode TransportProtocol
```

#### `Ulimit`

``` purescript
newtype Ulimit
  = Ulimit { name :: UlimitName, softLimit :: Int, hardLimit :: Int }
```

<p>The <code>ulimit</code> settings to pass to the container.</p>

##### Instances
``` purescript
Newtype Ulimit _
Generic Ulimit _
Show Ulimit
Decode Ulimit
Encode Ulimit
```

#### `newUlimit`

``` purescript
newUlimit :: Int -> UlimitName -> Int -> Ulimit
```

Constructs Ulimit from required parameters

#### `newUlimit'`

``` purescript
newUlimit' :: Int -> UlimitName -> Int -> ({ name :: UlimitName, softLimit :: Int, hardLimit :: Int } -> { name :: UlimitName, softLimit :: Int, hardLimit :: Int }) -> Ulimit
```

Constructs Ulimit's fields from required parameters

#### `UlimitList`

``` purescript
newtype UlimitList
  = UlimitList (Array Ulimit)
```

##### Instances
``` purescript
Newtype UlimitList _
Generic UlimitList _
Show UlimitList
Decode UlimitList
Encode UlimitList
```

#### `UlimitName`

``` purescript
newtype UlimitName
  = UlimitName String
```

##### Instances
``` purescript
Newtype UlimitName _
Generic UlimitName _
Show UlimitName
Decode UlimitName
Encode UlimitName
```

#### `UnsupportedFeatureException`

``` purescript
newtype UnsupportedFeatureException
  = UnsupportedFeatureException NoArguments
```

<p>The specified task is not supported in this region.</p>

##### Instances
``` purescript
Newtype UnsupportedFeatureException _
Generic UnsupportedFeatureException _
Show UnsupportedFeatureException
Decode UnsupportedFeatureException
Encode UnsupportedFeatureException
```

#### `UpdateContainerAgentRequest`

``` purescript
newtype UpdateContainerAgentRequest
  = UpdateContainerAgentRequest { cluster :: Maybe (String), containerInstance :: String }
```

##### Instances
``` purescript
Newtype UpdateContainerAgentRequest _
Generic UpdateContainerAgentRequest _
Show UpdateContainerAgentRequest
Decode UpdateContainerAgentRequest
Encode UpdateContainerAgentRequest
```

#### `newUpdateContainerAgentRequest`

``` purescript
newUpdateContainerAgentRequest :: String -> UpdateContainerAgentRequest
```

Constructs UpdateContainerAgentRequest from required parameters

#### `newUpdateContainerAgentRequest'`

``` purescript
newUpdateContainerAgentRequest' :: String -> ({ cluster :: Maybe (String), containerInstance :: String } -> { cluster :: Maybe (String), containerInstance :: String }) -> UpdateContainerAgentRequest
```

Constructs UpdateContainerAgentRequest's fields from required parameters

#### `UpdateContainerAgentResponse`

``` purescript
newtype UpdateContainerAgentResponse
  = UpdateContainerAgentResponse { containerInstance :: Maybe (ContainerInstance) }
```

##### Instances
``` purescript
Newtype UpdateContainerAgentResponse _
Generic UpdateContainerAgentResponse _
Show UpdateContainerAgentResponse
Decode UpdateContainerAgentResponse
Encode UpdateContainerAgentResponse
```

#### `newUpdateContainerAgentResponse`

``` purescript
newUpdateContainerAgentResponse :: UpdateContainerAgentResponse
```

Constructs UpdateContainerAgentResponse from required parameters

#### `newUpdateContainerAgentResponse'`

``` purescript
newUpdateContainerAgentResponse' :: ({ containerInstance :: Maybe (ContainerInstance) } -> { containerInstance :: Maybe (ContainerInstance) }) -> UpdateContainerAgentResponse
```

Constructs UpdateContainerAgentResponse's fields from required parameters

#### `UpdateContainerInstancesStateRequest`

``` purescript
newtype UpdateContainerInstancesStateRequest
  = UpdateContainerInstancesStateRequest { cluster :: Maybe (String), containerInstances :: StringList, status :: ContainerInstanceStatus }
```

##### Instances
``` purescript
Newtype UpdateContainerInstancesStateRequest _
Generic UpdateContainerInstancesStateRequest _
Show UpdateContainerInstancesStateRequest
Decode UpdateContainerInstancesStateRequest
Encode UpdateContainerInstancesStateRequest
```

#### `newUpdateContainerInstancesStateRequest`

``` purescript
newUpdateContainerInstancesStateRequest :: StringList -> ContainerInstanceStatus -> UpdateContainerInstancesStateRequest
```

Constructs UpdateContainerInstancesStateRequest from required parameters

#### `newUpdateContainerInstancesStateRequest'`

``` purescript
newUpdateContainerInstancesStateRequest' :: StringList -> ContainerInstanceStatus -> ({ cluster :: Maybe (String), containerInstances :: StringList, status :: ContainerInstanceStatus } -> { cluster :: Maybe (String), containerInstances :: StringList, status :: ContainerInstanceStatus }) -> UpdateContainerInstancesStateRequest
```

Constructs UpdateContainerInstancesStateRequest's fields from required parameters

#### `UpdateContainerInstancesStateResponse`

``` purescript
newtype UpdateContainerInstancesStateResponse
  = UpdateContainerInstancesStateResponse { containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) }
```

##### Instances
``` purescript
Newtype UpdateContainerInstancesStateResponse _
Generic UpdateContainerInstancesStateResponse _
Show UpdateContainerInstancesStateResponse
Decode UpdateContainerInstancesStateResponse
Encode UpdateContainerInstancesStateResponse
```

#### `newUpdateContainerInstancesStateResponse`

``` purescript
newUpdateContainerInstancesStateResponse :: UpdateContainerInstancesStateResponse
```

Constructs UpdateContainerInstancesStateResponse from required parameters

#### `newUpdateContainerInstancesStateResponse'`

``` purescript
newUpdateContainerInstancesStateResponse' :: ({ containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) } -> { containerInstances :: Maybe (ContainerInstances), failures :: Maybe (Failures) }) -> UpdateContainerInstancesStateResponse
```

Constructs UpdateContainerInstancesStateResponse's fields from required parameters

#### `UpdateInProgressException`

``` purescript
newtype UpdateInProgressException
  = UpdateInProgressException NoArguments
```

<p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>

##### Instances
``` purescript
Newtype UpdateInProgressException _
Generic UpdateInProgressException _
Show UpdateInProgressException
Decode UpdateInProgressException
Encode UpdateInProgressException
```

#### `UpdateServiceRequest`

``` purescript
newtype UpdateServiceRequest
  = UpdateServiceRequest { cluster :: Maybe (String), service :: String, desiredCount :: Maybe (BoxedInteger), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), networkConfiguration :: Maybe (NetworkConfiguration), platformVersion :: Maybe (String), forceNewDeployment :: Maybe (Boolean), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }
```

##### Instances
``` purescript
Newtype UpdateServiceRequest _
Generic UpdateServiceRequest _
Show UpdateServiceRequest
Decode UpdateServiceRequest
Encode UpdateServiceRequest
```

#### `newUpdateServiceRequest`

``` purescript
newUpdateServiceRequest :: String -> UpdateServiceRequest
```

Constructs UpdateServiceRequest from required parameters

#### `newUpdateServiceRequest'`

``` purescript
newUpdateServiceRequest' :: String -> ({ cluster :: Maybe (String), service :: String, desiredCount :: Maybe (BoxedInteger), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), networkConfiguration :: Maybe (NetworkConfiguration), platformVersion :: Maybe (String), forceNewDeployment :: Maybe (Boolean), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) } -> { cluster :: Maybe (String), service :: String, desiredCount :: Maybe (BoxedInteger), taskDefinition :: Maybe (String), deploymentConfiguration :: Maybe (DeploymentConfiguration), networkConfiguration :: Maybe (NetworkConfiguration), platformVersion :: Maybe (String), forceNewDeployment :: Maybe (Boolean), healthCheckGracePeriodSeconds :: Maybe (BoxedInteger) }) -> UpdateServiceRequest
```

Constructs UpdateServiceRequest's fields from required parameters

#### `UpdateServiceResponse`

``` purescript
newtype UpdateServiceResponse
  = UpdateServiceResponse { service :: Maybe (Service) }
```

##### Instances
``` purescript
Newtype UpdateServiceResponse _
Generic UpdateServiceResponse _
Show UpdateServiceResponse
Decode UpdateServiceResponse
Encode UpdateServiceResponse
```

#### `newUpdateServiceResponse`

``` purescript
newUpdateServiceResponse :: UpdateServiceResponse
```

Constructs UpdateServiceResponse from required parameters

#### `newUpdateServiceResponse'`

``` purescript
newUpdateServiceResponse' :: ({ service :: Maybe (Service) } -> { service :: Maybe (Service) }) -> UpdateServiceResponse
```

Constructs UpdateServiceResponse's fields from required parameters

#### `VersionInfo`

``` purescript
newtype VersionInfo
  = VersionInfo { agentVersion :: Maybe (String), agentHash :: Maybe (String), dockerVersion :: Maybe (String) }
```

<p>The Docker and Amazon ECS container agent version information about a container instance.</p>

##### Instances
``` purescript
Newtype VersionInfo _
Generic VersionInfo _
Show VersionInfo
Decode VersionInfo
Encode VersionInfo
```

#### `newVersionInfo`

``` purescript
newVersionInfo :: VersionInfo
```

Constructs VersionInfo from required parameters

#### `newVersionInfo'`

``` purescript
newVersionInfo' :: ({ agentVersion :: Maybe (String), agentHash :: Maybe (String), dockerVersion :: Maybe (String) } -> { agentVersion :: Maybe (String), agentHash :: Maybe (String), dockerVersion :: Maybe (String) }) -> VersionInfo
```

Constructs VersionInfo's fields from required parameters

#### `Volume`

``` purescript
newtype Volume
  = Volume { name :: Maybe (String), host :: Maybe (HostVolumeProperties) }
```

<p>A data volume used in a task definition.</p>

##### Instances
``` purescript
Newtype Volume _
Generic Volume _
Show Volume
Decode Volume
Encode Volume
```

#### `newVolume`

``` purescript
newVolume :: Volume
```

Constructs Volume from required parameters

#### `newVolume'`

``` purescript
newVolume' :: ({ name :: Maybe (String), host :: Maybe (HostVolumeProperties) } -> { name :: Maybe (String), host :: Maybe (HostVolumeProperties) }) -> Volume
```

Constructs Volume's fields from required parameters

#### `VolumeFrom`

``` purescript
newtype VolumeFrom
  = VolumeFrom { sourceContainer :: Maybe (String), readOnly :: Maybe (BoxedBoolean) }
```

<p>Details on a data volume from another container in the same task definition.</p>

##### Instances
``` purescript
Newtype VolumeFrom _
Generic VolumeFrom _
Show VolumeFrom
Decode VolumeFrom
Encode VolumeFrom
```

#### `newVolumeFrom`

``` purescript
newVolumeFrom :: VolumeFrom
```

Constructs VolumeFrom from required parameters

#### `newVolumeFrom'`

``` purescript
newVolumeFrom' :: ({ sourceContainer :: Maybe (String), readOnly :: Maybe (BoxedBoolean) } -> { sourceContainer :: Maybe (String), readOnly :: Maybe (BoxedBoolean) }) -> VolumeFrom
```

Constructs VolumeFrom's fields from required parameters

#### `VolumeFromList`

``` purescript
newtype VolumeFromList
  = VolumeFromList (Array VolumeFrom)
```

##### Instances
``` purescript
Newtype VolumeFromList _
Generic VolumeFromList _
Show VolumeFromList
Decode VolumeFromList
Encode VolumeFromList
```

#### `VolumeList`

``` purescript
newtype VolumeList
  = VolumeList (Array Volume)
```

##### Instances
``` purescript
Newtype VolumeList _
Generic VolumeList _
Show VolumeList
Decode VolumeList
Encode VolumeList
```


