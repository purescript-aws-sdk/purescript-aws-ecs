
module AWS.ECS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>You do not have authorization to perform the requested action.</p>
newtype AccessDeniedException = AccessDeniedException Types.NoArguments
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where decode = genericDecode options
instance encodeAccessDeniedException :: Encode AccessDeniedException where encode = genericEncode options



newtype AgentUpdateStatus = AgentUpdateStatus String
derive instance newtypeAgentUpdateStatus :: Newtype AgentUpdateStatus _
derive instance repGenericAgentUpdateStatus :: Generic AgentUpdateStatus _
instance showAgentUpdateStatus :: Show AgentUpdateStatus where show = genericShow
instance decodeAgentUpdateStatus :: Decode AgentUpdateStatus where decode = genericDecode options
instance encodeAgentUpdateStatus :: Encode AgentUpdateStatus where encode = genericEncode options



newtype AssignPublicIp = AssignPublicIp String
derive instance newtypeAssignPublicIp :: Newtype AssignPublicIp _
derive instance repGenericAssignPublicIp :: Generic AssignPublicIp _
instance showAssignPublicIp :: Show AssignPublicIp where show = genericShow
instance decodeAssignPublicIp :: Decode AssignPublicIp where decode = genericDecode options
instance encodeAssignPublicIp :: Encode AssignPublicIp where encode = genericEncode options



-- | <p>An object representing a container instance or task attachment.</p>
newtype Attachment = Attachment 
  { "id" :: Maybe (String)
  , "type" :: Maybe (String)
  , "status" :: Maybe (String)
  , "details" :: Maybe (AttachmentDetails)
  }
derive instance newtypeAttachment :: Newtype Attachment _
derive instance repGenericAttachment :: Generic Attachment _
instance showAttachment :: Show Attachment where show = genericShow
instance decodeAttachment :: Decode Attachment where decode = genericDecode options
instance encodeAttachment :: Encode Attachment where encode = genericEncode options

-- | Constructs Attachment from required parameters
newAttachment :: Attachment
newAttachment  = Attachment { "details": Nothing, "id": Nothing, "status": Nothing, "type": Nothing }

-- | Constructs Attachment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachment' :: ( { "id" :: Maybe (String) , "type" :: Maybe (String) , "status" :: Maybe (String) , "details" :: Maybe (AttachmentDetails) } -> {"id" :: Maybe (String) , "type" :: Maybe (String) , "status" :: Maybe (String) , "details" :: Maybe (AttachmentDetails) } ) -> Attachment
newAttachment'  customize = (Attachment <<< customize) { "details": Nothing, "id": Nothing, "status": Nothing, "type": Nothing }



newtype AttachmentDetails = AttachmentDetails (Array KeyValuePair)
derive instance newtypeAttachmentDetails :: Newtype AttachmentDetails _
derive instance repGenericAttachmentDetails :: Generic AttachmentDetails _
instance showAttachmentDetails :: Show AttachmentDetails where show = genericShow
instance decodeAttachmentDetails :: Decode AttachmentDetails where decode = genericDecode options
instance encodeAttachmentDetails :: Encode AttachmentDetails where encode = genericEncode options



-- | <p>An object representing a change in state for a task attachment.</p>
newtype AttachmentStateChange = AttachmentStateChange 
  { "attachmentArn" :: (String)
  , "status" :: (String)
  }
derive instance newtypeAttachmentStateChange :: Newtype AttachmentStateChange _
derive instance repGenericAttachmentStateChange :: Generic AttachmentStateChange _
instance showAttachmentStateChange :: Show AttachmentStateChange where show = genericShow
instance decodeAttachmentStateChange :: Decode AttachmentStateChange where decode = genericDecode options
instance encodeAttachmentStateChange :: Encode AttachmentStateChange where encode = genericEncode options

-- | Constructs AttachmentStateChange from required parameters
newAttachmentStateChange :: String -> String -> AttachmentStateChange
newAttachmentStateChange _attachmentArn _status = AttachmentStateChange { "attachmentArn": _attachmentArn, "status": _status }

-- | Constructs AttachmentStateChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachmentStateChange' :: String -> String -> ( { "attachmentArn" :: (String) , "status" :: (String) } -> {"attachmentArn" :: (String) , "status" :: (String) } ) -> AttachmentStateChange
newAttachmentStateChange' _attachmentArn _status customize = (AttachmentStateChange <<< customize) { "attachmentArn": _attachmentArn, "status": _status }



newtype AttachmentStateChanges = AttachmentStateChanges (Array AttachmentStateChange)
derive instance newtypeAttachmentStateChanges :: Newtype AttachmentStateChanges _
derive instance repGenericAttachmentStateChanges :: Generic AttachmentStateChanges _
instance showAttachmentStateChanges :: Show AttachmentStateChanges where show = genericShow
instance decodeAttachmentStateChanges :: Decode AttachmentStateChanges where decode = genericDecode options
instance encodeAttachmentStateChanges :: Encode AttachmentStateChanges where encode = genericEncode options



newtype Attachments = Attachments (Array Attachment)
derive instance newtypeAttachments :: Newtype Attachments _
derive instance repGenericAttachments :: Generic Attachments _
instance showAttachments :: Show Attachments where show = genericShow
instance decodeAttachments :: Decode Attachments where decode = genericDecode options
instance encodeAttachments :: Encode Attachments where encode = genericEncode options



-- | <p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
newtype Attribute = Attribute 
  { "name" :: (String)
  , "value" :: Maybe (String)
  , "targetType" :: Maybe (TargetType)
  , "targetId" :: Maybe (String)
  }
derive instance newtypeAttribute :: Newtype Attribute _
derive instance repGenericAttribute :: Generic Attribute _
instance showAttribute :: Show Attribute where show = genericShow
instance decodeAttribute :: Decode Attribute where decode = genericDecode options
instance encodeAttribute :: Encode Attribute where encode = genericEncode options

-- | Constructs Attribute from required parameters
newAttribute :: String -> Attribute
newAttribute _name = Attribute { "name": _name, "targetId": Nothing, "targetType": Nothing, "value": Nothing }

-- | Constructs Attribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttribute' :: String -> ( { "name" :: (String) , "value" :: Maybe (String) , "targetType" :: Maybe (TargetType) , "targetId" :: Maybe (String) } -> {"name" :: (String) , "value" :: Maybe (String) , "targetType" :: Maybe (TargetType) , "targetId" :: Maybe (String) } ) -> Attribute
newAttribute' _name customize = (Attribute <<< customize) { "name": _name, "targetId": Nothing, "targetType": Nothing, "value": Nothing }



-- | <p>You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with <a>ListAttributes</a>. You can remove existing attributes on a resource with <a>DeleteAttributes</a>.</p>
newtype AttributeLimitExceededException = AttributeLimitExceededException Types.NoArguments
derive instance newtypeAttributeLimitExceededException :: Newtype AttributeLimitExceededException _
derive instance repGenericAttributeLimitExceededException :: Generic AttributeLimitExceededException _
instance showAttributeLimitExceededException :: Show AttributeLimitExceededException where show = genericShow
instance decodeAttributeLimitExceededException :: Decode AttributeLimitExceededException where decode = genericDecode options
instance encodeAttributeLimitExceededException :: Encode AttributeLimitExceededException where encode = genericEncode options



newtype Attributes = Attributes (Array Attribute)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



-- | <p>An object representing the networking details for a task or service.</p>
newtype AwsVpcConfiguration = AwsVpcConfiguration 
  { "subnets" :: (StringList)
  , "securityGroups" :: Maybe (StringList)
  , "assignPublicIp" :: Maybe (AssignPublicIp)
  }
derive instance newtypeAwsVpcConfiguration :: Newtype AwsVpcConfiguration _
derive instance repGenericAwsVpcConfiguration :: Generic AwsVpcConfiguration _
instance showAwsVpcConfiguration :: Show AwsVpcConfiguration where show = genericShow
instance decodeAwsVpcConfiguration :: Decode AwsVpcConfiguration where decode = genericDecode options
instance encodeAwsVpcConfiguration :: Encode AwsVpcConfiguration where encode = genericEncode options

-- | Constructs AwsVpcConfiguration from required parameters
newAwsVpcConfiguration :: StringList -> AwsVpcConfiguration
newAwsVpcConfiguration _subnets = AwsVpcConfiguration { "subnets": _subnets, "assignPublicIp": Nothing, "securityGroups": Nothing }

-- | Constructs AwsVpcConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAwsVpcConfiguration' :: StringList -> ( { "subnets" :: (StringList) , "securityGroups" :: Maybe (StringList) , "assignPublicIp" :: Maybe (AssignPublicIp) } -> {"subnets" :: (StringList) , "securityGroups" :: Maybe (StringList) , "assignPublicIp" :: Maybe (AssignPublicIp) } ) -> AwsVpcConfiguration
newAwsVpcConfiguration' _subnets customize = (AwsVpcConfiguration <<< customize) { "subnets": _subnets, "assignPublicIp": Nothing, "securityGroups": Nothing }



-- | <p>Your AWS account has been blocked. <a href="http://aws.amazon.com/contact-us/">Contact AWS Support</a> for more information.</p>
newtype BlockedException = BlockedException Types.NoArguments
derive instance newtypeBlockedException :: Newtype BlockedException _
derive instance repGenericBlockedException :: Generic BlockedException _
instance showBlockedException :: Show BlockedException where show = genericShow
instance decodeBlockedException :: Decode BlockedException where decode = genericDecode options
instance encodeBlockedException :: Encode BlockedException where encode = genericEncode options



newtype BoxedBoolean = BoxedBoolean Boolean
derive instance newtypeBoxedBoolean :: Newtype BoxedBoolean _
derive instance repGenericBoxedBoolean :: Generic BoxedBoolean _
instance showBoxedBoolean :: Show BoxedBoolean where show = genericShow
instance decodeBoxedBoolean :: Decode BoxedBoolean where decode = genericDecode options
instance encodeBoxedBoolean :: Encode BoxedBoolean where encode = genericEncode options



newtype BoxedInteger = BoxedInteger Int
derive instance newtypeBoxedInteger :: Newtype BoxedInteger _
derive instance repGenericBoxedInteger :: Generic BoxedInteger _
instance showBoxedInteger :: Show BoxedInteger where show = genericShow
instance decodeBoxedInteger :: Decode BoxedInteger where decode = genericDecode options
instance encodeBoxedInteger :: Encode BoxedInteger where encode = genericEncode options



-- | <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permissions to use the action or resource, or specifying an identifier that is not valid.</p>
newtype ClientException = ClientException 
  { "message" :: Maybe (String)
  }
derive instance newtypeClientException :: Newtype ClientException _
derive instance repGenericClientException :: Generic ClientException _
instance showClientException :: Show ClientException where show = genericShow
instance decodeClientException :: Decode ClientException where decode = genericDecode options
instance encodeClientException :: Encode ClientException where encode = genericEncode options

-- | Constructs ClientException from required parameters
newClientException :: ClientException
newClientException  = ClientException { "message": Nothing }

-- | Constructs ClientException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ClientException
newClientException'  customize = (ClientException <<< customize) { "message": Nothing }



-- | <p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>
newtype Cluster = Cluster 
  { "clusterArn" :: Maybe (String)
  , "clusterName" :: Maybe (String)
  , "status" :: Maybe (String)
  , "registeredContainerInstancesCount" :: Maybe (Int)
  , "runningTasksCount" :: Maybe (Int)
  , "pendingTasksCount" :: Maybe (Int)
  , "activeServicesCount" :: Maybe (Int)
  , "statistics" :: Maybe (Statistics)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where show = genericShow
instance decodeCluster :: Decode Cluster where decode = genericDecode options
instance encodeCluster :: Encode Cluster where encode = genericEncode options

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "activeServicesCount": Nothing, "clusterArn": Nothing, "clusterName": Nothing, "pendingTasksCount": Nothing, "registeredContainerInstancesCount": Nothing, "runningTasksCount": Nothing, "statistics": Nothing, "status": Nothing }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "clusterArn" :: Maybe (String) , "clusterName" :: Maybe (String) , "status" :: Maybe (String) , "registeredContainerInstancesCount" :: Maybe (Int) , "runningTasksCount" :: Maybe (Int) , "pendingTasksCount" :: Maybe (Int) , "activeServicesCount" :: Maybe (Int) , "statistics" :: Maybe (Statistics) } -> {"clusterArn" :: Maybe (String) , "clusterName" :: Maybe (String) , "status" :: Maybe (String) , "registeredContainerInstancesCount" :: Maybe (Int) , "runningTasksCount" :: Maybe (Int) , "pendingTasksCount" :: Maybe (Int) , "activeServicesCount" :: Maybe (Int) , "statistics" :: Maybe (Statistics) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "activeServicesCount": Nothing, "clusterArn": Nothing, "clusterName": Nothing, "pendingTasksCount": Nothing, "registeredContainerInstancesCount": Nothing, "runningTasksCount": Nothing, "statistics": Nothing, "status": Nothing }



-- | <p>You cannot delete a cluster that has registered container instances. You must first deregister the container instances before you can delete the cluster. For more information, see <a>DeregisterContainerInstance</a>.</p>
newtype ClusterContainsContainerInstancesException = ClusterContainsContainerInstancesException Types.NoArguments
derive instance newtypeClusterContainsContainerInstancesException :: Newtype ClusterContainsContainerInstancesException _
derive instance repGenericClusterContainsContainerInstancesException :: Generic ClusterContainsContainerInstancesException _
instance showClusterContainsContainerInstancesException :: Show ClusterContainsContainerInstancesException where show = genericShow
instance decodeClusterContainsContainerInstancesException :: Decode ClusterContainsContainerInstancesException where decode = genericDecode options
instance encodeClusterContainsContainerInstancesException :: Encode ClusterContainsContainerInstancesException where encode = genericEncode options



-- | <p>You cannot delete a cluster that contains services. You must first update the service to reduce its desired task count to 0 and then delete the service. For more information, see <a>UpdateService</a> and <a>DeleteService</a>.</p>
newtype ClusterContainsServicesException = ClusterContainsServicesException Types.NoArguments
derive instance newtypeClusterContainsServicesException :: Newtype ClusterContainsServicesException _
derive instance repGenericClusterContainsServicesException :: Generic ClusterContainsServicesException _
instance showClusterContainsServicesException :: Show ClusterContainsServicesException where show = genericShow
instance decodeClusterContainsServicesException :: Decode ClusterContainsServicesException where decode = genericDecode options
instance encodeClusterContainsServicesException :: Encode ClusterContainsServicesException where encode = genericEncode options



-- | <p>You cannot delete a cluster that has active tasks.</p>
newtype ClusterContainsTasksException = ClusterContainsTasksException Types.NoArguments
derive instance newtypeClusterContainsTasksException :: Newtype ClusterContainsTasksException _
derive instance repGenericClusterContainsTasksException :: Generic ClusterContainsTasksException _
instance showClusterContainsTasksException :: Show ClusterContainsTasksException where show = genericShow
instance decodeClusterContainsTasksException :: Decode ClusterContainsTasksException where decode = genericDecode options
instance encodeClusterContainsTasksException :: Encode ClusterContainsTasksException where encode = genericEncode options



newtype ClusterField = ClusterField String
derive instance newtypeClusterField :: Newtype ClusterField _
derive instance repGenericClusterField :: Generic ClusterField _
instance showClusterField :: Show ClusterField where show = genericShow
instance decodeClusterField :: Decode ClusterField where decode = genericDecode options
instance encodeClusterField :: Encode ClusterField where encode = genericEncode options



newtype ClusterFieldList = ClusterFieldList (Array ClusterField)
derive instance newtypeClusterFieldList :: Newtype ClusterFieldList _
derive instance repGenericClusterFieldList :: Generic ClusterFieldList _
instance showClusterFieldList :: Show ClusterFieldList where show = genericShow
instance decodeClusterFieldList :: Decode ClusterFieldList where decode = genericDecode options
instance encodeClusterFieldList :: Encode ClusterFieldList where encode = genericEncode options



-- | <p>The specified cluster could not be found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are region-specific.</p>
newtype ClusterNotFoundException = ClusterNotFoundException Types.NoArguments
derive instance newtypeClusterNotFoundException :: Newtype ClusterNotFoundException _
derive instance repGenericClusterNotFoundException :: Generic ClusterNotFoundException _
instance showClusterNotFoundException :: Show ClusterNotFoundException where show = genericShow
instance decodeClusterNotFoundException :: Decode ClusterNotFoundException where decode = genericDecode options
instance encodeClusterNotFoundException :: Encode ClusterNotFoundException where encode = genericEncode options



newtype Clusters = Clusters (Array Cluster)
derive instance newtypeClusters :: Newtype Clusters _
derive instance repGenericClusters :: Generic Clusters _
instance showClusters :: Show Clusters where show = genericShow
instance decodeClusters :: Decode Clusters where decode = genericDecode options
instance encodeClusters :: Encode Clusters where encode = genericEncode options



newtype Compatibility = Compatibility String
derive instance newtypeCompatibility :: Newtype Compatibility _
derive instance repGenericCompatibility :: Generic Compatibility _
instance showCompatibility :: Show Compatibility where show = genericShow
instance decodeCompatibility :: Decode Compatibility where decode = genericDecode options
instance encodeCompatibility :: Encode Compatibility where encode = genericEncode options



newtype CompatibilityList = CompatibilityList (Array Compatibility)
derive instance newtypeCompatibilityList :: Newtype CompatibilityList _
derive instance repGenericCompatibilityList :: Generic CompatibilityList _
instance showCompatibilityList :: Show CompatibilityList where show = genericShow
instance decodeCompatibilityList :: Decode CompatibilityList where decode = genericDecode options
instance encodeCompatibilityList :: Encode CompatibilityList where encode = genericEncode options



newtype Connectivity = Connectivity String
derive instance newtypeConnectivity :: Newtype Connectivity _
derive instance repGenericConnectivity :: Generic Connectivity _
instance showConnectivity :: Show Connectivity where show = genericShow
instance decodeConnectivity :: Decode Connectivity where decode = genericDecode options
instance encodeConnectivity :: Encode Connectivity where encode = genericEncode options



-- | <p>A Docker container that is part of a task.</p>
newtype Container = Container 
  { "containerArn" :: Maybe (String)
  , "taskArn" :: Maybe (String)
  , "name" :: Maybe (String)
  , "lastStatus" :: Maybe (String)
  , "exitCode" :: Maybe (BoxedInteger)
  , "reason" :: Maybe (String)
  , "networkBindings" :: Maybe (NetworkBindings)
  , "networkInterfaces" :: Maybe (NetworkInterfaces)
  , "healthStatus" :: Maybe (HealthStatus)
  }
derive instance newtypeContainer :: Newtype Container _
derive instance repGenericContainer :: Generic Container _
instance showContainer :: Show Container where show = genericShow
instance decodeContainer :: Decode Container where decode = genericDecode options
instance encodeContainer :: Encode Container where encode = genericEncode options

-- | Constructs Container from required parameters
newContainer :: Container
newContainer  = Container { "containerArn": Nothing, "exitCode": Nothing, "healthStatus": Nothing, "lastStatus": Nothing, "name": Nothing, "networkBindings": Nothing, "networkInterfaces": Nothing, "reason": Nothing, "taskArn": Nothing }

-- | Constructs Container's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainer' :: ( { "containerArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "name" :: Maybe (String) , "lastStatus" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "reason" :: Maybe (String) , "networkBindings" :: Maybe (NetworkBindings) , "networkInterfaces" :: Maybe (NetworkInterfaces) , "healthStatus" :: Maybe (HealthStatus) } -> {"containerArn" :: Maybe (String) , "taskArn" :: Maybe (String) , "name" :: Maybe (String) , "lastStatus" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "reason" :: Maybe (String) , "networkBindings" :: Maybe (NetworkBindings) , "networkInterfaces" :: Maybe (NetworkInterfaces) , "healthStatus" :: Maybe (HealthStatus) } ) -> Container
newContainer'  customize = (Container <<< customize) { "containerArn": Nothing, "exitCode": Nothing, "healthStatus": Nothing, "lastStatus": Nothing, "name": Nothing, "networkBindings": Nothing, "networkInterfaces": Nothing, "reason": Nothing, "taskArn": Nothing }



-- | <p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>
newtype ContainerDefinition = ContainerDefinition 
  { "name" :: Maybe (String)
  , "image" :: Maybe (String)
  , "cpu" :: Maybe (Int)
  , "memory" :: Maybe (BoxedInteger)
  , "memoryReservation" :: Maybe (BoxedInteger)
  , "links" :: Maybe (StringList)
  , "portMappings" :: Maybe (PortMappingList)
  , "essential" :: Maybe (BoxedBoolean)
  , "entryPoint" :: Maybe (StringList)
  , "command" :: Maybe (StringList)
  , "environment" :: Maybe (EnvironmentVariables)
  , "mountPoints" :: Maybe (MountPointList)
  , "volumesFrom" :: Maybe (VolumeFromList)
  , "linuxParameters" :: Maybe (LinuxParameters)
  , "hostname" :: Maybe (String)
  , "user" :: Maybe (String)
  , "workingDirectory" :: Maybe (String)
  , "disableNetworking" :: Maybe (BoxedBoolean)
  , "privileged" :: Maybe (BoxedBoolean)
  , "readonlyRootFilesystem" :: Maybe (BoxedBoolean)
  , "dnsServers" :: Maybe (StringList)
  , "dnsSearchDomains" :: Maybe (StringList)
  , "extraHosts" :: Maybe (HostEntryList)
  , "dockerSecurityOptions" :: Maybe (StringList)
  , "dockerLabels" :: Maybe (DockerLabelsMap)
  , "ulimits" :: Maybe (UlimitList)
  , "logConfiguration" :: Maybe (LogConfiguration)
  , "healthCheck" :: Maybe (HealthCheck)
  }
derive instance newtypeContainerDefinition :: Newtype ContainerDefinition _
derive instance repGenericContainerDefinition :: Generic ContainerDefinition _
instance showContainerDefinition :: Show ContainerDefinition where show = genericShow
instance decodeContainerDefinition :: Decode ContainerDefinition where decode = genericDecode options
instance encodeContainerDefinition :: Encode ContainerDefinition where encode = genericEncode options

-- | Constructs ContainerDefinition from required parameters
newContainerDefinition :: ContainerDefinition
newContainerDefinition  = ContainerDefinition { "command": Nothing, "cpu": Nothing, "disableNetworking": Nothing, "dnsSearchDomains": Nothing, "dnsServers": Nothing, "dockerLabels": Nothing, "dockerSecurityOptions": Nothing, "entryPoint": Nothing, "environment": Nothing, "essential": Nothing, "extraHosts": Nothing, "healthCheck": Nothing, "hostname": Nothing, "image": Nothing, "links": Nothing, "linuxParameters": Nothing, "logConfiguration": Nothing, "memory": Nothing, "memoryReservation": Nothing, "mountPoints": Nothing, "name": Nothing, "portMappings": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "ulimits": Nothing, "user": Nothing, "volumesFrom": Nothing, "workingDirectory": Nothing }

-- | Constructs ContainerDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerDefinition' :: ( { "name" :: Maybe (String) , "image" :: Maybe (String) , "cpu" :: Maybe (Int) , "memory" :: Maybe (BoxedInteger) , "memoryReservation" :: Maybe (BoxedInteger) , "links" :: Maybe (StringList) , "portMappings" :: Maybe (PortMappingList) , "essential" :: Maybe (BoxedBoolean) , "entryPoint" :: Maybe (StringList) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPointList) , "volumesFrom" :: Maybe (VolumeFromList) , "linuxParameters" :: Maybe (LinuxParameters) , "hostname" :: Maybe (String) , "user" :: Maybe (String) , "workingDirectory" :: Maybe (String) , "disableNetworking" :: Maybe (BoxedBoolean) , "privileged" :: Maybe (BoxedBoolean) , "readonlyRootFilesystem" :: Maybe (BoxedBoolean) , "dnsServers" :: Maybe (StringList) , "dnsSearchDomains" :: Maybe (StringList) , "extraHosts" :: Maybe (HostEntryList) , "dockerSecurityOptions" :: Maybe (StringList) , "dockerLabels" :: Maybe (DockerLabelsMap) , "ulimits" :: Maybe (UlimitList) , "logConfiguration" :: Maybe (LogConfiguration) , "healthCheck" :: Maybe (HealthCheck) } -> {"name" :: Maybe (String) , "image" :: Maybe (String) , "cpu" :: Maybe (Int) , "memory" :: Maybe (BoxedInteger) , "memoryReservation" :: Maybe (BoxedInteger) , "links" :: Maybe (StringList) , "portMappings" :: Maybe (PortMappingList) , "essential" :: Maybe (BoxedBoolean) , "entryPoint" :: Maybe (StringList) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) , "mountPoints" :: Maybe (MountPointList) , "volumesFrom" :: Maybe (VolumeFromList) , "linuxParameters" :: Maybe (LinuxParameters) , "hostname" :: Maybe (String) , "user" :: Maybe (String) , "workingDirectory" :: Maybe (String) , "disableNetworking" :: Maybe (BoxedBoolean) , "privileged" :: Maybe (BoxedBoolean) , "readonlyRootFilesystem" :: Maybe (BoxedBoolean) , "dnsServers" :: Maybe (StringList) , "dnsSearchDomains" :: Maybe (StringList) , "extraHosts" :: Maybe (HostEntryList) , "dockerSecurityOptions" :: Maybe (StringList) , "dockerLabels" :: Maybe (DockerLabelsMap) , "ulimits" :: Maybe (UlimitList) , "logConfiguration" :: Maybe (LogConfiguration) , "healthCheck" :: Maybe (HealthCheck) } ) -> ContainerDefinition
newContainerDefinition'  customize = (ContainerDefinition <<< customize) { "command": Nothing, "cpu": Nothing, "disableNetworking": Nothing, "dnsSearchDomains": Nothing, "dnsServers": Nothing, "dockerLabels": Nothing, "dockerSecurityOptions": Nothing, "entryPoint": Nothing, "environment": Nothing, "essential": Nothing, "extraHosts": Nothing, "healthCheck": Nothing, "hostname": Nothing, "image": Nothing, "links": Nothing, "linuxParameters": Nothing, "logConfiguration": Nothing, "memory": Nothing, "memoryReservation": Nothing, "mountPoints": Nothing, "name": Nothing, "portMappings": Nothing, "privileged": Nothing, "readonlyRootFilesystem": Nothing, "ulimits": Nothing, "user": Nothing, "volumesFrom": Nothing, "workingDirectory": Nothing }



newtype ContainerDefinitions = ContainerDefinitions (Array ContainerDefinition)
derive instance newtypeContainerDefinitions :: Newtype ContainerDefinitions _
derive instance repGenericContainerDefinitions :: Generic ContainerDefinitions _
instance showContainerDefinitions :: Show ContainerDefinitions where show = genericShow
instance decodeContainerDefinitions :: Decode ContainerDefinitions where decode = genericDecode options
instance encodeContainerDefinitions :: Encode ContainerDefinitions where encode = genericEncode options



-- | <p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>
newtype ContainerInstance = ContainerInstance 
  { "containerInstanceArn" :: Maybe (String)
  , "ec2InstanceId" :: Maybe (String)
  , "version" :: Maybe (Number)
  , "versionInfo" :: Maybe (VersionInfo)
  , "remainingResources" :: Maybe (Resources)
  , "registeredResources" :: Maybe (Resources)
  , "status" :: Maybe (String)
  , "agentConnected" :: Maybe (Boolean)
  , "runningTasksCount" :: Maybe (Int)
  , "pendingTasksCount" :: Maybe (Int)
  , "agentUpdateStatus" :: Maybe (AgentUpdateStatus)
  , "attributes" :: Maybe (Attributes)
  , "registeredAt" :: Maybe (Types.Timestamp)
  , "attachments" :: Maybe (Attachments)
  }
derive instance newtypeContainerInstance :: Newtype ContainerInstance _
derive instance repGenericContainerInstance :: Generic ContainerInstance _
instance showContainerInstance :: Show ContainerInstance where show = genericShow
instance decodeContainerInstance :: Decode ContainerInstance where decode = genericDecode options
instance encodeContainerInstance :: Encode ContainerInstance where encode = genericEncode options

-- | Constructs ContainerInstance from required parameters
newContainerInstance :: ContainerInstance
newContainerInstance  = ContainerInstance { "agentConnected": Nothing, "agentUpdateStatus": Nothing, "attachments": Nothing, "attributes": Nothing, "containerInstanceArn": Nothing, "ec2InstanceId": Nothing, "pendingTasksCount": Nothing, "registeredAt": Nothing, "registeredResources": Nothing, "remainingResources": Nothing, "runningTasksCount": Nothing, "status": Nothing, "version": Nothing, "versionInfo": Nothing }

-- | Constructs ContainerInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerInstance' :: ( { "containerInstanceArn" :: Maybe (String) , "ec2InstanceId" :: Maybe (String) , "version" :: Maybe (Number) , "versionInfo" :: Maybe (VersionInfo) , "remainingResources" :: Maybe (Resources) , "registeredResources" :: Maybe (Resources) , "status" :: Maybe (String) , "agentConnected" :: Maybe (Boolean) , "runningTasksCount" :: Maybe (Int) , "pendingTasksCount" :: Maybe (Int) , "agentUpdateStatus" :: Maybe (AgentUpdateStatus) , "attributes" :: Maybe (Attributes) , "registeredAt" :: Maybe (Types.Timestamp) , "attachments" :: Maybe (Attachments) } -> {"containerInstanceArn" :: Maybe (String) , "ec2InstanceId" :: Maybe (String) , "version" :: Maybe (Number) , "versionInfo" :: Maybe (VersionInfo) , "remainingResources" :: Maybe (Resources) , "registeredResources" :: Maybe (Resources) , "status" :: Maybe (String) , "agentConnected" :: Maybe (Boolean) , "runningTasksCount" :: Maybe (Int) , "pendingTasksCount" :: Maybe (Int) , "agentUpdateStatus" :: Maybe (AgentUpdateStatus) , "attributes" :: Maybe (Attributes) , "registeredAt" :: Maybe (Types.Timestamp) , "attachments" :: Maybe (Attachments) } ) -> ContainerInstance
newContainerInstance'  customize = (ContainerInstance <<< customize) { "agentConnected": Nothing, "agentUpdateStatus": Nothing, "attachments": Nothing, "attributes": Nothing, "containerInstanceArn": Nothing, "ec2InstanceId": Nothing, "pendingTasksCount": Nothing, "registeredAt": Nothing, "registeredResources": Nothing, "remainingResources": Nothing, "runningTasksCount": Nothing, "status": Nothing, "version": Nothing, "versionInfo": Nothing }



newtype ContainerInstanceStatus = ContainerInstanceStatus String
derive instance newtypeContainerInstanceStatus :: Newtype ContainerInstanceStatus _
derive instance repGenericContainerInstanceStatus :: Generic ContainerInstanceStatus _
instance showContainerInstanceStatus :: Show ContainerInstanceStatus where show = genericShow
instance decodeContainerInstanceStatus :: Decode ContainerInstanceStatus where decode = genericDecode options
instance encodeContainerInstanceStatus :: Encode ContainerInstanceStatus where encode = genericEncode options



newtype ContainerInstances = ContainerInstances (Array ContainerInstance)
derive instance newtypeContainerInstances :: Newtype ContainerInstances _
derive instance repGenericContainerInstances :: Generic ContainerInstances _
instance showContainerInstances :: Show ContainerInstances where show = genericShow
instance decodeContainerInstances :: Decode ContainerInstances where decode = genericDecode options
instance encodeContainerInstances :: Encode ContainerInstances where encode = genericEncode options



-- | <p>The overrides that should be sent to a container.</p>
newtype ContainerOverride = ContainerOverride 
  { "name" :: Maybe (String)
  , "command" :: Maybe (StringList)
  , "environment" :: Maybe (EnvironmentVariables)
  , "cpu" :: Maybe (BoxedInteger)
  , "memory" :: Maybe (BoxedInteger)
  , "memoryReservation" :: Maybe (BoxedInteger)
  }
derive instance newtypeContainerOverride :: Newtype ContainerOverride _
derive instance repGenericContainerOverride :: Generic ContainerOverride _
instance showContainerOverride :: Show ContainerOverride where show = genericShow
instance decodeContainerOverride :: Decode ContainerOverride where decode = genericDecode options
instance encodeContainerOverride :: Encode ContainerOverride where encode = genericEncode options

-- | Constructs ContainerOverride from required parameters
newContainerOverride :: ContainerOverride
newContainerOverride  = ContainerOverride { "command": Nothing, "cpu": Nothing, "environment": Nothing, "memory": Nothing, "memoryReservation": Nothing, "name": Nothing }

-- | Constructs ContainerOverride's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerOverride' :: ( { "name" :: Maybe (String) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) , "cpu" :: Maybe (BoxedInteger) , "memory" :: Maybe (BoxedInteger) , "memoryReservation" :: Maybe (BoxedInteger) } -> {"name" :: Maybe (String) , "command" :: Maybe (StringList) , "environment" :: Maybe (EnvironmentVariables) , "cpu" :: Maybe (BoxedInteger) , "memory" :: Maybe (BoxedInteger) , "memoryReservation" :: Maybe (BoxedInteger) } ) -> ContainerOverride
newContainerOverride'  customize = (ContainerOverride <<< customize) { "command": Nothing, "cpu": Nothing, "environment": Nothing, "memory": Nothing, "memoryReservation": Nothing, "name": Nothing }



newtype ContainerOverrides = ContainerOverrides (Array ContainerOverride)
derive instance newtypeContainerOverrides :: Newtype ContainerOverrides _
derive instance repGenericContainerOverrides :: Generic ContainerOverrides _
instance showContainerOverrides :: Show ContainerOverrides where show = genericShow
instance decodeContainerOverrides :: Decode ContainerOverrides where decode = genericDecode options
instance encodeContainerOverrides :: Encode ContainerOverrides where encode = genericEncode options



-- | <p>An object representing a change in state for a container.</p>
newtype ContainerStateChange = ContainerStateChange 
  { "containerName" :: Maybe (String)
  , "exitCode" :: Maybe (BoxedInteger)
  , "networkBindings" :: Maybe (NetworkBindings)
  , "reason" :: Maybe (String)
  , "status" :: Maybe (String)
  }
derive instance newtypeContainerStateChange :: Newtype ContainerStateChange _
derive instance repGenericContainerStateChange :: Generic ContainerStateChange _
instance showContainerStateChange :: Show ContainerStateChange where show = genericShow
instance decodeContainerStateChange :: Decode ContainerStateChange where decode = genericDecode options
instance encodeContainerStateChange :: Encode ContainerStateChange where encode = genericEncode options

-- | Constructs ContainerStateChange from required parameters
newContainerStateChange :: ContainerStateChange
newContainerStateChange  = ContainerStateChange { "containerName": Nothing, "exitCode": Nothing, "networkBindings": Nothing, "reason": Nothing, "status": Nothing }

-- | Constructs ContainerStateChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerStateChange' :: ( { "containerName" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "networkBindings" :: Maybe (NetworkBindings) , "reason" :: Maybe (String) , "status" :: Maybe (String) } -> {"containerName" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "networkBindings" :: Maybe (NetworkBindings) , "reason" :: Maybe (String) , "status" :: Maybe (String) } ) -> ContainerStateChange
newContainerStateChange'  customize = (ContainerStateChange <<< customize) { "containerName": Nothing, "exitCode": Nothing, "networkBindings": Nothing, "reason": Nothing, "status": Nothing }



newtype ContainerStateChanges = ContainerStateChanges (Array ContainerStateChange)
derive instance newtypeContainerStateChanges :: Newtype ContainerStateChanges _
derive instance repGenericContainerStateChanges :: Generic ContainerStateChanges _
instance showContainerStateChanges :: Show ContainerStateChanges where show = genericShow
instance decodeContainerStateChanges :: Decode ContainerStateChanges where decode = genericDecode options
instance encodeContainerStateChanges :: Encode ContainerStateChanges where encode = genericEncode options



newtype Containers = Containers (Array Container)
derive instance newtypeContainers :: Newtype Containers _
derive instance repGenericContainers :: Generic Containers _
instance showContainers :: Show Containers where show = genericShow
instance decodeContainers :: Decode Containers where decode = genericDecode options
instance encodeContainers :: Encode Containers where encode = genericEncode options



newtype CreateClusterRequest = CreateClusterRequest 
  { "clusterName" :: Maybe (String)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where decode = genericDecode options
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where encode = genericEncode options

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: CreateClusterRequest
newCreateClusterRequest  = CreateClusterRequest { "clusterName": Nothing }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: ( { "clusterName" :: Maybe (String) } -> {"clusterName" :: Maybe (String) } ) -> CreateClusterRequest
newCreateClusterRequest'  customize = (CreateClusterRequest <<< customize) { "clusterName": Nothing }



newtype CreateClusterResponse = CreateClusterResponse 
  { "cluster" :: Maybe (Cluster)
  }
derive instance newtypeCreateClusterResponse :: Newtype CreateClusterResponse _
derive instance repGenericCreateClusterResponse :: Generic CreateClusterResponse _
instance showCreateClusterResponse :: Show CreateClusterResponse where show = genericShow
instance decodeCreateClusterResponse :: Decode CreateClusterResponse where decode = genericDecode options
instance encodeCreateClusterResponse :: Encode CreateClusterResponse where encode = genericEncode options

-- | Constructs CreateClusterResponse from required parameters
newCreateClusterResponse :: CreateClusterResponse
newCreateClusterResponse  = CreateClusterResponse { "cluster": Nothing }

-- | Constructs CreateClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResponse' :: ( { "cluster" :: Maybe (Cluster) } -> {"cluster" :: Maybe (Cluster) } ) -> CreateClusterResponse
newCreateClusterResponse'  customize = (CreateClusterResponse <<< customize) { "cluster": Nothing }



newtype CreateServiceRequest = CreateServiceRequest 
  { "cluster" :: Maybe (String)
  , "serviceName" :: (String)
  , "taskDefinition" :: (String)
  , "loadBalancers" :: Maybe (LoadBalancers)
  , "desiredCount" :: (BoxedInteger)
  , "clientToken" :: Maybe (String)
  , "launchType" :: Maybe (LaunchType)
  , "platformVersion" :: Maybe (String)
  , "role" :: Maybe (String)
  , "deploymentConfiguration" :: Maybe (DeploymentConfiguration)
  , "placementConstraints" :: Maybe (PlacementConstraints)
  , "placementStrategy" :: Maybe (PlacementStrategies)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger)
  }
derive instance newtypeCreateServiceRequest :: Newtype CreateServiceRequest _
derive instance repGenericCreateServiceRequest :: Generic CreateServiceRequest _
instance showCreateServiceRequest :: Show CreateServiceRequest where show = genericShow
instance decodeCreateServiceRequest :: Decode CreateServiceRequest where decode = genericDecode options
instance encodeCreateServiceRequest :: Encode CreateServiceRequest where encode = genericEncode options

-- | Constructs CreateServiceRequest from required parameters
newCreateServiceRequest :: BoxedInteger -> String -> String -> CreateServiceRequest
newCreateServiceRequest _desiredCount _serviceName _taskDefinition = CreateServiceRequest { "desiredCount": _desiredCount, "serviceName": _serviceName, "taskDefinition": _taskDefinition, "clientToken": Nothing, "cluster": Nothing, "deploymentConfiguration": Nothing, "healthCheckGracePeriodSeconds": Nothing, "launchType": Nothing, "loadBalancers": Nothing, "networkConfiguration": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "role": Nothing }

-- | Constructs CreateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceRequest' :: BoxedInteger -> String -> String -> ( { "cluster" :: Maybe (String) , "serviceName" :: (String) , "taskDefinition" :: (String) , "loadBalancers" :: Maybe (LoadBalancers) , "desiredCount" :: (BoxedInteger) , "clientToken" :: Maybe (String) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "role" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } -> {"cluster" :: Maybe (String) , "serviceName" :: (String) , "taskDefinition" :: (String) , "loadBalancers" :: Maybe (LoadBalancers) , "desiredCount" :: (BoxedInteger) , "clientToken" :: Maybe (String) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "role" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } ) -> CreateServiceRequest
newCreateServiceRequest' _desiredCount _serviceName _taskDefinition customize = (CreateServiceRequest <<< customize) { "desiredCount": _desiredCount, "serviceName": _serviceName, "taskDefinition": _taskDefinition, "clientToken": Nothing, "cluster": Nothing, "deploymentConfiguration": Nothing, "healthCheckGracePeriodSeconds": Nothing, "launchType": Nothing, "loadBalancers": Nothing, "networkConfiguration": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "role": Nothing }



newtype CreateServiceResponse = CreateServiceResponse 
  { "service" :: Maybe (Service)
  }
derive instance newtypeCreateServiceResponse :: Newtype CreateServiceResponse _
derive instance repGenericCreateServiceResponse :: Generic CreateServiceResponse _
instance showCreateServiceResponse :: Show CreateServiceResponse where show = genericShow
instance decodeCreateServiceResponse :: Decode CreateServiceResponse where decode = genericDecode options
instance encodeCreateServiceResponse :: Encode CreateServiceResponse where encode = genericEncode options

-- | Constructs CreateServiceResponse from required parameters
newCreateServiceResponse :: CreateServiceResponse
newCreateServiceResponse  = CreateServiceResponse { "service": Nothing }

-- | Constructs CreateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceResponse' :: ( { "service" :: Maybe (Service) } -> {"service" :: Maybe (Service) } ) -> CreateServiceResponse
newCreateServiceResponse'  customize = (CreateServiceResponse <<< customize) { "service": Nothing }



newtype DeleteAttributesRequest = DeleteAttributesRequest 
  { "cluster" :: Maybe (String)
  , "attributes" :: (Attributes)
  }
derive instance newtypeDeleteAttributesRequest :: Newtype DeleteAttributesRequest _
derive instance repGenericDeleteAttributesRequest :: Generic DeleteAttributesRequest _
instance showDeleteAttributesRequest :: Show DeleteAttributesRequest where show = genericShow
instance decodeDeleteAttributesRequest :: Decode DeleteAttributesRequest where decode = genericDecode options
instance encodeDeleteAttributesRequest :: Encode DeleteAttributesRequest where encode = genericEncode options

-- | Constructs DeleteAttributesRequest from required parameters
newDeleteAttributesRequest :: Attributes -> DeleteAttributesRequest
newDeleteAttributesRequest _attributes = DeleteAttributesRequest { "attributes": _attributes, "cluster": Nothing }

-- | Constructs DeleteAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAttributesRequest' :: Attributes -> ( { "cluster" :: Maybe (String) , "attributes" :: (Attributes) } -> {"cluster" :: Maybe (String) , "attributes" :: (Attributes) } ) -> DeleteAttributesRequest
newDeleteAttributesRequest' _attributes customize = (DeleteAttributesRequest <<< customize) { "attributes": _attributes, "cluster": Nothing }



newtype DeleteAttributesResponse = DeleteAttributesResponse 
  { "attributes" :: Maybe (Attributes)
  }
derive instance newtypeDeleteAttributesResponse :: Newtype DeleteAttributesResponse _
derive instance repGenericDeleteAttributesResponse :: Generic DeleteAttributesResponse _
instance showDeleteAttributesResponse :: Show DeleteAttributesResponse where show = genericShow
instance decodeDeleteAttributesResponse :: Decode DeleteAttributesResponse where decode = genericDecode options
instance encodeDeleteAttributesResponse :: Encode DeleteAttributesResponse where encode = genericEncode options

-- | Constructs DeleteAttributesResponse from required parameters
newDeleteAttributesResponse :: DeleteAttributesResponse
newDeleteAttributesResponse  = DeleteAttributesResponse { "attributes": Nothing }

-- | Constructs DeleteAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAttributesResponse' :: ( { "attributes" :: Maybe (Attributes) } -> {"attributes" :: Maybe (Attributes) } ) -> DeleteAttributesResponse
newDeleteAttributesResponse'  customize = (DeleteAttributesResponse <<< customize) { "attributes": Nothing }



newtype DeleteClusterRequest = DeleteClusterRequest 
  { "cluster" :: (String)
  }
derive instance newtypeDeleteClusterRequest :: Newtype DeleteClusterRequest _
derive instance repGenericDeleteClusterRequest :: Generic DeleteClusterRequest _
instance showDeleteClusterRequest :: Show DeleteClusterRequest where show = genericShow
instance decodeDeleteClusterRequest :: Decode DeleteClusterRequest where decode = genericDecode options
instance encodeDeleteClusterRequest :: Encode DeleteClusterRequest where encode = genericEncode options

-- | Constructs DeleteClusterRequest from required parameters
newDeleteClusterRequest :: String -> DeleteClusterRequest
newDeleteClusterRequest _cluster = DeleteClusterRequest { "cluster": _cluster }

-- | Constructs DeleteClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterRequest' :: String -> ( { "cluster" :: (String) } -> {"cluster" :: (String) } ) -> DeleteClusterRequest
newDeleteClusterRequest' _cluster customize = (DeleteClusterRequest <<< customize) { "cluster": _cluster }



newtype DeleteClusterResponse = DeleteClusterResponse 
  { "cluster" :: Maybe (Cluster)
  }
derive instance newtypeDeleteClusterResponse :: Newtype DeleteClusterResponse _
derive instance repGenericDeleteClusterResponse :: Generic DeleteClusterResponse _
instance showDeleteClusterResponse :: Show DeleteClusterResponse where show = genericShow
instance decodeDeleteClusterResponse :: Decode DeleteClusterResponse where decode = genericDecode options
instance encodeDeleteClusterResponse :: Encode DeleteClusterResponse where encode = genericEncode options

-- | Constructs DeleteClusterResponse from required parameters
newDeleteClusterResponse :: DeleteClusterResponse
newDeleteClusterResponse  = DeleteClusterResponse { "cluster": Nothing }

-- | Constructs DeleteClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterResponse' :: ( { "cluster" :: Maybe (Cluster) } -> {"cluster" :: Maybe (Cluster) } ) -> DeleteClusterResponse
newDeleteClusterResponse'  customize = (DeleteClusterResponse <<< customize) { "cluster": Nothing }



newtype DeleteServiceRequest = DeleteServiceRequest 
  { "cluster" :: Maybe (String)
  , "service" :: (String)
  }
derive instance newtypeDeleteServiceRequest :: Newtype DeleteServiceRequest _
derive instance repGenericDeleteServiceRequest :: Generic DeleteServiceRequest _
instance showDeleteServiceRequest :: Show DeleteServiceRequest where show = genericShow
instance decodeDeleteServiceRequest :: Decode DeleteServiceRequest where decode = genericDecode options
instance encodeDeleteServiceRequest :: Encode DeleteServiceRequest where encode = genericEncode options

-- | Constructs DeleteServiceRequest from required parameters
newDeleteServiceRequest :: String -> DeleteServiceRequest
newDeleteServiceRequest _service = DeleteServiceRequest { "service": _service, "cluster": Nothing }

-- | Constructs DeleteServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceRequest' :: String -> ( { "cluster" :: Maybe (String) , "service" :: (String) } -> {"cluster" :: Maybe (String) , "service" :: (String) } ) -> DeleteServiceRequest
newDeleteServiceRequest' _service customize = (DeleteServiceRequest <<< customize) { "service": _service, "cluster": Nothing }



newtype DeleteServiceResponse = DeleteServiceResponse 
  { "service" :: Maybe (Service)
  }
derive instance newtypeDeleteServiceResponse :: Newtype DeleteServiceResponse _
derive instance repGenericDeleteServiceResponse :: Generic DeleteServiceResponse _
instance showDeleteServiceResponse :: Show DeleteServiceResponse where show = genericShow
instance decodeDeleteServiceResponse :: Decode DeleteServiceResponse where decode = genericDecode options
instance encodeDeleteServiceResponse :: Encode DeleteServiceResponse where encode = genericEncode options

-- | Constructs DeleteServiceResponse from required parameters
newDeleteServiceResponse :: DeleteServiceResponse
newDeleteServiceResponse  = DeleteServiceResponse { "service": Nothing }

-- | Constructs DeleteServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceResponse' :: ( { "service" :: Maybe (Service) } -> {"service" :: Maybe (Service) } ) -> DeleteServiceResponse
newDeleteServiceResponse'  customize = (DeleteServiceResponse <<< customize) { "service": Nothing }



-- | <p>The details of an Amazon ECS service deployment.</p>
newtype Deployment = Deployment 
  { "id" :: Maybe (String)
  , "status" :: Maybe (String)
  , "taskDefinition" :: Maybe (String)
  , "desiredCount" :: Maybe (Int)
  , "pendingCount" :: Maybe (Int)
  , "runningCount" :: Maybe (Int)
  , "createdAt" :: Maybe (Types.Timestamp)
  , "updatedAt" :: Maybe (Types.Timestamp)
  , "launchType" :: Maybe (LaunchType)
  , "platformVersion" :: Maybe (String)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  }
derive instance newtypeDeployment :: Newtype Deployment _
derive instance repGenericDeployment :: Generic Deployment _
instance showDeployment :: Show Deployment where show = genericShow
instance decodeDeployment :: Decode Deployment where decode = genericDecode options
instance encodeDeployment :: Encode Deployment where encode = genericEncode options

-- | Constructs Deployment from required parameters
newDeployment :: Deployment
newDeployment  = Deployment { "createdAt": Nothing, "desiredCount": Nothing, "id": Nothing, "launchType": Nothing, "networkConfiguration": Nothing, "pendingCount": Nothing, "platformVersion": Nothing, "runningCount": Nothing, "status": Nothing, "taskDefinition": Nothing, "updatedAt": Nothing }

-- | Constructs Deployment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeployment' :: ( { "id" :: Maybe (String) , "status" :: Maybe (String) , "taskDefinition" :: Maybe (String) , "desiredCount" :: Maybe (Int) , "pendingCount" :: Maybe (Int) , "runningCount" :: Maybe (Int) , "createdAt" :: Maybe (Types.Timestamp) , "updatedAt" :: Maybe (Types.Timestamp) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } -> {"id" :: Maybe (String) , "status" :: Maybe (String) , "taskDefinition" :: Maybe (String) , "desiredCount" :: Maybe (Int) , "pendingCount" :: Maybe (Int) , "runningCount" :: Maybe (Int) , "createdAt" :: Maybe (Types.Timestamp) , "updatedAt" :: Maybe (Types.Timestamp) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } ) -> Deployment
newDeployment'  customize = (Deployment <<< customize) { "createdAt": Nothing, "desiredCount": Nothing, "id": Nothing, "launchType": Nothing, "networkConfiguration": Nothing, "pendingCount": Nothing, "platformVersion": Nothing, "runningCount": Nothing, "status": Nothing, "taskDefinition": Nothing, "updatedAt": Nothing }



-- | <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
newtype DeploymentConfiguration = DeploymentConfiguration 
  { "maximumPercent" :: Maybe (BoxedInteger)
  , "minimumHealthyPercent" :: Maybe (BoxedInteger)
  }
derive instance newtypeDeploymentConfiguration :: Newtype DeploymentConfiguration _
derive instance repGenericDeploymentConfiguration :: Generic DeploymentConfiguration _
instance showDeploymentConfiguration :: Show DeploymentConfiguration where show = genericShow
instance decodeDeploymentConfiguration :: Decode DeploymentConfiguration where decode = genericDecode options
instance encodeDeploymentConfiguration :: Encode DeploymentConfiguration where encode = genericEncode options

-- | Constructs DeploymentConfiguration from required parameters
newDeploymentConfiguration :: DeploymentConfiguration
newDeploymentConfiguration  = DeploymentConfiguration { "maximumPercent": Nothing, "minimumHealthyPercent": Nothing }

-- | Constructs DeploymentConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeploymentConfiguration' :: ( { "maximumPercent" :: Maybe (BoxedInteger) , "minimumHealthyPercent" :: Maybe (BoxedInteger) } -> {"maximumPercent" :: Maybe (BoxedInteger) , "minimumHealthyPercent" :: Maybe (BoxedInteger) } ) -> DeploymentConfiguration
newDeploymentConfiguration'  customize = (DeploymentConfiguration <<< customize) { "maximumPercent": Nothing, "minimumHealthyPercent": Nothing }



newtype Deployments = Deployments (Array Deployment)
derive instance newtypeDeployments :: Newtype Deployments _
derive instance repGenericDeployments :: Generic Deployments _
instance showDeployments :: Show Deployments where show = genericShow
instance decodeDeployments :: Decode Deployments where decode = genericDecode options
instance encodeDeployments :: Encode Deployments where encode = genericEncode options



newtype DeregisterContainerInstanceRequest = DeregisterContainerInstanceRequest 
  { "cluster" :: Maybe (String)
  , "containerInstance" :: (String)
  , "force" :: Maybe (BoxedBoolean)
  }
derive instance newtypeDeregisterContainerInstanceRequest :: Newtype DeregisterContainerInstanceRequest _
derive instance repGenericDeregisterContainerInstanceRequest :: Generic DeregisterContainerInstanceRequest _
instance showDeregisterContainerInstanceRequest :: Show DeregisterContainerInstanceRequest where show = genericShow
instance decodeDeregisterContainerInstanceRequest :: Decode DeregisterContainerInstanceRequest where decode = genericDecode options
instance encodeDeregisterContainerInstanceRequest :: Encode DeregisterContainerInstanceRequest where encode = genericEncode options

-- | Constructs DeregisterContainerInstanceRequest from required parameters
newDeregisterContainerInstanceRequest :: String -> DeregisterContainerInstanceRequest
newDeregisterContainerInstanceRequest _containerInstance = DeregisterContainerInstanceRequest { "containerInstance": _containerInstance, "cluster": Nothing, "force": Nothing }

-- | Constructs DeregisterContainerInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterContainerInstanceRequest' :: String -> ( { "cluster" :: Maybe (String) , "containerInstance" :: (String) , "force" :: Maybe (BoxedBoolean) } -> {"cluster" :: Maybe (String) , "containerInstance" :: (String) , "force" :: Maybe (BoxedBoolean) } ) -> DeregisterContainerInstanceRequest
newDeregisterContainerInstanceRequest' _containerInstance customize = (DeregisterContainerInstanceRequest <<< customize) { "containerInstance": _containerInstance, "cluster": Nothing, "force": Nothing }



newtype DeregisterContainerInstanceResponse = DeregisterContainerInstanceResponse 
  { "containerInstance" :: Maybe (ContainerInstance)
  }
derive instance newtypeDeregisterContainerInstanceResponse :: Newtype DeregisterContainerInstanceResponse _
derive instance repGenericDeregisterContainerInstanceResponse :: Generic DeregisterContainerInstanceResponse _
instance showDeregisterContainerInstanceResponse :: Show DeregisterContainerInstanceResponse where show = genericShow
instance decodeDeregisterContainerInstanceResponse :: Decode DeregisterContainerInstanceResponse where decode = genericDecode options
instance encodeDeregisterContainerInstanceResponse :: Encode DeregisterContainerInstanceResponse where encode = genericEncode options

-- | Constructs DeregisterContainerInstanceResponse from required parameters
newDeregisterContainerInstanceResponse :: DeregisterContainerInstanceResponse
newDeregisterContainerInstanceResponse  = DeregisterContainerInstanceResponse { "containerInstance": Nothing }

-- | Constructs DeregisterContainerInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterContainerInstanceResponse' :: ( { "containerInstance" :: Maybe (ContainerInstance) } -> {"containerInstance" :: Maybe (ContainerInstance) } ) -> DeregisterContainerInstanceResponse
newDeregisterContainerInstanceResponse'  customize = (DeregisterContainerInstanceResponse <<< customize) { "containerInstance": Nothing }



newtype DeregisterTaskDefinitionRequest = DeregisterTaskDefinitionRequest 
  { "taskDefinition" :: (String)
  }
derive instance newtypeDeregisterTaskDefinitionRequest :: Newtype DeregisterTaskDefinitionRequest _
derive instance repGenericDeregisterTaskDefinitionRequest :: Generic DeregisterTaskDefinitionRequest _
instance showDeregisterTaskDefinitionRequest :: Show DeregisterTaskDefinitionRequest where show = genericShow
instance decodeDeregisterTaskDefinitionRequest :: Decode DeregisterTaskDefinitionRequest where decode = genericDecode options
instance encodeDeregisterTaskDefinitionRequest :: Encode DeregisterTaskDefinitionRequest where encode = genericEncode options

-- | Constructs DeregisterTaskDefinitionRequest from required parameters
newDeregisterTaskDefinitionRequest :: String -> DeregisterTaskDefinitionRequest
newDeregisterTaskDefinitionRequest _taskDefinition = DeregisterTaskDefinitionRequest { "taskDefinition": _taskDefinition }

-- | Constructs DeregisterTaskDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterTaskDefinitionRequest' :: String -> ( { "taskDefinition" :: (String) } -> {"taskDefinition" :: (String) } ) -> DeregisterTaskDefinitionRequest
newDeregisterTaskDefinitionRequest' _taskDefinition customize = (DeregisterTaskDefinitionRequest <<< customize) { "taskDefinition": _taskDefinition }



newtype DeregisterTaskDefinitionResponse = DeregisterTaskDefinitionResponse 
  { "taskDefinition" :: Maybe (TaskDefinition)
  }
derive instance newtypeDeregisterTaskDefinitionResponse :: Newtype DeregisterTaskDefinitionResponse _
derive instance repGenericDeregisterTaskDefinitionResponse :: Generic DeregisterTaskDefinitionResponse _
instance showDeregisterTaskDefinitionResponse :: Show DeregisterTaskDefinitionResponse where show = genericShow
instance decodeDeregisterTaskDefinitionResponse :: Decode DeregisterTaskDefinitionResponse where decode = genericDecode options
instance encodeDeregisterTaskDefinitionResponse :: Encode DeregisterTaskDefinitionResponse where encode = genericEncode options

-- | Constructs DeregisterTaskDefinitionResponse from required parameters
newDeregisterTaskDefinitionResponse :: DeregisterTaskDefinitionResponse
newDeregisterTaskDefinitionResponse  = DeregisterTaskDefinitionResponse { "taskDefinition": Nothing }

-- | Constructs DeregisterTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterTaskDefinitionResponse' :: ( { "taskDefinition" :: Maybe (TaskDefinition) } -> {"taskDefinition" :: Maybe (TaskDefinition) } ) -> DeregisterTaskDefinitionResponse
newDeregisterTaskDefinitionResponse'  customize = (DeregisterTaskDefinitionResponse <<< customize) { "taskDefinition": Nothing }



newtype DescribeClustersRequest = DescribeClustersRequest 
  { "clusters" :: Maybe (StringList)
  , "include" :: Maybe (ClusterFieldList)
  }
derive instance newtypeDescribeClustersRequest :: Newtype DescribeClustersRequest _
derive instance repGenericDescribeClustersRequest :: Generic DescribeClustersRequest _
instance showDescribeClustersRequest :: Show DescribeClustersRequest where show = genericShow
instance decodeDescribeClustersRequest :: Decode DescribeClustersRequest where decode = genericDecode options
instance encodeDescribeClustersRequest :: Encode DescribeClustersRequest where encode = genericEncode options

-- | Constructs DescribeClustersRequest from required parameters
newDescribeClustersRequest :: DescribeClustersRequest
newDescribeClustersRequest  = DescribeClustersRequest { "clusters": Nothing, "include": Nothing }

-- | Constructs DescribeClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersRequest' :: ( { "clusters" :: Maybe (StringList) , "include" :: Maybe (ClusterFieldList) } -> {"clusters" :: Maybe (StringList) , "include" :: Maybe (ClusterFieldList) } ) -> DescribeClustersRequest
newDescribeClustersRequest'  customize = (DescribeClustersRequest <<< customize) { "clusters": Nothing, "include": Nothing }



newtype DescribeClustersResponse = DescribeClustersResponse 
  { "clusters" :: Maybe (Clusters)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeDescribeClustersResponse :: Newtype DescribeClustersResponse _
derive instance repGenericDescribeClustersResponse :: Generic DescribeClustersResponse _
instance showDescribeClustersResponse :: Show DescribeClustersResponse where show = genericShow
instance decodeDescribeClustersResponse :: Decode DescribeClustersResponse where decode = genericDecode options
instance encodeDescribeClustersResponse :: Encode DescribeClustersResponse where encode = genericEncode options

-- | Constructs DescribeClustersResponse from required parameters
newDescribeClustersResponse :: DescribeClustersResponse
newDescribeClustersResponse  = DescribeClustersResponse { "clusters": Nothing, "failures": Nothing }

-- | Constructs DescribeClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersResponse' :: ( { "clusters" :: Maybe (Clusters) , "failures" :: Maybe (Failures) } -> {"clusters" :: Maybe (Clusters) , "failures" :: Maybe (Failures) } ) -> DescribeClustersResponse
newDescribeClustersResponse'  customize = (DescribeClustersResponse <<< customize) { "clusters": Nothing, "failures": Nothing }



newtype DescribeContainerInstancesRequest = DescribeContainerInstancesRequest 
  { "cluster" :: Maybe (String)
  , "containerInstances" :: (StringList)
  }
derive instance newtypeDescribeContainerInstancesRequest :: Newtype DescribeContainerInstancesRequest _
derive instance repGenericDescribeContainerInstancesRequest :: Generic DescribeContainerInstancesRequest _
instance showDescribeContainerInstancesRequest :: Show DescribeContainerInstancesRequest where show = genericShow
instance decodeDescribeContainerInstancesRequest :: Decode DescribeContainerInstancesRequest where decode = genericDecode options
instance encodeDescribeContainerInstancesRequest :: Encode DescribeContainerInstancesRequest where encode = genericEncode options

-- | Constructs DescribeContainerInstancesRequest from required parameters
newDescribeContainerInstancesRequest :: StringList -> DescribeContainerInstancesRequest
newDescribeContainerInstancesRequest _containerInstances = DescribeContainerInstancesRequest { "containerInstances": _containerInstances, "cluster": Nothing }

-- | Constructs DescribeContainerInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerInstancesRequest' :: StringList -> ( { "cluster" :: Maybe (String) , "containerInstances" :: (StringList) } -> {"cluster" :: Maybe (String) , "containerInstances" :: (StringList) } ) -> DescribeContainerInstancesRequest
newDescribeContainerInstancesRequest' _containerInstances customize = (DescribeContainerInstancesRequest <<< customize) { "containerInstances": _containerInstances, "cluster": Nothing }



newtype DescribeContainerInstancesResponse = DescribeContainerInstancesResponse 
  { "containerInstances" :: Maybe (ContainerInstances)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeDescribeContainerInstancesResponse :: Newtype DescribeContainerInstancesResponse _
derive instance repGenericDescribeContainerInstancesResponse :: Generic DescribeContainerInstancesResponse _
instance showDescribeContainerInstancesResponse :: Show DescribeContainerInstancesResponse where show = genericShow
instance decodeDescribeContainerInstancesResponse :: Decode DescribeContainerInstancesResponse where decode = genericDecode options
instance encodeDescribeContainerInstancesResponse :: Encode DescribeContainerInstancesResponse where encode = genericEncode options

-- | Constructs DescribeContainerInstancesResponse from required parameters
newDescribeContainerInstancesResponse :: DescribeContainerInstancesResponse
newDescribeContainerInstancesResponse  = DescribeContainerInstancesResponse { "containerInstances": Nothing, "failures": Nothing }

-- | Constructs DescribeContainerInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerInstancesResponse' :: ( { "containerInstances" :: Maybe (ContainerInstances) , "failures" :: Maybe (Failures) } -> {"containerInstances" :: Maybe (ContainerInstances) , "failures" :: Maybe (Failures) } ) -> DescribeContainerInstancesResponse
newDescribeContainerInstancesResponse'  customize = (DescribeContainerInstancesResponse <<< customize) { "containerInstances": Nothing, "failures": Nothing }



newtype DescribeServicesRequest = DescribeServicesRequest 
  { "cluster" :: Maybe (String)
  , "services" :: (StringList)
  }
derive instance newtypeDescribeServicesRequest :: Newtype DescribeServicesRequest _
derive instance repGenericDescribeServicesRequest :: Generic DescribeServicesRequest _
instance showDescribeServicesRequest :: Show DescribeServicesRequest where show = genericShow
instance decodeDescribeServicesRequest :: Decode DescribeServicesRequest where decode = genericDecode options
instance encodeDescribeServicesRequest :: Encode DescribeServicesRequest where encode = genericEncode options

-- | Constructs DescribeServicesRequest from required parameters
newDescribeServicesRequest :: StringList -> DescribeServicesRequest
newDescribeServicesRequest _services = DescribeServicesRequest { "services": _services, "cluster": Nothing }

-- | Constructs DescribeServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesRequest' :: StringList -> ( { "cluster" :: Maybe (String) , "services" :: (StringList) } -> {"cluster" :: Maybe (String) , "services" :: (StringList) } ) -> DescribeServicesRequest
newDescribeServicesRequest' _services customize = (DescribeServicesRequest <<< customize) { "services": _services, "cluster": Nothing }



newtype DescribeServicesResponse = DescribeServicesResponse 
  { "services" :: Maybe (Services)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeDescribeServicesResponse :: Newtype DescribeServicesResponse _
derive instance repGenericDescribeServicesResponse :: Generic DescribeServicesResponse _
instance showDescribeServicesResponse :: Show DescribeServicesResponse where show = genericShow
instance decodeDescribeServicesResponse :: Decode DescribeServicesResponse where decode = genericDecode options
instance encodeDescribeServicesResponse :: Encode DescribeServicesResponse where encode = genericEncode options

-- | Constructs DescribeServicesResponse from required parameters
newDescribeServicesResponse :: DescribeServicesResponse
newDescribeServicesResponse  = DescribeServicesResponse { "failures": Nothing, "services": Nothing }

-- | Constructs DescribeServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesResponse' :: ( { "services" :: Maybe (Services) , "failures" :: Maybe (Failures) } -> {"services" :: Maybe (Services) , "failures" :: Maybe (Failures) } ) -> DescribeServicesResponse
newDescribeServicesResponse'  customize = (DescribeServicesResponse <<< customize) { "failures": Nothing, "services": Nothing }



newtype DescribeTaskDefinitionRequest = DescribeTaskDefinitionRequest 
  { "taskDefinition" :: (String)
  }
derive instance newtypeDescribeTaskDefinitionRequest :: Newtype DescribeTaskDefinitionRequest _
derive instance repGenericDescribeTaskDefinitionRequest :: Generic DescribeTaskDefinitionRequest _
instance showDescribeTaskDefinitionRequest :: Show DescribeTaskDefinitionRequest where show = genericShow
instance decodeDescribeTaskDefinitionRequest :: Decode DescribeTaskDefinitionRequest where decode = genericDecode options
instance encodeDescribeTaskDefinitionRequest :: Encode DescribeTaskDefinitionRequest where encode = genericEncode options

-- | Constructs DescribeTaskDefinitionRequest from required parameters
newDescribeTaskDefinitionRequest :: String -> DescribeTaskDefinitionRequest
newDescribeTaskDefinitionRequest _taskDefinition = DescribeTaskDefinitionRequest { "taskDefinition": _taskDefinition }

-- | Constructs DescribeTaskDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTaskDefinitionRequest' :: String -> ( { "taskDefinition" :: (String) } -> {"taskDefinition" :: (String) } ) -> DescribeTaskDefinitionRequest
newDescribeTaskDefinitionRequest' _taskDefinition customize = (DescribeTaskDefinitionRequest <<< customize) { "taskDefinition": _taskDefinition }



newtype DescribeTaskDefinitionResponse = DescribeTaskDefinitionResponse 
  { "taskDefinition" :: Maybe (TaskDefinition)
  }
derive instance newtypeDescribeTaskDefinitionResponse :: Newtype DescribeTaskDefinitionResponse _
derive instance repGenericDescribeTaskDefinitionResponse :: Generic DescribeTaskDefinitionResponse _
instance showDescribeTaskDefinitionResponse :: Show DescribeTaskDefinitionResponse where show = genericShow
instance decodeDescribeTaskDefinitionResponse :: Decode DescribeTaskDefinitionResponse where decode = genericDecode options
instance encodeDescribeTaskDefinitionResponse :: Encode DescribeTaskDefinitionResponse where encode = genericEncode options

-- | Constructs DescribeTaskDefinitionResponse from required parameters
newDescribeTaskDefinitionResponse :: DescribeTaskDefinitionResponse
newDescribeTaskDefinitionResponse  = DescribeTaskDefinitionResponse { "taskDefinition": Nothing }

-- | Constructs DescribeTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTaskDefinitionResponse' :: ( { "taskDefinition" :: Maybe (TaskDefinition) } -> {"taskDefinition" :: Maybe (TaskDefinition) } ) -> DescribeTaskDefinitionResponse
newDescribeTaskDefinitionResponse'  customize = (DescribeTaskDefinitionResponse <<< customize) { "taskDefinition": Nothing }



newtype DescribeTasksRequest = DescribeTasksRequest 
  { "cluster" :: Maybe (String)
  , "tasks" :: (StringList)
  }
derive instance newtypeDescribeTasksRequest :: Newtype DescribeTasksRequest _
derive instance repGenericDescribeTasksRequest :: Generic DescribeTasksRequest _
instance showDescribeTasksRequest :: Show DescribeTasksRequest where show = genericShow
instance decodeDescribeTasksRequest :: Decode DescribeTasksRequest where decode = genericDecode options
instance encodeDescribeTasksRequest :: Encode DescribeTasksRequest where encode = genericEncode options

-- | Constructs DescribeTasksRequest from required parameters
newDescribeTasksRequest :: StringList -> DescribeTasksRequest
newDescribeTasksRequest _tasks = DescribeTasksRequest { "tasks": _tasks, "cluster": Nothing }

-- | Constructs DescribeTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTasksRequest' :: StringList -> ( { "cluster" :: Maybe (String) , "tasks" :: (StringList) } -> {"cluster" :: Maybe (String) , "tasks" :: (StringList) } ) -> DescribeTasksRequest
newDescribeTasksRequest' _tasks customize = (DescribeTasksRequest <<< customize) { "tasks": _tasks, "cluster": Nothing }



newtype DescribeTasksResponse = DescribeTasksResponse 
  { "tasks" :: Maybe (Tasks)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeDescribeTasksResponse :: Newtype DescribeTasksResponse _
derive instance repGenericDescribeTasksResponse :: Generic DescribeTasksResponse _
instance showDescribeTasksResponse :: Show DescribeTasksResponse where show = genericShow
instance decodeDescribeTasksResponse :: Decode DescribeTasksResponse where decode = genericDecode options
instance encodeDescribeTasksResponse :: Encode DescribeTasksResponse where encode = genericEncode options

-- | Constructs DescribeTasksResponse from required parameters
newDescribeTasksResponse :: DescribeTasksResponse
newDescribeTasksResponse  = DescribeTasksResponse { "failures": Nothing, "tasks": Nothing }

-- | Constructs DescribeTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTasksResponse' :: ( { "tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } -> {"tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } ) -> DescribeTasksResponse
newDescribeTasksResponse'  customize = (DescribeTasksResponse <<< customize) { "failures": Nothing, "tasks": Nothing }



newtype DesiredStatus = DesiredStatus String
derive instance newtypeDesiredStatus :: Newtype DesiredStatus _
derive instance repGenericDesiredStatus :: Generic DesiredStatus _
instance showDesiredStatus :: Show DesiredStatus where show = genericShow
instance decodeDesiredStatus :: Decode DesiredStatus where decode = genericDecode options
instance encodeDesiredStatus :: Encode DesiredStatus where encode = genericEncode options



-- | <p>An object representing a container instance host device.</p>
newtype Device = Device 
  { "hostPath" :: (String)
  , "containerPath" :: Maybe (String)
  , "permissions" :: Maybe (DeviceCgroupPermissions)
  }
derive instance newtypeDevice :: Newtype Device _
derive instance repGenericDevice :: Generic Device _
instance showDevice :: Show Device where show = genericShow
instance decodeDevice :: Decode Device where decode = genericDecode options
instance encodeDevice :: Encode Device where encode = genericEncode options

-- | Constructs Device from required parameters
newDevice :: String -> Device
newDevice _hostPath = Device { "hostPath": _hostPath, "containerPath": Nothing, "permissions": Nothing }

-- | Constructs Device's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDevice' :: String -> ( { "hostPath" :: (String) , "containerPath" :: Maybe (String) , "permissions" :: Maybe (DeviceCgroupPermissions) } -> {"hostPath" :: (String) , "containerPath" :: Maybe (String) , "permissions" :: Maybe (DeviceCgroupPermissions) } ) -> Device
newDevice' _hostPath customize = (Device <<< customize) { "hostPath": _hostPath, "containerPath": Nothing, "permissions": Nothing }



newtype DeviceCgroupPermission = DeviceCgroupPermission String
derive instance newtypeDeviceCgroupPermission :: Newtype DeviceCgroupPermission _
derive instance repGenericDeviceCgroupPermission :: Generic DeviceCgroupPermission _
instance showDeviceCgroupPermission :: Show DeviceCgroupPermission where show = genericShow
instance decodeDeviceCgroupPermission :: Decode DeviceCgroupPermission where decode = genericDecode options
instance encodeDeviceCgroupPermission :: Encode DeviceCgroupPermission where encode = genericEncode options



newtype DeviceCgroupPermissions = DeviceCgroupPermissions (Array DeviceCgroupPermission)
derive instance newtypeDeviceCgroupPermissions :: Newtype DeviceCgroupPermissions _
derive instance repGenericDeviceCgroupPermissions :: Generic DeviceCgroupPermissions _
instance showDeviceCgroupPermissions :: Show DeviceCgroupPermissions where show = genericShow
instance decodeDeviceCgroupPermissions :: Decode DeviceCgroupPermissions where decode = genericDecode options
instance encodeDeviceCgroupPermissions :: Encode DeviceCgroupPermissions where encode = genericEncode options



newtype DevicesList = DevicesList (Array Device)
derive instance newtypeDevicesList :: Newtype DevicesList _
derive instance repGenericDevicesList :: Generic DevicesList _
instance showDevicesList :: Show DevicesList where show = genericShow
instance decodeDevicesList :: Decode DevicesList where decode = genericDecode options
instance encodeDevicesList :: Encode DevicesList where encode = genericEncode options



newtype DiscoverPollEndpointRequest = DiscoverPollEndpointRequest 
  { "containerInstance" :: Maybe (String)
  , "cluster" :: Maybe (String)
  }
derive instance newtypeDiscoverPollEndpointRequest :: Newtype DiscoverPollEndpointRequest _
derive instance repGenericDiscoverPollEndpointRequest :: Generic DiscoverPollEndpointRequest _
instance showDiscoverPollEndpointRequest :: Show DiscoverPollEndpointRequest where show = genericShow
instance decodeDiscoverPollEndpointRequest :: Decode DiscoverPollEndpointRequest where decode = genericDecode options
instance encodeDiscoverPollEndpointRequest :: Encode DiscoverPollEndpointRequest where encode = genericEncode options

-- | Constructs DiscoverPollEndpointRequest from required parameters
newDiscoverPollEndpointRequest :: DiscoverPollEndpointRequest
newDiscoverPollEndpointRequest  = DiscoverPollEndpointRequest { "cluster": Nothing, "containerInstance": Nothing }

-- | Constructs DiscoverPollEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoverPollEndpointRequest' :: ( { "containerInstance" :: Maybe (String) , "cluster" :: Maybe (String) } -> {"containerInstance" :: Maybe (String) , "cluster" :: Maybe (String) } ) -> DiscoverPollEndpointRequest
newDiscoverPollEndpointRequest'  customize = (DiscoverPollEndpointRequest <<< customize) { "cluster": Nothing, "containerInstance": Nothing }



newtype DiscoverPollEndpointResponse = DiscoverPollEndpointResponse 
  { "endpoint" :: Maybe (String)
  , "telemetryEndpoint" :: Maybe (String)
  }
derive instance newtypeDiscoverPollEndpointResponse :: Newtype DiscoverPollEndpointResponse _
derive instance repGenericDiscoverPollEndpointResponse :: Generic DiscoverPollEndpointResponse _
instance showDiscoverPollEndpointResponse :: Show DiscoverPollEndpointResponse where show = genericShow
instance decodeDiscoverPollEndpointResponse :: Decode DiscoverPollEndpointResponse where decode = genericDecode options
instance encodeDiscoverPollEndpointResponse :: Encode DiscoverPollEndpointResponse where encode = genericEncode options

-- | Constructs DiscoverPollEndpointResponse from required parameters
newDiscoverPollEndpointResponse :: DiscoverPollEndpointResponse
newDiscoverPollEndpointResponse  = DiscoverPollEndpointResponse { "endpoint": Nothing, "telemetryEndpoint": Nothing }

-- | Constructs DiscoverPollEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoverPollEndpointResponse' :: ( { "endpoint" :: Maybe (String) , "telemetryEndpoint" :: Maybe (String) } -> {"endpoint" :: Maybe (String) , "telemetryEndpoint" :: Maybe (String) } ) -> DiscoverPollEndpointResponse
newDiscoverPollEndpointResponse'  customize = (DiscoverPollEndpointResponse <<< customize) { "endpoint": Nothing, "telemetryEndpoint": Nothing }



newtype DockerLabelsMap = DockerLabelsMap (StrMap.StrMap String)
derive instance newtypeDockerLabelsMap :: Newtype DockerLabelsMap _
derive instance repGenericDockerLabelsMap :: Generic DockerLabelsMap _
instance showDockerLabelsMap :: Show DockerLabelsMap where show = genericShow
instance decodeDockerLabelsMap :: Decode DockerLabelsMap where decode = genericDecode options
instance encodeDockerLabelsMap :: Encode DockerLabelsMap where encode = genericEncode options



newtype EnvironmentVariables = EnvironmentVariables (Array KeyValuePair)
derive instance newtypeEnvironmentVariables :: Newtype EnvironmentVariables _
derive instance repGenericEnvironmentVariables :: Generic EnvironmentVariables _
instance showEnvironmentVariables :: Show EnvironmentVariables where show = genericShow
instance decodeEnvironmentVariables :: Decode EnvironmentVariables where decode = genericDecode options
instance encodeEnvironmentVariables :: Encode EnvironmentVariables where encode = genericEncode options



-- | <p>A failed resource.</p>
newtype Failure = Failure 
  { "arn" :: Maybe (String)
  , "reason" :: Maybe (String)
  }
derive instance newtypeFailure :: Newtype Failure _
derive instance repGenericFailure :: Generic Failure _
instance showFailure :: Show Failure where show = genericShow
instance decodeFailure :: Decode Failure where decode = genericDecode options
instance encodeFailure :: Encode Failure where encode = genericEncode options

-- | Constructs Failure from required parameters
newFailure :: Failure
newFailure  = Failure { "arn": Nothing, "reason": Nothing }

-- | Constructs Failure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailure' :: ( { "arn" :: Maybe (String) , "reason" :: Maybe (String) } -> {"arn" :: Maybe (String) , "reason" :: Maybe (String) } ) -> Failure
newFailure'  customize = (Failure <<< customize) { "arn": Nothing, "reason": Nothing }



newtype Failures = Failures (Array Failure)
derive instance newtypeFailures :: Newtype Failures _
derive instance repGenericFailures :: Generic Failures _
instance showFailures :: Show Failures where show = genericShow
instance decodeFailures :: Decode Failures where decode = genericDecode options
instance encodeFailures :: Encode Failures where encode = genericEncode options



-- | <p>An object representing a container health check. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile).</p>
newtype HealthCheck = HealthCheck 
  { "command" :: (StringList)
  , "interval" :: Maybe (BoxedInteger)
  , "timeout" :: Maybe (BoxedInteger)
  , "retries" :: Maybe (BoxedInteger)
  , "startPeriod" :: Maybe (BoxedInteger)
  }
derive instance newtypeHealthCheck :: Newtype HealthCheck _
derive instance repGenericHealthCheck :: Generic HealthCheck _
instance showHealthCheck :: Show HealthCheck where show = genericShow
instance decodeHealthCheck :: Decode HealthCheck where decode = genericDecode options
instance encodeHealthCheck :: Encode HealthCheck where encode = genericEncode options

-- | Constructs HealthCheck from required parameters
newHealthCheck :: StringList -> HealthCheck
newHealthCheck _command = HealthCheck { "command": _command, "interval": Nothing, "retries": Nothing, "startPeriod": Nothing, "timeout": Nothing }

-- | Constructs HealthCheck's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheck' :: StringList -> ( { "command" :: (StringList) , "interval" :: Maybe (BoxedInteger) , "timeout" :: Maybe (BoxedInteger) , "retries" :: Maybe (BoxedInteger) , "startPeriod" :: Maybe (BoxedInteger) } -> {"command" :: (StringList) , "interval" :: Maybe (BoxedInteger) , "timeout" :: Maybe (BoxedInteger) , "retries" :: Maybe (BoxedInteger) , "startPeriod" :: Maybe (BoxedInteger) } ) -> HealthCheck
newHealthCheck' _command customize = (HealthCheck <<< customize) { "command": _command, "interval": Nothing, "retries": Nothing, "startPeriod": Nothing, "timeout": Nothing }



newtype HealthStatus = HealthStatus String
derive instance newtypeHealthStatus :: Newtype HealthStatus _
derive instance repGenericHealthStatus :: Generic HealthStatus _
instance showHealthStatus :: Show HealthStatus where show = genericShow
instance decodeHealthStatus :: Decode HealthStatus where decode = genericDecode options
instance encodeHealthStatus :: Encode HealthStatus where encode = genericEncode options



-- | <p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>
newtype HostEntry = HostEntry 
  { "hostname" :: (String)
  , "ipAddress" :: (String)
  }
derive instance newtypeHostEntry :: Newtype HostEntry _
derive instance repGenericHostEntry :: Generic HostEntry _
instance showHostEntry :: Show HostEntry where show = genericShow
instance decodeHostEntry :: Decode HostEntry where decode = genericDecode options
instance encodeHostEntry :: Encode HostEntry where encode = genericEncode options

-- | Constructs HostEntry from required parameters
newHostEntry :: String -> String -> HostEntry
newHostEntry _hostname _ipAddress = HostEntry { "hostname": _hostname, "ipAddress": _ipAddress }

-- | Constructs HostEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostEntry' :: String -> String -> ( { "hostname" :: (String) , "ipAddress" :: (String) } -> {"hostname" :: (String) , "ipAddress" :: (String) } ) -> HostEntry
newHostEntry' _hostname _ipAddress customize = (HostEntry <<< customize) { "hostname": _hostname, "ipAddress": _ipAddress }



newtype HostEntryList = HostEntryList (Array HostEntry)
derive instance newtypeHostEntryList :: Newtype HostEntryList _
derive instance repGenericHostEntryList :: Generic HostEntryList _
instance showHostEntryList :: Show HostEntryList where show = genericShow
instance decodeHostEntryList :: Decode HostEntryList where decode = genericDecode options
instance encodeHostEntryList :: Encode HostEntryList where encode = genericEncode options



-- | <p>Details on a container instance host volume.</p>
newtype HostVolumeProperties = HostVolumeProperties 
  { "sourcePath" :: Maybe (String)
  }
derive instance newtypeHostVolumeProperties :: Newtype HostVolumeProperties _
derive instance repGenericHostVolumeProperties :: Generic HostVolumeProperties _
instance showHostVolumeProperties :: Show HostVolumeProperties where show = genericShow
instance decodeHostVolumeProperties :: Decode HostVolumeProperties where decode = genericDecode options
instance encodeHostVolumeProperties :: Encode HostVolumeProperties where encode = genericEncode options

-- | Constructs HostVolumeProperties from required parameters
newHostVolumeProperties :: HostVolumeProperties
newHostVolumeProperties  = HostVolumeProperties { "sourcePath": Nothing }

-- | Constructs HostVolumeProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostVolumeProperties' :: ( { "sourcePath" :: Maybe (String) } -> {"sourcePath" :: Maybe (String) } ) -> HostVolumeProperties
newHostVolumeProperties'  customize = (HostVolumeProperties <<< customize) { "sourcePath": Nothing }



-- | <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
newtype InvalidParameterException = InvalidParameterException Types.NoArguments
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options



-- | <p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker. For more information on the default capabilities and the non-default available capabilities, see <a href="https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities">Runtime privilege and Linux capabilities</a> in the <i>Docker run reference</i>. For more detailed information on these Linux capabilities, see the <a href="http://man7.org/linux/man-pages/man7/capabilities.7.html">capabilities(7)</a> Linux manual page.</p>
newtype KernelCapabilities = KernelCapabilities 
  { "add" :: Maybe (StringList)
  , "drop" :: Maybe (StringList)
  }
derive instance newtypeKernelCapabilities :: Newtype KernelCapabilities _
derive instance repGenericKernelCapabilities :: Generic KernelCapabilities _
instance showKernelCapabilities :: Show KernelCapabilities where show = genericShow
instance decodeKernelCapabilities :: Decode KernelCapabilities where decode = genericDecode options
instance encodeKernelCapabilities :: Encode KernelCapabilities where encode = genericEncode options

-- | Constructs KernelCapabilities from required parameters
newKernelCapabilities :: KernelCapabilities
newKernelCapabilities  = KernelCapabilities { "add": Nothing, "drop": Nothing }

-- | Constructs KernelCapabilities's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKernelCapabilities' :: ( { "add" :: Maybe (StringList) , "drop" :: Maybe (StringList) } -> {"add" :: Maybe (StringList) , "drop" :: Maybe (StringList) } ) -> KernelCapabilities
newKernelCapabilities'  customize = (KernelCapabilities <<< customize) { "add": Nothing, "drop": Nothing }



-- | <p>A key and value pair object.</p>
newtype KeyValuePair = KeyValuePair 
  { "name" :: Maybe (String)
  , "value" :: Maybe (String)
  }
derive instance newtypeKeyValuePair :: Newtype KeyValuePair _
derive instance repGenericKeyValuePair :: Generic KeyValuePair _
instance showKeyValuePair :: Show KeyValuePair where show = genericShow
instance decodeKeyValuePair :: Decode KeyValuePair where decode = genericDecode options
instance encodeKeyValuePair :: Encode KeyValuePair where encode = genericEncode options

-- | Constructs KeyValuePair from required parameters
newKeyValuePair :: KeyValuePair
newKeyValuePair  = KeyValuePair { "name": Nothing, "value": Nothing }

-- | Constructs KeyValuePair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValuePair' :: ( { "name" :: Maybe (String) , "value" :: Maybe (String) } -> {"name" :: Maybe (String) , "value" :: Maybe (String) } ) -> KeyValuePair
newKeyValuePair'  customize = (KeyValuePair <<< customize) { "name": Nothing, "value": Nothing }



newtype LaunchType = LaunchType String
derive instance newtypeLaunchType :: Newtype LaunchType _
derive instance repGenericLaunchType :: Generic LaunchType _
instance showLaunchType :: Show LaunchType where show = genericShow
instance decodeLaunchType :: Decode LaunchType where decode = genericDecode options
instance encodeLaunchType :: Encode LaunchType where encode = genericEncode options



-- | <p>Linux-specific options that are applied to the container, such as Linux <a>KernelCapabilities</a>.</p>
newtype LinuxParameters = LinuxParameters 
  { "capabilities" :: Maybe (KernelCapabilities)
  , "devices" :: Maybe (DevicesList)
  , "initProcessEnabled" :: Maybe (BoxedBoolean)
  }
derive instance newtypeLinuxParameters :: Newtype LinuxParameters _
derive instance repGenericLinuxParameters :: Generic LinuxParameters _
instance showLinuxParameters :: Show LinuxParameters where show = genericShow
instance decodeLinuxParameters :: Decode LinuxParameters where decode = genericDecode options
instance encodeLinuxParameters :: Encode LinuxParameters where encode = genericEncode options

-- | Constructs LinuxParameters from required parameters
newLinuxParameters :: LinuxParameters
newLinuxParameters  = LinuxParameters { "capabilities": Nothing, "devices": Nothing, "initProcessEnabled": Nothing }

-- | Constructs LinuxParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLinuxParameters' :: ( { "capabilities" :: Maybe (KernelCapabilities) , "devices" :: Maybe (DevicesList) , "initProcessEnabled" :: Maybe (BoxedBoolean) } -> {"capabilities" :: Maybe (KernelCapabilities) , "devices" :: Maybe (DevicesList) , "initProcessEnabled" :: Maybe (BoxedBoolean) } ) -> LinuxParameters
newLinuxParameters'  customize = (LinuxParameters <<< customize) { "capabilities": Nothing, "devices": Nothing, "initProcessEnabled": Nothing }



newtype ListAttributesRequest = ListAttributesRequest 
  { "cluster" :: Maybe (String)
  , "targetType" :: (TargetType)
  , "attributeName" :: Maybe (String)
  , "attributeValue" :: Maybe (String)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeListAttributesRequest :: Newtype ListAttributesRequest _
derive instance repGenericListAttributesRequest :: Generic ListAttributesRequest _
instance showListAttributesRequest :: Show ListAttributesRequest where show = genericShow
instance decodeListAttributesRequest :: Decode ListAttributesRequest where decode = genericDecode options
instance encodeListAttributesRequest :: Encode ListAttributesRequest where encode = genericEncode options

-- | Constructs ListAttributesRequest from required parameters
newListAttributesRequest :: TargetType -> ListAttributesRequest
newListAttributesRequest _targetType = ListAttributesRequest { "targetType": _targetType, "attributeName": Nothing, "attributeValue": Nothing, "cluster": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttributesRequest' :: TargetType -> ( { "cluster" :: Maybe (String) , "targetType" :: (TargetType) , "attributeName" :: Maybe (String) , "attributeValue" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } -> {"cluster" :: Maybe (String) , "targetType" :: (TargetType) , "attributeName" :: Maybe (String) , "attributeValue" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } ) -> ListAttributesRequest
newListAttributesRequest' _targetType customize = (ListAttributesRequest <<< customize) { "targetType": _targetType, "attributeName": Nothing, "attributeValue": Nothing, "cluster": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListAttributesResponse = ListAttributesResponse 
  { "attributes" :: Maybe (Attributes)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListAttributesResponse :: Newtype ListAttributesResponse _
derive instance repGenericListAttributesResponse :: Generic ListAttributesResponse _
instance showListAttributesResponse :: Show ListAttributesResponse where show = genericShow
instance decodeListAttributesResponse :: Decode ListAttributesResponse where decode = genericDecode options
instance encodeListAttributesResponse :: Encode ListAttributesResponse where encode = genericEncode options

-- | Constructs ListAttributesResponse from required parameters
newListAttributesResponse :: ListAttributesResponse
newListAttributesResponse  = ListAttributesResponse { "attributes": Nothing, "nextToken": Nothing }

-- | Constructs ListAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttributesResponse' :: ( { "attributes" :: Maybe (Attributes) , "nextToken" :: Maybe (String) } -> {"attributes" :: Maybe (Attributes) , "nextToken" :: Maybe (String) } ) -> ListAttributesResponse
newListAttributesResponse'  customize = (ListAttributesResponse <<< customize) { "attributes": Nothing, "nextToken": Nothing }



newtype ListClustersRequest = ListClustersRequest 
  { "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeListClustersRequest :: Newtype ListClustersRequest _
derive instance repGenericListClustersRequest :: Generic ListClustersRequest _
instance showListClustersRequest :: Show ListClustersRequest where show = genericShow
instance decodeListClustersRequest :: Decode ListClustersRequest where decode = genericDecode options
instance encodeListClustersRequest :: Encode ListClustersRequest where encode = genericEncode options

-- | Constructs ListClustersRequest from required parameters
newListClustersRequest :: ListClustersRequest
newListClustersRequest  = ListClustersRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersRequest' :: ( { "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } -> {"nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } ) -> ListClustersRequest
newListClustersRequest'  customize = (ListClustersRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype ListClustersResponse = ListClustersResponse 
  { "clusterArns" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListClustersResponse :: Newtype ListClustersResponse _
derive instance repGenericListClustersResponse :: Generic ListClustersResponse _
instance showListClustersResponse :: Show ListClustersResponse where show = genericShow
instance decodeListClustersResponse :: Decode ListClustersResponse where decode = genericDecode options
instance encodeListClustersResponse :: Encode ListClustersResponse where encode = genericEncode options

-- | Constructs ListClustersResponse from required parameters
newListClustersResponse :: ListClustersResponse
newListClustersResponse  = ListClustersResponse { "clusterArns": Nothing, "nextToken": Nothing }

-- | Constructs ListClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersResponse' :: ( { "clusterArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"clusterArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListClustersResponse
newListClustersResponse'  customize = (ListClustersResponse <<< customize) { "clusterArns": Nothing, "nextToken": Nothing }



newtype ListContainerInstancesRequest = ListContainerInstancesRequest 
  { "cluster" :: Maybe (String)
  , "filter" :: Maybe (String)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  , "status" :: Maybe (ContainerInstanceStatus)
  }
derive instance newtypeListContainerInstancesRequest :: Newtype ListContainerInstancesRequest _
derive instance repGenericListContainerInstancesRequest :: Generic ListContainerInstancesRequest _
instance showListContainerInstancesRequest :: Show ListContainerInstancesRequest where show = genericShow
instance decodeListContainerInstancesRequest :: Decode ListContainerInstancesRequest where decode = genericDecode options
instance encodeListContainerInstancesRequest :: Encode ListContainerInstancesRequest where encode = genericEncode options

-- | Constructs ListContainerInstancesRequest from required parameters
newListContainerInstancesRequest :: ListContainerInstancesRequest
newListContainerInstancesRequest  = ListContainerInstancesRequest { "cluster": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs ListContainerInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainerInstancesRequest' :: ( { "cluster" :: Maybe (String) , "filter" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "status" :: Maybe (ContainerInstanceStatus) } -> {"cluster" :: Maybe (String) , "filter" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "status" :: Maybe (ContainerInstanceStatus) } ) -> ListContainerInstancesRequest
newListContainerInstancesRequest'  customize = (ListContainerInstancesRequest <<< customize) { "cluster": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype ListContainerInstancesResponse = ListContainerInstancesResponse 
  { "containerInstanceArns" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListContainerInstancesResponse :: Newtype ListContainerInstancesResponse _
derive instance repGenericListContainerInstancesResponse :: Generic ListContainerInstancesResponse _
instance showListContainerInstancesResponse :: Show ListContainerInstancesResponse where show = genericShow
instance decodeListContainerInstancesResponse :: Decode ListContainerInstancesResponse where decode = genericDecode options
instance encodeListContainerInstancesResponse :: Encode ListContainerInstancesResponse where encode = genericEncode options

-- | Constructs ListContainerInstancesResponse from required parameters
newListContainerInstancesResponse :: ListContainerInstancesResponse
newListContainerInstancesResponse  = ListContainerInstancesResponse { "containerInstanceArns": Nothing, "nextToken": Nothing }

-- | Constructs ListContainerInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainerInstancesResponse' :: ( { "containerInstanceArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"containerInstanceArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListContainerInstancesResponse
newListContainerInstancesResponse'  customize = (ListContainerInstancesResponse <<< customize) { "containerInstanceArns": Nothing, "nextToken": Nothing }



newtype ListServicesRequest = ListServicesRequest 
  { "cluster" :: Maybe (String)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  , "launchType" :: Maybe (LaunchType)
  }
derive instance newtypeListServicesRequest :: Newtype ListServicesRequest _
derive instance repGenericListServicesRequest :: Generic ListServicesRequest _
instance showListServicesRequest :: Show ListServicesRequest where show = genericShow
instance decodeListServicesRequest :: Decode ListServicesRequest where decode = genericDecode options
instance encodeListServicesRequest :: Encode ListServicesRequest where encode = genericEncode options

-- | Constructs ListServicesRequest from required parameters
newListServicesRequest :: ListServicesRequest
newListServicesRequest  = ListServicesRequest { "cluster": Nothing, "launchType": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesRequest' :: ( { "cluster" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "launchType" :: Maybe (LaunchType) } -> {"cluster" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "launchType" :: Maybe (LaunchType) } ) -> ListServicesRequest
newListServicesRequest'  customize = (ListServicesRequest <<< customize) { "cluster": Nothing, "launchType": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListServicesResponse = ListServicesResponse 
  { "serviceArns" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListServicesResponse :: Newtype ListServicesResponse _
derive instance repGenericListServicesResponse :: Generic ListServicesResponse _
instance showListServicesResponse :: Show ListServicesResponse where show = genericShow
instance decodeListServicesResponse :: Decode ListServicesResponse where decode = genericDecode options
instance encodeListServicesResponse :: Encode ListServicesResponse where encode = genericEncode options

-- | Constructs ListServicesResponse from required parameters
newListServicesResponse :: ListServicesResponse
newListServicesResponse  = ListServicesResponse { "nextToken": Nothing, "serviceArns": Nothing }

-- | Constructs ListServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesResponse' :: ( { "serviceArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"serviceArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListServicesResponse
newListServicesResponse'  customize = (ListServicesResponse <<< customize) { "nextToken": Nothing, "serviceArns": Nothing }



newtype ListTaskDefinitionFamiliesRequest = ListTaskDefinitionFamiliesRequest 
  { "familyPrefix" :: Maybe (String)
  , "status" :: Maybe (TaskDefinitionFamilyStatus)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeListTaskDefinitionFamiliesRequest :: Newtype ListTaskDefinitionFamiliesRequest _
derive instance repGenericListTaskDefinitionFamiliesRequest :: Generic ListTaskDefinitionFamiliesRequest _
instance showListTaskDefinitionFamiliesRequest :: Show ListTaskDefinitionFamiliesRequest where show = genericShow
instance decodeListTaskDefinitionFamiliesRequest :: Decode ListTaskDefinitionFamiliesRequest where decode = genericDecode options
instance encodeListTaskDefinitionFamiliesRequest :: Encode ListTaskDefinitionFamiliesRequest where encode = genericEncode options

-- | Constructs ListTaskDefinitionFamiliesRequest from required parameters
newListTaskDefinitionFamiliesRequest :: ListTaskDefinitionFamiliesRequest
newListTaskDefinitionFamiliesRequest  = ListTaskDefinitionFamiliesRequest { "familyPrefix": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }

-- | Constructs ListTaskDefinitionFamiliesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionFamiliesRequest' :: ( { "familyPrefix" :: Maybe (String) , "status" :: Maybe (TaskDefinitionFamilyStatus) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } -> {"familyPrefix" :: Maybe (String) , "status" :: Maybe (TaskDefinitionFamilyStatus) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } ) -> ListTaskDefinitionFamiliesRequest
newListTaskDefinitionFamiliesRequest'  customize = (ListTaskDefinitionFamiliesRequest <<< customize) { "familyPrefix": Nothing, "maxResults": Nothing, "nextToken": Nothing, "status": Nothing }



newtype ListTaskDefinitionFamiliesResponse = ListTaskDefinitionFamiliesResponse 
  { "families" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListTaskDefinitionFamiliesResponse :: Newtype ListTaskDefinitionFamiliesResponse _
derive instance repGenericListTaskDefinitionFamiliesResponse :: Generic ListTaskDefinitionFamiliesResponse _
instance showListTaskDefinitionFamiliesResponse :: Show ListTaskDefinitionFamiliesResponse where show = genericShow
instance decodeListTaskDefinitionFamiliesResponse :: Decode ListTaskDefinitionFamiliesResponse where decode = genericDecode options
instance encodeListTaskDefinitionFamiliesResponse :: Encode ListTaskDefinitionFamiliesResponse where encode = genericEncode options

-- | Constructs ListTaskDefinitionFamiliesResponse from required parameters
newListTaskDefinitionFamiliesResponse :: ListTaskDefinitionFamiliesResponse
newListTaskDefinitionFamiliesResponse  = ListTaskDefinitionFamiliesResponse { "families": Nothing, "nextToken": Nothing }

-- | Constructs ListTaskDefinitionFamiliesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionFamiliesResponse' :: ( { "families" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"families" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListTaskDefinitionFamiliesResponse
newListTaskDefinitionFamiliesResponse'  customize = (ListTaskDefinitionFamiliesResponse <<< customize) { "families": Nothing, "nextToken": Nothing }



newtype ListTaskDefinitionsRequest = ListTaskDefinitionsRequest 
  { "familyPrefix" :: Maybe (String)
  , "status" :: Maybe (TaskDefinitionStatus)
  , "sort" :: Maybe (SortOrder)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  }
derive instance newtypeListTaskDefinitionsRequest :: Newtype ListTaskDefinitionsRequest _
derive instance repGenericListTaskDefinitionsRequest :: Generic ListTaskDefinitionsRequest _
instance showListTaskDefinitionsRequest :: Show ListTaskDefinitionsRequest where show = genericShow
instance decodeListTaskDefinitionsRequest :: Decode ListTaskDefinitionsRequest where decode = genericDecode options
instance encodeListTaskDefinitionsRequest :: Encode ListTaskDefinitionsRequest where encode = genericEncode options

-- | Constructs ListTaskDefinitionsRequest from required parameters
newListTaskDefinitionsRequest :: ListTaskDefinitionsRequest
newListTaskDefinitionsRequest  = ListTaskDefinitionsRequest { "familyPrefix": Nothing, "maxResults": Nothing, "nextToken": Nothing, "sort": Nothing, "status": Nothing }

-- | Constructs ListTaskDefinitionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionsRequest' :: ( { "familyPrefix" :: Maybe (String) , "status" :: Maybe (TaskDefinitionStatus) , "sort" :: Maybe (SortOrder) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } -> {"familyPrefix" :: Maybe (String) , "status" :: Maybe (TaskDefinitionStatus) , "sort" :: Maybe (SortOrder) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) } ) -> ListTaskDefinitionsRequest
newListTaskDefinitionsRequest'  customize = (ListTaskDefinitionsRequest <<< customize) { "familyPrefix": Nothing, "maxResults": Nothing, "nextToken": Nothing, "sort": Nothing, "status": Nothing }



newtype ListTaskDefinitionsResponse = ListTaskDefinitionsResponse 
  { "taskDefinitionArns" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListTaskDefinitionsResponse :: Newtype ListTaskDefinitionsResponse _
derive instance repGenericListTaskDefinitionsResponse :: Generic ListTaskDefinitionsResponse _
instance showListTaskDefinitionsResponse :: Show ListTaskDefinitionsResponse where show = genericShow
instance decodeListTaskDefinitionsResponse :: Decode ListTaskDefinitionsResponse where decode = genericDecode options
instance encodeListTaskDefinitionsResponse :: Encode ListTaskDefinitionsResponse where encode = genericEncode options

-- | Constructs ListTaskDefinitionsResponse from required parameters
newListTaskDefinitionsResponse :: ListTaskDefinitionsResponse
newListTaskDefinitionsResponse  = ListTaskDefinitionsResponse { "nextToken": Nothing, "taskDefinitionArns": Nothing }

-- | Constructs ListTaskDefinitionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionsResponse' :: ( { "taskDefinitionArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"taskDefinitionArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListTaskDefinitionsResponse
newListTaskDefinitionsResponse'  customize = (ListTaskDefinitionsResponse <<< customize) { "nextToken": Nothing, "taskDefinitionArns": Nothing }



newtype ListTasksRequest = ListTasksRequest 
  { "cluster" :: Maybe (String)
  , "containerInstance" :: Maybe (String)
  , "family" :: Maybe (String)
  , "nextToken" :: Maybe (String)
  , "maxResults" :: Maybe (BoxedInteger)
  , "startedBy" :: Maybe (String)
  , "serviceName" :: Maybe (String)
  , "desiredStatus" :: Maybe (DesiredStatus)
  , "launchType" :: Maybe (LaunchType)
  }
derive instance newtypeListTasksRequest :: Newtype ListTasksRequest _
derive instance repGenericListTasksRequest :: Generic ListTasksRequest _
instance showListTasksRequest :: Show ListTasksRequest where show = genericShow
instance decodeListTasksRequest :: Decode ListTasksRequest where decode = genericDecode options
instance encodeListTasksRequest :: Encode ListTasksRequest where encode = genericEncode options

-- | Constructs ListTasksRequest from required parameters
newListTasksRequest :: ListTasksRequest
newListTasksRequest  = ListTasksRequest { "cluster": Nothing, "containerInstance": Nothing, "desiredStatus": Nothing, "family": Nothing, "launchType": Nothing, "maxResults": Nothing, "nextToken": Nothing, "serviceName": Nothing, "startedBy": Nothing }

-- | Constructs ListTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTasksRequest' :: ( { "cluster" :: Maybe (String) , "containerInstance" :: Maybe (String) , "family" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "startedBy" :: Maybe (String) , "serviceName" :: Maybe (String) , "desiredStatus" :: Maybe (DesiredStatus) , "launchType" :: Maybe (LaunchType) } -> {"cluster" :: Maybe (String) , "containerInstance" :: Maybe (String) , "family" :: Maybe (String) , "nextToken" :: Maybe (String) , "maxResults" :: Maybe (BoxedInteger) , "startedBy" :: Maybe (String) , "serviceName" :: Maybe (String) , "desiredStatus" :: Maybe (DesiredStatus) , "launchType" :: Maybe (LaunchType) } ) -> ListTasksRequest
newListTasksRequest'  customize = (ListTasksRequest <<< customize) { "cluster": Nothing, "containerInstance": Nothing, "desiredStatus": Nothing, "family": Nothing, "launchType": Nothing, "maxResults": Nothing, "nextToken": Nothing, "serviceName": Nothing, "startedBy": Nothing }



newtype ListTasksResponse = ListTasksResponse 
  { "taskArns" :: Maybe (StringList)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListTasksResponse :: Newtype ListTasksResponse _
derive instance repGenericListTasksResponse :: Generic ListTasksResponse _
instance showListTasksResponse :: Show ListTasksResponse where show = genericShow
instance decodeListTasksResponse :: Decode ListTasksResponse where decode = genericDecode options
instance encodeListTasksResponse :: Encode ListTasksResponse where encode = genericEncode options

-- | Constructs ListTasksResponse from required parameters
newListTasksResponse :: ListTasksResponse
newListTasksResponse  = ListTasksResponse { "nextToken": Nothing, "taskArns": Nothing }

-- | Constructs ListTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTasksResponse' :: ( { "taskArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } -> {"taskArns" :: Maybe (StringList) , "nextToken" :: Maybe (String) } ) -> ListTasksResponse
newListTasksResponse'  customize = (ListTasksResponse <<< customize) { "nextToken": Nothing, "taskArns": Nothing }



-- | <p>Details on a load balancer that is used with a service.</p>
newtype LoadBalancer = LoadBalancer 
  { "targetGroupArn" :: Maybe (String)
  , "loadBalancerName" :: Maybe (String)
  , "containerName" :: Maybe (String)
  , "containerPort" :: Maybe (BoxedInteger)
  }
derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive instance repGenericLoadBalancer :: Generic LoadBalancer _
instance showLoadBalancer :: Show LoadBalancer where show = genericShow
instance decodeLoadBalancer :: Decode LoadBalancer where decode = genericDecode options
instance encodeLoadBalancer :: Encode LoadBalancer where encode = genericEncode options

-- | Constructs LoadBalancer from required parameters
newLoadBalancer :: LoadBalancer
newLoadBalancer  = LoadBalancer { "containerName": Nothing, "containerPort": Nothing, "loadBalancerName": Nothing, "targetGroupArn": Nothing }

-- | Constructs LoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancer' :: ( { "targetGroupArn" :: Maybe (String) , "loadBalancerName" :: Maybe (String) , "containerName" :: Maybe (String) , "containerPort" :: Maybe (BoxedInteger) } -> {"targetGroupArn" :: Maybe (String) , "loadBalancerName" :: Maybe (String) , "containerName" :: Maybe (String) , "containerPort" :: Maybe (BoxedInteger) } ) -> LoadBalancer
newLoadBalancer'  customize = (LoadBalancer <<< customize) { "containerName": Nothing, "containerPort": Nothing, "loadBalancerName": Nothing, "targetGroupArn": Nothing }



newtype LoadBalancers = LoadBalancers (Array LoadBalancer)
derive instance newtypeLoadBalancers :: Newtype LoadBalancers _
derive instance repGenericLoadBalancers :: Generic LoadBalancers _
instance showLoadBalancers :: Show LoadBalancers where show = genericShow
instance decodeLoadBalancers :: Decode LoadBalancers where decode = genericDecode options
instance encodeLoadBalancers :: Encode LoadBalancers where encode = genericEncode options



-- | <p>Log configuration options to send to a custom log driver for the container.</p>
newtype LogConfiguration = LogConfiguration 
  { "logDriver" :: (LogDriver)
  , "options" :: Maybe (LogConfigurationOptionsMap)
  }
derive instance newtypeLogConfiguration :: Newtype LogConfiguration _
derive instance repGenericLogConfiguration :: Generic LogConfiguration _
instance showLogConfiguration :: Show LogConfiguration where show = genericShow
instance decodeLogConfiguration :: Decode LogConfiguration where decode = genericDecode options
instance encodeLogConfiguration :: Encode LogConfiguration where encode = genericEncode options

-- | Constructs LogConfiguration from required parameters
newLogConfiguration :: LogDriver -> LogConfiguration
newLogConfiguration _logDriver = LogConfiguration { "logDriver": _logDriver, "options": Nothing }

-- | Constructs LogConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogConfiguration' :: LogDriver -> ( { "logDriver" :: (LogDriver) , "options" :: Maybe (LogConfigurationOptionsMap) } -> {"logDriver" :: (LogDriver) , "options" :: Maybe (LogConfigurationOptionsMap) } ) -> LogConfiguration
newLogConfiguration' _logDriver customize = (LogConfiguration <<< customize) { "logDriver": _logDriver, "options": Nothing }



newtype LogConfigurationOptionsMap = LogConfigurationOptionsMap (StrMap.StrMap String)
derive instance newtypeLogConfigurationOptionsMap :: Newtype LogConfigurationOptionsMap _
derive instance repGenericLogConfigurationOptionsMap :: Generic LogConfigurationOptionsMap _
instance showLogConfigurationOptionsMap :: Show LogConfigurationOptionsMap where show = genericShow
instance decodeLogConfigurationOptionsMap :: Decode LogConfigurationOptionsMap where decode = genericDecode options
instance encodeLogConfigurationOptionsMap :: Encode LogConfigurationOptionsMap where encode = genericEncode options



newtype LogDriver = LogDriver String
derive instance newtypeLogDriver :: Newtype LogDriver _
derive instance repGenericLogDriver :: Generic LogDriver _
instance showLogDriver :: Show LogDriver where show = genericShow
instance decodeLogDriver :: Decode LogDriver where decode = genericDecode options
instance encodeLogDriver :: Encode LogDriver where encode = genericEncode options



-- | <p>Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.</p>
newtype MissingVersionException = MissingVersionException Types.NoArguments
derive instance newtypeMissingVersionException :: Newtype MissingVersionException _
derive instance repGenericMissingVersionException :: Generic MissingVersionException _
instance showMissingVersionException :: Show MissingVersionException where show = genericShow
instance decodeMissingVersionException :: Decode MissingVersionException where decode = genericDecode options
instance encodeMissingVersionException :: Encode MissingVersionException where encode = genericEncode options



-- | <p>Details on a volume mount point that is used in a container definition.</p>
newtype MountPoint = MountPoint 
  { "sourceVolume" :: Maybe (String)
  , "containerPath" :: Maybe (String)
  , "readOnly" :: Maybe (BoxedBoolean)
  }
derive instance newtypeMountPoint :: Newtype MountPoint _
derive instance repGenericMountPoint :: Generic MountPoint _
instance showMountPoint :: Show MountPoint where show = genericShow
instance decodeMountPoint :: Decode MountPoint where decode = genericDecode options
instance encodeMountPoint :: Encode MountPoint where encode = genericEncode options

-- | Constructs MountPoint from required parameters
newMountPoint :: MountPoint
newMountPoint  = MountPoint { "containerPath": Nothing, "readOnly": Nothing, "sourceVolume": Nothing }

-- | Constructs MountPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMountPoint' :: ( { "sourceVolume" :: Maybe (String) , "containerPath" :: Maybe (String) , "readOnly" :: Maybe (BoxedBoolean) } -> {"sourceVolume" :: Maybe (String) , "containerPath" :: Maybe (String) , "readOnly" :: Maybe (BoxedBoolean) } ) -> MountPoint
newMountPoint'  customize = (MountPoint <<< customize) { "containerPath": Nothing, "readOnly": Nothing, "sourceVolume": Nothing }



newtype MountPointList = MountPointList (Array MountPoint)
derive instance newtypeMountPointList :: Newtype MountPointList _
derive instance repGenericMountPointList :: Generic MountPointList _
instance showMountPointList :: Show MountPointList where show = genericShow
instance decodeMountPointList :: Decode MountPointList where decode = genericDecode options
instance encodeMountPointList :: Encode MountPointList where encode = genericEncode options



-- | <p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
newtype NetworkBinding = NetworkBinding 
  { "bindIP" :: Maybe (String)
  , "containerPort" :: Maybe (BoxedInteger)
  , "hostPort" :: Maybe (BoxedInteger)
  , "protocol" :: Maybe (TransportProtocol)
  }
derive instance newtypeNetworkBinding :: Newtype NetworkBinding _
derive instance repGenericNetworkBinding :: Generic NetworkBinding _
instance showNetworkBinding :: Show NetworkBinding where show = genericShow
instance decodeNetworkBinding :: Decode NetworkBinding where decode = genericDecode options
instance encodeNetworkBinding :: Encode NetworkBinding where encode = genericEncode options

-- | Constructs NetworkBinding from required parameters
newNetworkBinding :: NetworkBinding
newNetworkBinding  = NetworkBinding { "bindIP": Nothing, "containerPort": Nothing, "hostPort": Nothing, "protocol": Nothing }

-- | Constructs NetworkBinding's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkBinding' :: ( { "bindIP" :: Maybe (String) , "containerPort" :: Maybe (BoxedInteger) , "hostPort" :: Maybe (BoxedInteger) , "protocol" :: Maybe (TransportProtocol) } -> {"bindIP" :: Maybe (String) , "containerPort" :: Maybe (BoxedInteger) , "hostPort" :: Maybe (BoxedInteger) , "protocol" :: Maybe (TransportProtocol) } ) -> NetworkBinding
newNetworkBinding'  customize = (NetworkBinding <<< customize) { "bindIP": Nothing, "containerPort": Nothing, "hostPort": Nothing, "protocol": Nothing }



newtype NetworkBindings = NetworkBindings (Array NetworkBinding)
derive instance newtypeNetworkBindings :: Newtype NetworkBindings _
derive instance repGenericNetworkBindings :: Generic NetworkBindings _
instance showNetworkBindings :: Show NetworkBindings where show = genericShow
instance decodeNetworkBindings :: Decode NetworkBindings where decode = genericDecode options
instance encodeNetworkBindings :: Encode NetworkBindings where encode = genericEncode options



-- | <p>An object representing the network configuration for a task or service.</p>
newtype NetworkConfiguration = NetworkConfiguration 
  { "awsvpcConfiguration" :: Maybe (AwsVpcConfiguration)
  }
derive instance newtypeNetworkConfiguration :: Newtype NetworkConfiguration _
derive instance repGenericNetworkConfiguration :: Generic NetworkConfiguration _
instance showNetworkConfiguration :: Show NetworkConfiguration where show = genericShow
instance decodeNetworkConfiguration :: Decode NetworkConfiguration where decode = genericDecode options
instance encodeNetworkConfiguration :: Encode NetworkConfiguration where encode = genericEncode options

-- | Constructs NetworkConfiguration from required parameters
newNetworkConfiguration :: NetworkConfiguration
newNetworkConfiguration  = NetworkConfiguration { "awsvpcConfiguration": Nothing }

-- | Constructs NetworkConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkConfiguration' :: ( { "awsvpcConfiguration" :: Maybe (AwsVpcConfiguration) } -> {"awsvpcConfiguration" :: Maybe (AwsVpcConfiguration) } ) -> NetworkConfiguration
newNetworkConfiguration'  customize = (NetworkConfiguration <<< customize) { "awsvpcConfiguration": Nothing }



-- | <p>An object representing the Elastic Network Interface for tasks that use the <code>awsvpc</code> network mode.</p>
newtype NetworkInterface = NetworkInterface 
  { "attachmentId" :: Maybe (String)
  , "privateIpv4Address" :: Maybe (String)
  , "ipv6Address" :: Maybe (String)
  }
derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive instance repGenericNetworkInterface :: Generic NetworkInterface _
instance showNetworkInterface :: Show NetworkInterface where show = genericShow
instance decodeNetworkInterface :: Decode NetworkInterface where decode = genericDecode options
instance encodeNetworkInterface :: Encode NetworkInterface where encode = genericEncode options

-- | Constructs NetworkInterface from required parameters
newNetworkInterface :: NetworkInterface
newNetworkInterface  = NetworkInterface { "attachmentId": Nothing, "ipv6Address": Nothing, "privateIpv4Address": Nothing }

-- | Constructs NetworkInterface's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkInterface' :: ( { "attachmentId" :: Maybe (String) , "privateIpv4Address" :: Maybe (String) , "ipv6Address" :: Maybe (String) } -> {"attachmentId" :: Maybe (String) , "privateIpv4Address" :: Maybe (String) , "ipv6Address" :: Maybe (String) } ) -> NetworkInterface
newNetworkInterface'  customize = (NetworkInterface <<< customize) { "attachmentId": Nothing, "ipv6Address": Nothing, "privateIpv4Address": Nothing }



newtype NetworkInterfaces = NetworkInterfaces (Array NetworkInterface)
derive instance newtypeNetworkInterfaces :: Newtype NetworkInterfaces _
derive instance repGenericNetworkInterfaces :: Generic NetworkInterfaces _
instance showNetworkInterfaces :: Show NetworkInterfaces where show = genericShow
instance decodeNetworkInterfaces :: Decode NetworkInterfaces where decode = genericDecode options
instance encodeNetworkInterfaces :: Encode NetworkInterfaces where encode = genericEncode options



newtype NetworkMode = NetworkMode String
derive instance newtypeNetworkMode :: Newtype NetworkMode _
derive instance repGenericNetworkMode :: Generic NetworkMode _
instance showNetworkMode :: Show NetworkMode where show = genericShow
instance decodeNetworkMode :: Decode NetworkMode where decode = genericDecode options
instance encodeNetworkMode :: Encode NetworkMode where encode = genericEncode options



-- | <p>There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.</p>
newtype NoUpdateAvailableException = NoUpdateAvailableException Types.NoArguments
derive instance newtypeNoUpdateAvailableException :: Newtype NoUpdateAvailableException _
derive instance repGenericNoUpdateAvailableException :: Generic NoUpdateAvailableException _
instance showNoUpdateAvailableException :: Show NoUpdateAvailableException where show = genericShow
instance decodeNoUpdateAvailableException :: Decode NoUpdateAvailableException where decode = genericDecode options
instance encodeNoUpdateAvailableException :: Encode NoUpdateAvailableException where encode = genericEncode options



-- | <p>An object representing a constraint on task placement. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
newtype PlacementConstraint = PlacementConstraint 
  { "type" :: Maybe (PlacementConstraintType)
  , "expression" :: Maybe (String)
  }
derive instance newtypePlacementConstraint :: Newtype PlacementConstraint _
derive instance repGenericPlacementConstraint :: Generic PlacementConstraint _
instance showPlacementConstraint :: Show PlacementConstraint where show = genericShow
instance decodePlacementConstraint :: Decode PlacementConstraint where decode = genericDecode options
instance encodePlacementConstraint :: Encode PlacementConstraint where encode = genericEncode options

-- | Constructs PlacementConstraint from required parameters
newPlacementConstraint :: PlacementConstraint
newPlacementConstraint  = PlacementConstraint { "expression": Nothing, "type": Nothing }

-- | Constructs PlacementConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementConstraint' :: ( { "type" :: Maybe (PlacementConstraintType) , "expression" :: Maybe (String) } -> {"type" :: Maybe (PlacementConstraintType) , "expression" :: Maybe (String) } ) -> PlacementConstraint
newPlacementConstraint'  customize = (PlacementConstraint <<< customize) { "expression": Nothing, "type": Nothing }



newtype PlacementConstraintType = PlacementConstraintType String
derive instance newtypePlacementConstraintType :: Newtype PlacementConstraintType _
derive instance repGenericPlacementConstraintType :: Generic PlacementConstraintType _
instance showPlacementConstraintType :: Show PlacementConstraintType where show = genericShow
instance decodePlacementConstraintType :: Decode PlacementConstraintType where decode = genericDecode options
instance encodePlacementConstraintType :: Encode PlacementConstraintType where encode = genericEncode options



newtype PlacementConstraints = PlacementConstraints (Array PlacementConstraint)
derive instance newtypePlacementConstraints :: Newtype PlacementConstraints _
derive instance repGenericPlacementConstraints :: Generic PlacementConstraints _
instance showPlacementConstraints :: Show PlacementConstraints where show = genericShow
instance decodePlacementConstraints :: Decode PlacementConstraints where decode = genericDecode options
instance encodePlacementConstraints :: Encode PlacementConstraints where encode = genericEncode options



newtype PlacementStrategies = PlacementStrategies (Array PlacementStrategy)
derive instance newtypePlacementStrategies :: Newtype PlacementStrategies _
derive instance repGenericPlacementStrategies :: Generic PlacementStrategies _
instance showPlacementStrategies :: Show PlacementStrategies where show = genericShow
instance decodePlacementStrategies :: Decode PlacementStrategies where decode = genericDecode options
instance encodePlacementStrategies :: Encode PlacementStrategies where encode = genericEncode options



-- | <p>The task placement strategy for a task or service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
newtype PlacementStrategy = PlacementStrategy 
  { "type" :: Maybe (PlacementStrategyType)
  , "field" :: Maybe (String)
  }
derive instance newtypePlacementStrategy :: Newtype PlacementStrategy _
derive instance repGenericPlacementStrategy :: Generic PlacementStrategy _
instance showPlacementStrategy :: Show PlacementStrategy where show = genericShow
instance decodePlacementStrategy :: Decode PlacementStrategy where decode = genericDecode options
instance encodePlacementStrategy :: Encode PlacementStrategy where encode = genericEncode options

-- | Constructs PlacementStrategy from required parameters
newPlacementStrategy :: PlacementStrategy
newPlacementStrategy  = PlacementStrategy { "field": Nothing, "type": Nothing }

-- | Constructs PlacementStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementStrategy' :: ( { "type" :: Maybe (PlacementStrategyType) , "field" :: Maybe (String) } -> {"type" :: Maybe (PlacementStrategyType) , "field" :: Maybe (String) } ) -> PlacementStrategy
newPlacementStrategy'  customize = (PlacementStrategy <<< customize) { "field": Nothing, "type": Nothing }



newtype PlacementStrategyType = PlacementStrategyType String
derive instance newtypePlacementStrategyType :: Newtype PlacementStrategyType _
derive instance repGenericPlacementStrategyType :: Generic PlacementStrategyType _
instance showPlacementStrategyType :: Show PlacementStrategyType where show = genericShow
instance decodePlacementStrategyType :: Decode PlacementStrategyType where decode = genericDecode options
instance encodePlacementStrategyType :: Encode PlacementStrategyType where encode = genericEncode options



-- | <p>The specified platform version does not satisfy the task definition’s required capabilities.</p>
newtype PlatformTaskDefinitionIncompatibilityException = PlatformTaskDefinitionIncompatibilityException Types.NoArguments
derive instance newtypePlatformTaskDefinitionIncompatibilityException :: Newtype PlatformTaskDefinitionIncompatibilityException _
derive instance repGenericPlatformTaskDefinitionIncompatibilityException :: Generic PlatformTaskDefinitionIncompatibilityException _
instance showPlatformTaskDefinitionIncompatibilityException :: Show PlatformTaskDefinitionIncompatibilityException where show = genericShow
instance decodePlatformTaskDefinitionIncompatibilityException :: Decode PlatformTaskDefinitionIncompatibilityException where decode = genericDecode options
instance encodePlatformTaskDefinitionIncompatibilityException :: Encode PlatformTaskDefinitionIncompatibilityException where encode = genericEncode options



-- | <p>The specified platform version does not exist.</p>
newtype PlatformUnknownException = PlatformUnknownException Types.NoArguments
derive instance newtypePlatformUnknownException :: Newtype PlatformUnknownException _
derive instance repGenericPlatformUnknownException :: Generic PlatformUnknownException _
instance showPlatformUnknownException :: Show PlatformUnknownException where show = genericShow
instance decodePlatformUnknownException :: Decode PlatformUnknownException where decode = genericDecode options
instance encodePlatformUnknownException :: Encode PlatformUnknownException where encode = genericEncode options



-- | <p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition.</p> <p>If using containers in a task with the <code>awsvpc</code> or <code>host</code> network mode, exposed ports should be specified using <code>containerPort</code>. The <code>hostPort</code> can be left blank or it must be the same value as the <code>containerPort</code>.</p> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
newtype PortMapping = PortMapping 
  { "containerPort" :: Maybe (BoxedInteger)
  , "hostPort" :: Maybe (BoxedInteger)
  , "protocol" :: Maybe (TransportProtocol)
  }
derive instance newtypePortMapping :: Newtype PortMapping _
derive instance repGenericPortMapping :: Generic PortMapping _
instance showPortMapping :: Show PortMapping where show = genericShow
instance decodePortMapping :: Decode PortMapping where decode = genericDecode options
instance encodePortMapping :: Encode PortMapping where encode = genericEncode options

-- | Constructs PortMapping from required parameters
newPortMapping :: PortMapping
newPortMapping  = PortMapping { "containerPort": Nothing, "hostPort": Nothing, "protocol": Nothing }

-- | Constructs PortMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortMapping' :: ( { "containerPort" :: Maybe (BoxedInteger) , "hostPort" :: Maybe (BoxedInteger) , "protocol" :: Maybe (TransportProtocol) } -> {"containerPort" :: Maybe (BoxedInteger) , "hostPort" :: Maybe (BoxedInteger) , "protocol" :: Maybe (TransportProtocol) } ) -> PortMapping
newPortMapping'  customize = (PortMapping <<< customize) { "containerPort": Nothing, "hostPort": Nothing, "protocol": Nothing }



newtype PortMappingList = PortMappingList (Array PortMapping)
derive instance newtypePortMappingList :: Newtype PortMappingList _
derive instance repGenericPortMappingList :: Generic PortMappingList _
instance showPortMappingList :: Show PortMappingList where show = genericShow
instance decodePortMappingList :: Decode PortMappingList where decode = genericDecode options
instance encodePortMappingList :: Encode PortMappingList where encode = genericEncode options



newtype PutAttributesRequest = PutAttributesRequest 
  { "cluster" :: Maybe (String)
  , "attributes" :: (Attributes)
  }
derive instance newtypePutAttributesRequest :: Newtype PutAttributesRequest _
derive instance repGenericPutAttributesRequest :: Generic PutAttributesRequest _
instance showPutAttributesRequest :: Show PutAttributesRequest where show = genericShow
instance decodePutAttributesRequest :: Decode PutAttributesRequest where decode = genericDecode options
instance encodePutAttributesRequest :: Encode PutAttributesRequest where encode = genericEncode options

-- | Constructs PutAttributesRequest from required parameters
newPutAttributesRequest :: Attributes -> PutAttributesRequest
newPutAttributesRequest _attributes = PutAttributesRequest { "attributes": _attributes, "cluster": Nothing }

-- | Constructs PutAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAttributesRequest' :: Attributes -> ( { "cluster" :: Maybe (String) , "attributes" :: (Attributes) } -> {"cluster" :: Maybe (String) , "attributes" :: (Attributes) } ) -> PutAttributesRequest
newPutAttributesRequest' _attributes customize = (PutAttributesRequest <<< customize) { "attributes": _attributes, "cluster": Nothing }



newtype PutAttributesResponse = PutAttributesResponse 
  { "attributes" :: Maybe (Attributes)
  }
derive instance newtypePutAttributesResponse :: Newtype PutAttributesResponse _
derive instance repGenericPutAttributesResponse :: Generic PutAttributesResponse _
instance showPutAttributesResponse :: Show PutAttributesResponse where show = genericShow
instance decodePutAttributesResponse :: Decode PutAttributesResponse where decode = genericDecode options
instance encodePutAttributesResponse :: Encode PutAttributesResponse where encode = genericEncode options

-- | Constructs PutAttributesResponse from required parameters
newPutAttributesResponse :: PutAttributesResponse
newPutAttributesResponse  = PutAttributesResponse { "attributes": Nothing }

-- | Constructs PutAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAttributesResponse' :: ( { "attributes" :: Maybe (Attributes) } -> {"attributes" :: Maybe (Attributes) } ) -> PutAttributesResponse
newPutAttributesResponse'  customize = (PutAttributesResponse <<< customize) { "attributes": Nothing }



newtype RegisterContainerInstanceRequest = RegisterContainerInstanceRequest 
  { "cluster" :: Maybe (String)
  , "instanceIdentityDocument" :: Maybe (String)
  , "instanceIdentityDocumentSignature" :: Maybe (String)
  , "totalResources" :: Maybe (Resources)
  , "versionInfo" :: Maybe (VersionInfo)
  , "containerInstanceArn" :: Maybe (String)
  , "attributes" :: Maybe (Attributes)
  }
derive instance newtypeRegisterContainerInstanceRequest :: Newtype RegisterContainerInstanceRequest _
derive instance repGenericRegisterContainerInstanceRequest :: Generic RegisterContainerInstanceRequest _
instance showRegisterContainerInstanceRequest :: Show RegisterContainerInstanceRequest where show = genericShow
instance decodeRegisterContainerInstanceRequest :: Decode RegisterContainerInstanceRequest where decode = genericDecode options
instance encodeRegisterContainerInstanceRequest :: Encode RegisterContainerInstanceRequest where encode = genericEncode options

-- | Constructs RegisterContainerInstanceRequest from required parameters
newRegisterContainerInstanceRequest :: RegisterContainerInstanceRequest
newRegisterContainerInstanceRequest  = RegisterContainerInstanceRequest { "attributes": Nothing, "cluster": Nothing, "containerInstanceArn": Nothing, "instanceIdentityDocument": Nothing, "instanceIdentityDocumentSignature": Nothing, "totalResources": Nothing, "versionInfo": Nothing }

-- | Constructs RegisterContainerInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterContainerInstanceRequest' :: ( { "cluster" :: Maybe (String) , "instanceIdentityDocument" :: Maybe (String) , "instanceIdentityDocumentSignature" :: Maybe (String) , "totalResources" :: Maybe (Resources) , "versionInfo" :: Maybe (VersionInfo) , "containerInstanceArn" :: Maybe (String) , "attributes" :: Maybe (Attributes) } -> {"cluster" :: Maybe (String) , "instanceIdentityDocument" :: Maybe (String) , "instanceIdentityDocumentSignature" :: Maybe (String) , "totalResources" :: Maybe (Resources) , "versionInfo" :: Maybe (VersionInfo) , "containerInstanceArn" :: Maybe (String) , "attributes" :: Maybe (Attributes) } ) -> RegisterContainerInstanceRequest
newRegisterContainerInstanceRequest'  customize = (RegisterContainerInstanceRequest <<< customize) { "attributes": Nothing, "cluster": Nothing, "containerInstanceArn": Nothing, "instanceIdentityDocument": Nothing, "instanceIdentityDocumentSignature": Nothing, "totalResources": Nothing, "versionInfo": Nothing }



newtype RegisterContainerInstanceResponse = RegisterContainerInstanceResponse 
  { "containerInstance" :: Maybe (ContainerInstance)
  }
derive instance newtypeRegisterContainerInstanceResponse :: Newtype RegisterContainerInstanceResponse _
derive instance repGenericRegisterContainerInstanceResponse :: Generic RegisterContainerInstanceResponse _
instance showRegisterContainerInstanceResponse :: Show RegisterContainerInstanceResponse where show = genericShow
instance decodeRegisterContainerInstanceResponse :: Decode RegisterContainerInstanceResponse where decode = genericDecode options
instance encodeRegisterContainerInstanceResponse :: Encode RegisterContainerInstanceResponse where encode = genericEncode options

-- | Constructs RegisterContainerInstanceResponse from required parameters
newRegisterContainerInstanceResponse :: RegisterContainerInstanceResponse
newRegisterContainerInstanceResponse  = RegisterContainerInstanceResponse { "containerInstance": Nothing }

-- | Constructs RegisterContainerInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterContainerInstanceResponse' :: ( { "containerInstance" :: Maybe (ContainerInstance) } -> {"containerInstance" :: Maybe (ContainerInstance) } ) -> RegisterContainerInstanceResponse
newRegisterContainerInstanceResponse'  customize = (RegisterContainerInstanceResponse <<< customize) { "containerInstance": Nothing }



newtype RegisterTaskDefinitionRequest = RegisterTaskDefinitionRequest 
  { "family" :: (String)
  , "taskRoleArn" :: Maybe (String)
  , "executionRoleArn" :: Maybe (String)
  , "networkMode" :: Maybe (NetworkMode)
  , "containerDefinitions" :: (ContainerDefinitions)
  , "volumes" :: Maybe (VolumeList)
  , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints)
  , "requiresCompatibilities" :: Maybe (CompatibilityList)
  , "cpu" :: Maybe (String)
  , "memory" :: Maybe (String)
  }
derive instance newtypeRegisterTaskDefinitionRequest :: Newtype RegisterTaskDefinitionRequest _
derive instance repGenericRegisterTaskDefinitionRequest :: Generic RegisterTaskDefinitionRequest _
instance showRegisterTaskDefinitionRequest :: Show RegisterTaskDefinitionRequest where show = genericShow
instance decodeRegisterTaskDefinitionRequest :: Decode RegisterTaskDefinitionRequest where decode = genericDecode options
instance encodeRegisterTaskDefinitionRequest :: Encode RegisterTaskDefinitionRequest where encode = genericEncode options

-- | Constructs RegisterTaskDefinitionRequest from required parameters
newRegisterTaskDefinitionRequest :: ContainerDefinitions -> String -> RegisterTaskDefinitionRequest
newRegisterTaskDefinitionRequest _containerDefinitions _family = RegisterTaskDefinitionRequest { "containerDefinitions": _containerDefinitions, "family": _family, "cpu": Nothing, "executionRoleArn": Nothing, "memory": Nothing, "networkMode": Nothing, "placementConstraints": Nothing, "requiresCompatibilities": Nothing, "taskRoleArn": Nothing, "volumes": Nothing }

-- | Constructs RegisterTaskDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterTaskDefinitionRequest' :: ContainerDefinitions -> String -> ( { "family" :: (String) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) , "networkMode" :: Maybe (NetworkMode) , "containerDefinitions" :: (ContainerDefinitions) , "volumes" :: Maybe (VolumeList) , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints) , "requiresCompatibilities" :: Maybe (CompatibilityList) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) } -> {"family" :: (String) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) , "networkMode" :: Maybe (NetworkMode) , "containerDefinitions" :: (ContainerDefinitions) , "volumes" :: Maybe (VolumeList) , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints) , "requiresCompatibilities" :: Maybe (CompatibilityList) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) } ) -> RegisterTaskDefinitionRequest
newRegisterTaskDefinitionRequest' _containerDefinitions _family customize = (RegisterTaskDefinitionRequest <<< customize) { "containerDefinitions": _containerDefinitions, "family": _family, "cpu": Nothing, "executionRoleArn": Nothing, "memory": Nothing, "networkMode": Nothing, "placementConstraints": Nothing, "requiresCompatibilities": Nothing, "taskRoleArn": Nothing, "volumes": Nothing }



newtype RegisterTaskDefinitionResponse = RegisterTaskDefinitionResponse 
  { "taskDefinition" :: Maybe (TaskDefinition)
  }
derive instance newtypeRegisterTaskDefinitionResponse :: Newtype RegisterTaskDefinitionResponse _
derive instance repGenericRegisterTaskDefinitionResponse :: Generic RegisterTaskDefinitionResponse _
instance showRegisterTaskDefinitionResponse :: Show RegisterTaskDefinitionResponse where show = genericShow
instance decodeRegisterTaskDefinitionResponse :: Decode RegisterTaskDefinitionResponse where decode = genericDecode options
instance encodeRegisterTaskDefinitionResponse :: Encode RegisterTaskDefinitionResponse where encode = genericEncode options

-- | Constructs RegisterTaskDefinitionResponse from required parameters
newRegisterTaskDefinitionResponse :: RegisterTaskDefinitionResponse
newRegisterTaskDefinitionResponse  = RegisterTaskDefinitionResponse { "taskDefinition": Nothing }

-- | Constructs RegisterTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterTaskDefinitionResponse' :: ( { "taskDefinition" :: Maybe (TaskDefinition) } -> {"taskDefinition" :: Maybe (TaskDefinition) } ) -> RegisterTaskDefinitionResponse
newRegisterTaskDefinitionResponse'  customize = (RegisterTaskDefinitionResponse <<< customize) { "taskDefinition": Nothing }



newtype RequiresAttributes = RequiresAttributes (Array Attribute)
derive instance newtypeRequiresAttributes :: Newtype RequiresAttributes _
derive instance repGenericRequiresAttributes :: Generic RequiresAttributes _
instance showRequiresAttributes :: Show RequiresAttributes where show = genericShow
instance decodeRequiresAttributes :: Decode RequiresAttributes where decode = genericDecode options
instance encodeRequiresAttributes :: Encode RequiresAttributes where encode = genericEncode options



-- | <p>Describes the resources available for a container instance.</p>
newtype Resource = Resource 
  { "name" :: Maybe (String)
  , "type" :: Maybe (String)
  , "doubleValue" :: Maybe (Number)
  , "longValue" :: Maybe (Number)
  , "integerValue" :: Maybe (Int)
  , "stringSetValue" :: Maybe (StringList)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "doubleValue": Nothing, "integerValue": Nothing, "longValue": Nothing, "name": Nothing, "stringSetValue": Nothing, "type": Nothing }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "name" :: Maybe (String) , "type" :: Maybe (String) , "doubleValue" :: Maybe (Number) , "longValue" :: Maybe (Number) , "integerValue" :: Maybe (Int) , "stringSetValue" :: Maybe (StringList) } -> {"name" :: Maybe (String) , "type" :: Maybe (String) , "doubleValue" :: Maybe (Number) , "longValue" :: Maybe (Number) , "integerValue" :: Maybe (Int) , "stringSetValue" :: Maybe (StringList) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "doubleValue": Nothing, "integerValue": Nothing, "longValue": Nothing, "name": Nothing, "stringSetValue": Nothing, "type": Nothing }



newtype Resources = Resources (Array Resource)
derive instance newtypeResources :: Newtype Resources _
derive instance repGenericResources :: Generic Resources _
instance showResources :: Show Resources where show = genericShow
instance decodeResources :: Decode Resources where decode = genericDecode options
instance encodeResources :: Encode Resources where encode = genericEncode options



newtype RunTaskRequest = RunTaskRequest 
  { "cluster" :: Maybe (String)
  , "taskDefinition" :: (String)
  , "overrides" :: Maybe (TaskOverride)
  , "count" :: Maybe (BoxedInteger)
  , "startedBy" :: Maybe (String)
  , "group" :: Maybe (String)
  , "placementConstraints" :: Maybe (PlacementConstraints)
  , "placementStrategy" :: Maybe (PlacementStrategies)
  , "launchType" :: Maybe (LaunchType)
  , "platformVersion" :: Maybe (String)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  }
derive instance newtypeRunTaskRequest :: Newtype RunTaskRequest _
derive instance repGenericRunTaskRequest :: Generic RunTaskRequest _
instance showRunTaskRequest :: Show RunTaskRequest where show = genericShow
instance decodeRunTaskRequest :: Decode RunTaskRequest where decode = genericDecode options
instance encodeRunTaskRequest :: Encode RunTaskRequest where encode = genericEncode options

-- | Constructs RunTaskRequest from required parameters
newRunTaskRequest :: String -> RunTaskRequest
newRunTaskRequest _taskDefinition = RunTaskRequest { "taskDefinition": _taskDefinition, "cluster": Nothing, "count": Nothing, "group": Nothing, "launchType": Nothing, "networkConfiguration": Nothing, "overrides": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "startedBy": Nothing }

-- | Constructs RunTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunTaskRequest' :: String -> ( { "cluster" :: Maybe (String) , "taskDefinition" :: (String) , "overrides" :: Maybe (TaskOverride) , "count" :: Maybe (BoxedInteger) , "startedBy" :: Maybe (String) , "group" :: Maybe (String) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } -> {"cluster" :: Maybe (String) , "taskDefinition" :: (String) , "overrides" :: Maybe (TaskOverride) , "count" :: Maybe (BoxedInteger) , "startedBy" :: Maybe (String) , "group" :: Maybe (String) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } ) -> RunTaskRequest
newRunTaskRequest' _taskDefinition customize = (RunTaskRequest <<< customize) { "taskDefinition": _taskDefinition, "cluster": Nothing, "count": Nothing, "group": Nothing, "launchType": Nothing, "networkConfiguration": Nothing, "overrides": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "startedBy": Nothing }



newtype RunTaskResponse = RunTaskResponse 
  { "tasks" :: Maybe (Tasks)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeRunTaskResponse :: Newtype RunTaskResponse _
derive instance repGenericRunTaskResponse :: Generic RunTaskResponse _
instance showRunTaskResponse :: Show RunTaskResponse where show = genericShow
instance decodeRunTaskResponse :: Decode RunTaskResponse where decode = genericDecode options
instance encodeRunTaskResponse :: Encode RunTaskResponse where encode = genericEncode options

-- | Constructs RunTaskResponse from required parameters
newRunTaskResponse :: RunTaskResponse
newRunTaskResponse  = RunTaskResponse { "failures": Nothing, "tasks": Nothing }

-- | Constructs RunTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunTaskResponse' :: ( { "tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } -> {"tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } ) -> RunTaskResponse
newRunTaskResponse'  customize = (RunTaskResponse <<< customize) { "failures": Nothing, "tasks": Nothing }



-- | <p>These errors are usually caused by a server issue.</p>
newtype ServerException = ServerException 
  { "message" :: Maybe (String)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where show = genericShow
instance decodeServerException :: Decode ServerException where decode = genericDecode options
instance encodeServerException :: Encode ServerException where encode = genericEncode options

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": Nothing }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": Nothing }



-- | <p>Details on a service within a cluster</p>
newtype Service = Service 
  { "serviceArn" :: Maybe (String)
  , "serviceName" :: Maybe (String)
  , "clusterArn" :: Maybe (String)
  , "loadBalancers" :: Maybe (LoadBalancers)
  , "status" :: Maybe (String)
  , "desiredCount" :: Maybe (Int)
  , "runningCount" :: Maybe (Int)
  , "pendingCount" :: Maybe (Int)
  , "launchType" :: Maybe (LaunchType)
  , "platformVersion" :: Maybe (String)
  , "taskDefinition" :: Maybe (String)
  , "deploymentConfiguration" :: Maybe (DeploymentConfiguration)
  , "deployments" :: Maybe (Deployments)
  , "roleArn" :: Maybe (String)
  , "events" :: Maybe (ServiceEvents)
  , "createdAt" :: Maybe (Types.Timestamp)
  , "placementConstraints" :: Maybe (PlacementConstraints)
  , "placementStrategy" :: Maybe (PlacementStrategies)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "clusterArn": Nothing, "createdAt": Nothing, "deploymentConfiguration": Nothing, "deployments": Nothing, "desiredCount": Nothing, "events": Nothing, "healthCheckGracePeriodSeconds": Nothing, "launchType": Nothing, "loadBalancers": Nothing, "networkConfiguration": Nothing, "pendingCount": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "roleArn": Nothing, "runningCount": Nothing, "serviceArn": Nothing, "serviceName": Nothing, "status": Nothing, "taskDefinition": Nothing }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "serviceArn" :: Maybe (String) , "serviceName" :: Maybe (String) , "clusterArn" :: Maybe (String) , "loadBalancers" :: Maybe (LoadBalancers) , "status" :: Maybe (String) , "desiredCount" :: Maybe (Int) , "runningCount" :: Maybe (Int) , "pendingCount" :: Maybe (Int) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "taskDefinition" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "deployments" :: Maybe (Deployments) , "roleArn" :: Maybe (String) , "events" :: Maybe (ServiceEvents) , "createdAt" :: Maybe (Types.Timestamp) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } -> {"serviceArn" :: Maybe (String) , "serviceName" :: Maybe (String) , "clusterArn" :: Maybe (String) , "loadBalancers" :: Maybe (LoadBalancers) , "status" :: Maybe (String) , "desiredCount" :: Maybe (Int) , "runningCount" :: Maybe (Int) , "pendingCount" :: Maybe (Int) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "taskDefinition" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "deployments" :: Maybe (Deployments) , "roleArn" :: Maybe (String) , "events" :: Maybe (ServiceEvents) , "createdAt" :: Maybe (Types.Timestamp) , "placementConstraints" :: Maybe (PlacementConstraints) , "placementStrategy" :: Maybe (PlacementStrategies) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } ) -> Service
newService'  customize = (Service <<< customize) { "clusterArn": Nothing, "createdAt": Nothing, "deploymentConfiguration": Nothing, "deployments": Nothing, "desiredCount": Nothing, "events": Nothing, "healthCheckGracePeriodSeconds": Nothing, "launchType": Nothing, "loadBalancers": Nothing, "networkConfiguration": Nothing, "pendingCount": Nothing, "placementConstraints": Nothing, "placementStrategy": Nothing, "platformVersion": Nothing, "roleArn": Nothing, "runningCount": Nothing, "serviceArn": Nothing, "serviceName": Nothing, "status": Nothing, "taskDefinition": Nothing }



-- | <p>Details on an event associated with a service.</p>
newtype ServiceEvent = ServiceEvent 
  { "id" :: Maybe (String)
  , "createdAt" :: Maybe (Types.Timestamp)
  , "message" :: Maybe (String)
  }
derive instance newtypeServiceEvent :: Newtype ServiceEvent _
derive instance repGenericServiceEvent :: Generic ServiceEvent _
instance showServiceEvent :: Show ServiceEvent where show = genericShow
instance decodeServiceEvent :: Decode ServiceEvent where decode = genericDecode options
instance encodeServiceEvent :: Encode ServiceEvent where encode = genericEncode options

-- | Constructs ServiceEvent from required parameters
newServiceEvent :: ServiceEvent
newServiceEvent  = ServiceEvent { "createdAt": Nothing, "id": Nothing, "message": Nothing }

-- | Constructs ServiceEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceEvent' :: ( { "id" :: Maybe (String) , "createdAt" :: Maybe (Types.Timestamp) , "message" :: Maybe (String) } -> {"id" :: Maybe (String) , "createdAt" :: Maybe (Types.Timestamp) , "message" :: Maybe (String) } ) -> ServiceEvent
newServiceEvent'  customize = (ServiceEvent <<< customize) { "createdAt": Nothing, "id": Nothing, "message": Nothing }



newtype ServiceEvents = ServiceEvents (Array ServiceEvent)
derive instance newtypeServiceEvents :: Newtype ServiceEvents _
derive instance repGenericServiceEvents :: Generic ServiceEvents _
instance showServiceEvents :: Show ServiceEvents where show = genericShow
instance decodeServiceEvents :: Decode ServiceEvents where decode = genericDecode options
instance encodeServiceEvents :: Encode ServiceEvents where encode = genericEncode options



-- | <p>The specified service is not active. You can't update a service that is inactive. If you have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>
newtype ServiceNotActiveException = ServiceNotActiveException Types.NoArguments
derive instance newtypeServiceNotActiveException :: Newtype ServiceNotActiveException _
derive instance repGenericServiceNotActiveException :: Generic ServiceNotActiveException _
instance showServiceNotActiveException :: Show ServiceNotActiveException where show = genericShow
instance decodeServiceNotActiveException :: Decode ServiceNotActiveException where decode = genericDecode options
instance encodeServiceNotActiveException :: Encode ServiceNotActiveException where encode = genericEncode options



-- | <p>The specified service could not be found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster-specific and region-specific.</p>
newtype ServiceNotFoundException = ServiceNotFoundException Types.NoArguments
derive instance newtypeServiceNotFoundException :: Newtype ServiceNotFoundException _
derive instance repGenericServiceNotFoundException :: Generic ServiceNotFoundException _
instance showServiceNotFoundException :: Show ServiceNotFoundException where show = genericShow
instance decodeServiceNotFoundException :: Decode ServiceNotFoundException where decode = genericDecode options
instance encodeServiceNotFoundException :: Encode ServiceNotFoundException where encode = genericEncode options



newtype Services = Services (Array Service)
derive instance newtypeServices :: Newtype Services _
derive instance repGenericServices :: Generic Services _
instance showServices :: Show Services where show = genericShow
instance decodeServices :: Decode Services where decode = genericDecode options
instance encodeServices :: Encode Services where encode = genericEncode options



newtype SortOrder = SortOrder String
derive instance newtypeSortOrder :: Newtype SortOrder _
derive instance repGenericSortOrder :: Generic SortOrder _
instance showSortOrder :: Show SortOrder where show = genericShow
instance decodeSortOrder :: Decode SortOrder where decode = genericDecode options
instance encodeSortOrder :: Encode SortOrder where encode = genericEncode options



newtype StartTaskRequest = StartTaskRequest 
  { "cluster" :: Maybe (String)
  , "taskDefinition" :: (String)
  , "overrides" :: Maybe (TaskOverride)
  , "containerInstances" :: (StringList)
  , "startedBy" :: Maybe (String)
  , "group" :: Maybe (String)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  }
derive instance newtypeStartTaskRequest :: Newtype StartTaskRequest _
derive instance repGenericStartTaskRequest :: Generic StartTaskRequest _
instance showStartTaskRequest :: Show StartTaskRequest where show = genericShow
instance decodeStartTaskRequest :: Decode StartTaskRequest where decode = genericDecode options
instance encodeStartTaskRequest :: Encode StartTaskRequest where encode = genericEncode options

-- | Constructs StartTaskRequest from required parameters
newStartTaskRequest :: StringList -> String -> StartTaskRequest
newStartTaskRequest _containerInstances _taskDefinition = StartTaskRequest { "containerInstances": _containerInstances, "taskDefinition": _taskDefinition, "cluster": Nothing, "group": Nothing, "networkConfiguration": Nothing, "overrides": Nothing, "startedBy": Nothing }

-- | Constructs StartTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTaskRequest' :: StringList -> String -> ( { "cluster" :: Maybe (String) , "taskDefinition" :: (String) , "overrides" :: Maybe (TaskOverride) , "containerInstances" :: (StringList) , "startedBy" :: Maybe (String) , "group" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } -> {"cluster" :: Maybe (String) , "taskDefinition" :: (String) , "overrides" :: Maybe (TaskOverride) , "containerInstances" :: (StringList) , "startedBy" :: Maybe (String) , "group" :: Maybe (String) , "networkConfiguration" :: Maybe (NetworkConfiguration) } ) -> StartTaskRequest
newStartTaskRequest' _containerInstances _taskDefinition customize = (StartTaskRequest <<< customize) { "containerInstances": _containerInstances, "taskDefinition": _taskDefinition, "cluster": Nothing, "group": Nothing, "networkConfiguration": Nothing, "overrides": Nothing, "startedBy": Nothing }



newtype StartTaskResponse = StartTaskResponse 
  { "tasks" :: Maybe (Tasks)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeStartTaskResponse :: Newtype StartTaskResponse _
derive instance repGenericStartTaskResponse :: Generic StartTaskResponse _
instance showStartTaskResponse :: Show StartTaskResponse where show = genericShow
instance decodeStartTaskResponse :: Decode StartTaskResponse where decode = genericDecode options
instance encodeStartTaskResponse :: Encode StartTaskResponse where encode = genericEncode options

-- | Constructs StartTaskResponse from required parameters
newStartTaskResponse :: StartTaskResponse
newStartTaskResponse  = StartTaskResponse { "failures": Nothing, "tasks": Nothing }

-- | Constructs StartTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTaskResponse' :: ( { "tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } -> {"tasks" :: Maybe (Tasks) , "failures" :: Maybe (Failures) } ) -> StartTaskResponse
newStartTaskResponse'  customize = (StartTaskResponse <<< customize) { "failures": Nothing, "tasks": Nothing }



newtype Statistics = Statistics (Array KeyValuePair)
derive instance newtypeStatistics :: Newtype Statistics _
derive instance repGenericStatistics :: Generic Statistics _
instance showStatistics :: Show Statistics where show = genericShow
instance decodeStatistics :: Decode Statistics where decode = genericDecode options
instance encodeStatistics :: Encode Statistics where encode = genericEncode options



newtype StopTaskRequest = StopTaskRequest 
  { "cluster" :: Maybe (String)
  , "task" :: (String)
  , "reason" :: Maybe (String)
  }
derive instance newtypeStopTaskRequest :: Newtype StopTaskRequest _
derive instance repGenericStopTaskRequest :: Generic StopTaskRequest _
instance showStopTaskRequest :: Show StopTaskRequest where show = genericShow
instance decodeStopTaskRequest :: Decode StopTaskRequest where decode = genericDecode options
instance encodeStopTaskRequest :: Encode StopTaskRequest where encode = genericEncode options

-- | Constructs StopTaskRequest from required parameters
newStopTaskRequest :: String -> StopTaskRequest
newStopTaskRequest _task = StopTaskRequest { "task": _task, "cluster": Nothing, "reason": Nothing }

-- | Constructs StopTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopTaskRequest' :: String -> ( { "cluster" :: Maybe (String) , "task" :: (String) , "reason" :: Maybe (String) } -> {"cluster" :: Maybe (String) , "task" :: (String) , "reason" :: Maybe (String) } ) -> StopTaskRequest
newStopTaskRequest' _task customize = (StopTaskRequest <<< customize) { "task": _task, "cluster": Nothing, "reason": Nothing }



newtype StopTaskResponse = StopTaskResponse 
  { "task" :: Maybe (Task)
  }
derive instance newtypeStopTaskResponse :: Newtype StopTaskResponse _
derive instance repGenericStopTaskResponse :: Generic StopTaskResponse _
instance showStopTaskResponse :: Show StopTaskResponse where show = genericShow
instance decodeStopTaskResponse :: Decode StopTaskResponse where decode = genericDecode options
instance encodeStopTaskResponse :: Encode StopTaskResponse where encode = genericEncode options

-- | Constructs StopTaskResponse from required parameters
newStopTaskResponse :: StopTaskResponse
newStopTaskResponse  = StopTaskResponse { "task": Nothing }

-- | Constructs StopTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopTaskResponse' :: ( { "task" :: Maybe (Task) } -> {"task" :: Maybe (Task) } ) -> StopTaskResponse
newStopTaskResponse'  customize = (StopTaskResponse <<< customize) { "task": Nothing }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype SubmitContainerStateChangeRequest = SubmitContainerStateChangeRequest 
  { "cluster" :: Maybe (String)
  , "task" :: Maybe (String)
  , "containerName" :: Maybe (String)
  , "status" :: Maybe (String)
  , "exitCode" :: Maybe (BoxedInteger)
  , "reason" :: Maybe (String)
  , "networkBindings" :: Maybe (NetworkBindings)
  }
derive instance newtypeSubmitContainerStateChangeRequest :: Newtype SubmitContainerStateChangeRequest _
derive instance repGenericSubmitContainerStateChangeRequest :: Generic SubmitContainerStateChangeRequest _
instance showSubmitContainerStateChangeRequest :: Show SubmitContainerStateChangeRequest where show = genericShow
instance decodeSubmitContainerStateChangeRequest :: Decode SubmitContainerStateChangeRequest where decode = genericDecode options
instance encodeSubmitContainerStateChangeRequest :: Encode SubmitContainerStateChangeRequest where encode = genericEncode options

-- | Constructs SubmitContainerStateChangeRequest from required parameters
newSubmitContainerStateChangeRequest :: SubmitContainerStateChangeRequest
newSubmitContainerStateChangeRequest  = SubmitContainerStateChangeRequest { "cluster": Nothing, "containerName": Nothing, "exitCode": Nothing, "networkBindings": Nothing, "reason": Nothing, "status": Nothing, "task": Nothing }

-- | Constructs SubmitContainerStateChangeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitContainerStateChangeRequest' :: ( { "cluster" :: Maybe (String) , "task" :: Maybe (String) , "containerName" :: Maybe (String) , "status" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "reason" :: Maybe (String) , "networkBindings" :: Maybe (NetworkBindings) } -> {"cluster" :: Maybe (String) , "task" :: Maybe (String) , "containerName" :: Maybe (String) , "status" :: Maybe (String) , "exitCode" :: Maybe (BoxedInteger) , "reason" :: Maybe (String) , "networkBindings" :: Maybe (NetworkBindings) } ) -> SubmitContainerStateChangeRequest
newSubmitContainerStateChangeRequest'  customize = (SubmitContainerStateChangeRequest <<< customize) { "cluster": Nothing, "containerName": Nothing, "exitCode": Nothing, "networkBindings": Nothing, "reason": Nothing, "status": Nothing, "task": Nothing }



newtype SubmitContainerStateChangeResponse = SubmitContainerStateChangeResponse 
  { "acknowledgment" :: Maybe (String)
  }
derive instance newtypeSubmitContainerStateChangeResponse :: Newtype SubmitContainerStateChangeResponse _
derive instance repGenericSubmitContainerStateChangeResponse :: Generic SubmitContainerStateChangeResponse _
instance showSubmitContainerStateChangeResponse :: Show SubmitContainerStateChangeResponse where show = genericShow
instance decodeSubmitContainerStateChangeResponse :: Decode SubmitContainerStateChangeResponse where decode = genericDecode options
instance encodeSubmitContainerStateChangeResponse :: Encode SubmitContainerStateChangeResponse where encode = genericEncode options

-- | Constructs SubmitContainerStateChangeResponse from required parameters
newSubmitContainerStateChangeResponse :: SubmitContainerStateChangeResponse
newSubmitContainerStateChangeResponse  = SubmitContainerStateChangeResponse { "acknowledgment": Nothing }

-- | Constructs SubmitContainerStateChangeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitContainerStateChangeResponse' :: ( { "acknowledgment" :: Maybe (String) } -> {"acknowledgment" :: Maybe (String) } ) -> SubmitContainerStateChangeResponse
newSubmitContainerStateChangeResponse'  customize = (SubmitContainerStateChangeResponse <<< customize) { "acknowledgment": Nothing }



newtype SubmitTaskStateChangeRequest = SubmitTaskStateChangeRequest 
  { "cluster" :: Maybe (String)
  , "task" :: Maybe (String)
  , "status" :: Maybe (String)
  , "reason" :: Maybe (String)
  , "containers" :: Maybe (ContainerStateChanges)
  , "attachments" :: Maybe (AttachmentStateChanges)
  , "pullStartedAt" :: Maybe (Types.Timestamp)
  , "pullStoppedAt" :: Maybe (Types.Timestamp)
  , "executionStoppedAt" :: Maybe (Types.Timestamp)
  }
derive instance newtypeSubmitTaskStateChangeRequest :: Newtype SubmitTaskStateChangeRequest _
derive instance repGenericSubmitTaskStateChangeRequest :: Generic SubmitTaskStateChangeRequest _
instance showSubmitTaskStateChangeRequest :: Show SubmitTaskStateChangeRequest where show = genericShow
instance decodeSubmitTaskStateChangeRequest :: Decode SubmitTaskStateChangeRequest where decode = genericDecode options
instance encodeSubmitTaskStateChangeRequest :: Encode SubmitTaskStateChangeRequest where encode = genericEncode options

-- | Constructs SubmitTaskStateChangeRequest from required parameters
newSubmitTaskStateChangeRequest :: SubmitTaskStateChangeRequest
newSubmitTaskStateChangeRequest  = SubmitTaskStateChangeRequest { "attachments": Nothing, "cluster": Nothing, "containers": Nothing, "executionStoppedAt": Nothing, "pullStartedAt": Nothing, "pullStoppedAt": Nothing, "reason": Nothing, "status": Nothing, "task": Nothing }

-- | Constructs SubmitTaskStateChangeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitTaskStateChangeRequest' :: ( { "cluster" :: Maybe (String) , "task" :: Maybe (String) , "status" :: Maybe (String) , "reason" :: Maybe (String) , "containers" :: Maybe (ContainerStateChanges) , "attachments" :: Maybe (AttachmentStateChanges) , "pullStartedAt" :: Maybe (Types.Timestamp) , "pullStoppedAt" :: Maybe (Types.Timestamp) , "executionStoppedAt" :: Maybe (Types.Timestamp) } -> {"cluster" :: Maybe (String) , "task" :: Maybe (String) , "status" :: Maybe (String) , "reason" :: Maybe (String) , "containers" :: Maybe (ContainerStateChanges) , "attachments" :: Maybe (AttachmentStateChanges) , "pullStartedAt" :: Maybe (Types.Timestamp) , "pullStoppedAt" :: Maybe (Types.Timestamp) , "executionStoppedAt" :: Maybe (Types.Timestamp) } ) -> SubmitTaskStateChangeRequest
newSubmitTaskStateChangeRequest'  customize = (SubmitTaskStateChangeRequest <<< customize) { "attachments": Nothing, "cluster": Nothing, "containers": Nothing, "executionStoppedAt": Nothing, "pullStartedAt": Nothing, "pullStoppedAt": Nothing, "reason": Nothing, "status": Nothing, "task": Nothing }



newtype SubmitTaskStateChangeResponse = SubmitTaskStateChangeResponse 
  { "acknowledgment" :: Maybe (String)
  }
derive instance newtypeSubmitTaskStateChangeResponse :: Newtype SubmitTaskStateChangeResponse _
derive instance repGenericSubmitTaskStateChangeResponse :: Generic SubmitTaskStateChangeResponse _
instance showSubmitTaskStateChangeResponse :: Show SubmitTaskStateChangeResponse where show = genericShow
instance decodeSubmitTaskStateChangeResponse :: Decode SubmitTaskStateChangeResponse where decode = genericDecode options
instance encodeSubmitTaskStateChangeResponse :: Encode SubmitTaskStateChangeResponse where encode = genericEncode options

-- | Constructs SubmitTaskStateChangeResponse from required parameters
newSubmitTaskStateChangeResponse :: SubmitTaskStateChangeResponse
newSubmitTaskStateChangeResponse  = SubmitTaskStateChangeResponse { "acknowledgment": Nothing }

-- | Constructs SubmitTaskStateChangeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitTaskStateChangeResponse' :: ( { "acknowledgment" :: Maybe (String) } -> {"acknowledgment" :: Maybe (String) } ) -> SubmitTaskStateChangeResponse
newSubmitTaskStateChangeResponse'  customize = (SubmitTaskStateChangeResponse <<< customize) { "acknowledgment": Nothing }



-- | <p>The specified target could not be found. You can view your available container instances with <a>ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and region-specific.</p>
newtype TargetNotFoundException = TargetNotFoundException Types.NoArguments
derive instance newtypeTargetNotFoundException :: Newtype TargetNotFoundException _
derive instance repGenericTargetNotFoundException :: Generic TargetNotFoundException _
instance showTargetNotFoundException :: Show TargetNotFoundException where show = genericShow
instance decodeTargetNotFoundException :: Decode TargetNotFoundException where decode = genericDecode options
instance encodeTargetNotFoundException :: Encode TargetNotFoundException where encode = genericEncode options



newtype TargetType = TargetType String
derive instance newtypeTargetType :: Newtype TargetType _
derive instance repGenericTargetType :: Generic TargetType _
instance showTargetType :: Show TargetType where show = genericShow
instance decodeTargetType :: Decode TargetType where decode = genericDecode options
instance encodeTargetType :: Encode TargetType where encode = genericEncode options



-- | <p>Details on a task in a cluster.</p>
newtype Task = Task 
  { "taskArn" :: Maybe (String)
  , "clusterArn" :: Maybe (String)
  , "taskDefinitionArn" :: Maybe (String)
  , "containerInstanceArn" :: Maybe (String)
  , "overrides" :: Maybe (TaskOverride)
  , "lastStatus" :: Maybe (String)
  , "desiredStatus" :: Maybe (String)
  , "cpu" :: Maybe (String)
  , "memory" :: Maybe (String)
  , "containers" :: Maybe (Containers)
  , "startedBy" :: Maybe (String)
  , "version" :: Maybe (Number)
  , "stoppedReason" :: Maybe (String)
  , "connectivity" :: Maybe (Connectivity)
  , "connectivityAt" :: Maybe (Types.Timestamp)
  , "pullStartedAt" :: Maybe (Types.Timestamp)
  , "pullStoppedAt" :: Maybe (Types.Timestamp)
  , "executionStoppedAt" :: Maybe (Types.Timestamp)
  , "createdAt" :: Maybe (Types.Timestamp)
  , "startedAt" :: Maybe (Types.Timestamp)
  , "stoppingAt" :: Maybe (Types.Timestamp)
  , "stoppedAt" :: Maybe (Types.Timestamp)
  , "group" :: Maybe (String)
  , "launchType" :: Maybe (LaunchType)
  , "platformVersion" :: Maybe (String)
  , "attachments" :: Maybe (Attachments)
  , "healthStatus" :: Maybe (HealthStatus)
  }
derive instance newtypeTask :: Newtype Task _
derive instance repGenericTask :: Generic Task _
instance showTask :: Show Task where show = genericShow
instance decodeTask :: Decode Task where decode = genericDecode options
instance encodeTask :: Encode Task where encode = genericEncode options

-- | Constructs Task from required parameters
newTask :: Task
newTask  = Task { "attachments": Nothing, "clusterArn": Nothing, "connectivity": Nothing, "connectivityAt": Nothing, "containerInstanceArn": Nothing, "containers": Nothing, "cpu": Nothing, "createdAt": Nothing, "desiredStatus": Nothing, "executionStoppedAt": Nothing, "group": Nothing, "healthStatus": Nothing, "lastStatus": Nothing, "launchType": Nothing, "memory": Nothing, "overrides": Nothing, "platformVersion": Nothing, "pullStartedAt": Nothing, "pullStoppedAt": Nothing, "startedAt": Nothing, "startedBy": Nothing, "stoppedAt": Nothing, "stoppedReason": Nothing, "stoppingAt": Nothing, "taskArn": Nothing, "taskDefinitionArn": Nothing, "version": Nothing }

-- | Constructs Task's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTask' :: ( { "taskArn" :: Maybe (String) , "clusterArn" :: Maybe (String) , "taskDefinitionArn" :: Maybe (String) , "containerInstanceArn" :: Maybe (String) , "overrides" :: Maybe (TaskOverride) , "lastStatus" :: Maybe (String) , "desiredStatus" :: Maybe (String) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) , "containers" :: Maybe (Containers) , "startedBy" :: Maybe (String) , "version" :: Maybe (Number) , "stoppedReason" :: Maybe (String) , "connectivity" :: Maybe (Connectivity) , "connectivityAt" :: Maybe (Types.Timestamp) , "pullStartedAt" :: Maybe (Types.Timestamp) , "pullStoppedAt" :: Maybe (Types.Timestamp) , "executionStoppedAt" :: Maybe (Types.Timestamp) , "createdAt" :: Maybe (Types.Timestamp) , "startedAt" :: Maybe (Types.Timestamp) , "stoppingAt" :: Maybe (Types.Timestamp) , "stoppedAt" :: Maybe (Types.Timestamp) , "group" :: Maybe (String) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "attachments" :: Maybe (Attachments) , "healthStatus" :: Maybe (HealthStatus) } -> {"taskArn" :: Maybe (String) , "clusterArn" :: Maybe (String) , "taskDefinitionArn" :: Maybe (String) , "containerInstanceArn" :: Maybe (String) , "overrides" :: Maybe (TaskOverride) , "lastStatus" :: Maybe (String) , "desiredStatus" :: Maybe (String) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) , "containers" :: Maybe (Containers) , "startedBy" :: Maybe (String) , "version" :: Maybe (Number) , "stoppedReason" :: Maybe (String) , "connectivity" :: Maybe (Connectivity) , "connectivityAt" :: Maybe (Types.Timestamp) , "pullStartedAt" :: Maybe (Types.Timestamp) , "pullStoppedAt" :: Maybe (Types.Timestamp) , "executionStoppedAt" :: Maybe (Types.Timestamp) , "createdAt" :: Maybe (Types.Timestamp) , "startedAt" :: Maybe (Types.Timestamp) , "stoppingAt" :: Maybe (Types.Timestamp) , "stoppedAt" :: Maybe (Types.Timestamp) , "group" :: Maybe (String) , "launchType" :: Maybe (LaunchType) , "platformVersion" :: Maybe (String) , "attachments" :: Maybe (Attachments) , "healthStatus" :: Maybe (HealthStatus) } ) -> Task
newTask'  customize = (Task <<< customize) { "attachments": Nothing, "clusterArn": Nothing, "connectivity": Nothing, "connectivityAt": Nothing, "containerInstanceArn": Nothing, "containers": Nothing, "cpu": Nothing, "createdAt": Nothing, "desiredStatus": Nothing, "executionStoppedAt": Nothing, "group": Nothing, "healthStatus": Nothing, "lastStatus": Nothing, "launchType": Nothing, "memory": Nothing, "overrides": Nothing, "platformVersion": Nothing, "pullStartedAt": Nothing, "pullStoppedAt": Nothing, "startedAt": Nothing, "startedBy": Nothing, "stoppedAt": Nothing, "stoppedReason": Nothing, "stoppingAt": Nothing, "taskArn": Nothing, "taskDefinitionArn": Nothing, "version": Nothing }



-- | <p>Details of a task definition.</p>
newtype TaskDefinition = TaskDefinition 
  { "taskDefinitionArn" :: Maybe (String)
  , "containerDefinitions" :: Maybe (ContainerDefinitions)
  , "family" :: Maybe (String)
  , "taskRoleArn" :: Maybe (String)
  , "executionRoleArn" :: Maybe (String)
  , "networkMode" :: Maybe (NetworkMode)
  , "revision" :: Maybe (Int)
  , "volumes" :: Maybe (VolumeList)
  , "status" :: Maybe (TaskDefinitionStatus)
  , "requiresAttributes" :: Maybe (RequiresAttributes)
  , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints)
  , "compatibilities" :: Maybe (CompatibilityList)
  , "requiresCompatibilities" :: Maybe (CompatibilityList)
  , "cpu" :: Maybe (String)
  , "memory" :: Maybe (String)
  }
derive instance newtypeTaskDefinition :: Newtype TaskDefinition _
derive instance repGenericTaskDefinition :: Generic TaskDefinition _
instance showTaskDefinition :: Show TaskDefinition where show = genericShow
instance decodeTaskDefinition :: Decode TaskDefinition where decode = genericDecode options
instance encodeTaskDefinition :: Encode TaskDefinition where encode = genericEncode options

-- | Constructs TaskDefinition from required parameters
newTaskDefinition :: TaskDefinition
newTaskDefinition  = TaskDefinition { "compatibilities": Nothing, "containerDefinitions": Nothing, "cpu": Nothing, "executionRoleArn": Nothing, "family": Nothing, "memory": Nothing, "networkMode": Nothing, "placementConstraints": Nothing, "requiresAttributes": Nothing, "requiresCompatibilities": Nothing, "revision": Nothing, "status": Nothing, "taskDefinitionArn": Nothing, "taskRoleArn": Nothing, "volumes": Nothing }

-- | Constructs TaskDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDefinition' :: ( { "taskDefinitionArn" :: Maybe (String) , "containerDefinitions" :: Maybe (ContainerDefinitions) , "family" :: Maybe (String) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) , "networkMode" :: Maybe (NetworkMode) , "revision" :: Maybe (Int) , "volumes" :: Maybe (VolumeList) , "status" :: Maybe (TaskDefinitionStatus) , "requiresAttributes" :: Maybe (RequiresAttributes) , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints) , "compatibilities" :: Maybe (CompatibilityList) , "requiresCompatibilities" :: Maybe (CompatibilityList) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) } -> {"taskDefinitionArn" :: Maybe (String) , "containerDefinitions" :: Maybe (ContainerDefinitions) , "family" :: Maybe (String) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) , "networkMode" :: Maybe (NetworkMode) , "revision" :: Maybe (Int) , "volumes" :: Maybe (VolumeList) , "status" :: Maybe (TaskDefinitionStatus) , "requiresAttributes" :: Maybe (RequiresAttributes) , "placementConstraints" :: Maybe (TaskDefinitionPlacementConstraints) , "compatibilities" :: Maybe (CompatibilityList) , "requiresCompatibilities" :: Maybe (CompatibilityList) , "cpu" :: Maybe (String) , "memory" :: Maybe (String) } ) -> TaskDefinition
newTaskDefinition'  customize = (TaskDefinition <<< customize) { "compatibilities": Nothing, "containerDefinitions": Nothing, "cpu": Nothing, "executionRoleArn": Nothing, "family": Nothing, "memory": Nothing, "networkMode": Nothing, "placementConstraints": Nothing, "requiresAttributes": Nothing, "requiresCompatibilities": Nothing, "revision": Nothing, "status": Nothing, "taskDefinitionArn": Nothing, "taskRoleArn": Nothing, "volumes": Nothing }



newtype TaskDefinitionFamilyStatus = TaskDefinitionFamilyStatus String
derive instance newtypeTaskDefinitionFamilyStatus :: Newtype TaskDefinitionFamilyStatus _
derive instance repGenericTaskDefinitionFamilyStatus :: Generic TaskDefinitionFamilyStatus _
instance showTaskDefinitionFamilyStatus :: Show TaskDefinitionFamilyStatus where show = genericShow
instance decodeTaskDefinitionFamilyStatus :: Decode TaskDefinitionFamilyStatus where decode = genericDecode options
instance encodeTaskDefinitionFamilyStatus :: Encode TaskDefinitionFamilyStatus where encode = genericEncode options



-- | <p>An object representing a constraint on task placement in the task definition.</p> <p>If you are using the Fargate launch type, task placement constraints are not supported.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
newtype TaskDefinitionPlacementConstraint = TaskDefinitionPlacementConstraint 
  { "type" :: Maybe (TaskDefinitionPlacementConstraintType)
  , "expression" :: Maybe (String)
  }
derive instance newtypeTaskDefinitionPlacementConstraint :: Newtype TaskDefinitionPlacementConstraint _
derive instance repGenericTaskDefinitionPlacementConstraint :: Generic TaskDefinitionPlacementConstraint _
instance showTaskDefinitionPlacementConstraint :: Show TaskDefinitionPlacementConstraint where show = genericShow
instance decodeTaskDefinitionPlacementConstraint :: Decode TaskDefinitionPlacementConstraint where decode = genericDecode options
instance encodeTaskDefinitionPlacementConstraint :: Encode TaskDefinitionPlacementConstraint where encode = genericEncode options

-- | Constructs TaskDefinitionPlacementConstraint from required parameters
newTaskDefinitionPlacementConstraint :: TaskDefinitionPlacementConstraint
newTaskDefinitionPlacementConstraint  = TaskDefinitionPlacementConstraint { "expression": Nothing, "type": Nothing }

-- | Constructs TaskDefinitionPlacementConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDefinitionPlacementConstraint' :: ( { "type" :: Maybe (TaskDefinitionPlacementConstraintType) , "expression" :: Maybe (String) } -> {"type" :: Maybe (TaskDefinitionPlacementConstraintType) , "expression" :: Maybe (String) } ) -> TaskDefinitionPlacementConstraint
newTaskDefinitionPlacementConstraint'  customize = (TaskDefinitionPlacementConstraint <<< customize) { "expression": Nothing, "type": Nothing }



newtype TaskDefinitionPlacementConstraintType = TaskDefinitionPlacementConstraintType String
derive instance newtypeTaskDefinitionPlacementConstraintType :: Newtype TaskDefinitionPlacementConstraintType _
derive instance repGenericTaskDefinitionPlacementConstraintType :: Generic TaskDefinitionPlacementConstraintType _
instance showTaskDefinitionPlacementConstraintType :: Show TaskDefinitionPlacementConstraintType where show = genericShow
instance decodeTaskDefinitionPlacementConstraintType :: Decode TaskDefinitionPlacementConstraintType where decode = genericDecode options
instance encodeTaskDefinitionPlacementConstraintType :: Encode TaskDefinitionPlacementConstraintType where encode = genericEncode options



newtype TaskDefinitionPlacementConstraints = TaskDefinitionPlacementConstraints (Array TaskDefinitionPlacementConstraint)
derive instance newtypeTaskDefinitionPlacementConstraints :: Newtype TaskDefinitionPlacementConstraints _
derive instance repGenericTaskDefinitionPlacementConstraints :: Generic TaskDefinitionPlacementConstraints _
instance showTaskDefinitionPlacementConstraints :: Show TaskDefinitionPlacementConstraints where show = genericShow
instance decodeTaskDefinitionPlacementConstraints :: Decode TaskDefinitionPlacementConstraints where decode = genericDecode options
instance encodeTaskDefinitionPlacementConstraints :: Encode TaskDefinitionPlacementConstraints where encode = genericEncode options



newtype TaskDefinitionStatus = TaskDefinitionStatus String
derive instance newtypeTaskDefinitionStatus :: Newtype TaskDefinitionStatus _
derive instance repGenericTaskDefinitionStatus :: Generic TaskDefinitionStatus _
instance showTaskDefinitionStatus :: Show TaskDefinitionStatus where show = genericShow
instance decodeTaskDefinitionStatus :: Decode TaskDefinitionStatus where decode = genericDecode options
instance encodeTaskDefinitionStatus :: Encode TaskDefinitionStatus where encode = genericEncode options



-- | <p>The overrides associated with a task.</p>
newtype TaskOverride = TaskOverride 
  { "containerOverrides" :: Maybe (ContainerOverrides)
  , "taskRoleArn" :: Maybe (String)
  , "executionRoleArn" :: Maybe (String)
  }
derive instance newtypeTaskOverride :: Newtype TaskOverride _
derive instance repGenericTaskOverride :: Generic TaskOverride _
instance showTaskOverride :: Show TaskOverride where show = genericShow
instance decodeTaskOverride :: Decode TaskOverride where decode = genericDecode options
instance encodeTaskOverride :: Encode TaskOverride where encode = genericEncode options

-- | Constructs TaskOverride from required parameters
newTaskOverride :: TaskOverride
newTaskOverride  = TaskOverride { "containerOverrides": Nothing, "executionRoleArn": Nothing, "taskRoleArn": Nothing }

-- | Constructs TaskOverride's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskOverride' :: ( { "containerOverrides" :: Maybe (ContainerOverrides) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) } -> {"containerOverrides" :: Maybe (ContainerOverrides) , "taskRoleArn" :: Maybe (String) , "executionRoleArn" :: Maybe (String) } ) -> TaskOverride
newTaskOverride'  customize = (TaskOverride <<< customize) { "containerOverrides": Nothing, "executionRoleArn": Nothing, "taskRoleArn": Nothing }



newtype Tasks = Tasks (Array Task)
derive instance newtypeTasks :: Newtype Tasks _
derive instance repGenericTasks :: Generic Tasks _
instance showTasks :: Show Tasks where show = genericShow
instance decodeTasks :: Decode Tasks where decode = genericDecode options
instance encodeTasks :: Encode Tasks where encode = genericEncode options



newtype TransportProtocol = TransportProtocol String
derive instance newtypeTransportProtocol :: Newtype TransportProtocol _
derive instance repGenericTransportProtocol :: Generic TransportProtocol _
instance showTransportProtocol :: Show TransportProtocol where show = genericShow
instance decodeTransportProtocol :: Decode TransportProtocol where decode = genericDecode options
instance encodeTransportProtocol :: Encode TransportProtocol where encode = genericEncode options



-- | <p>The <code>ulimit</code> settings to pass to the container.</p>
newtype Ulimit = Ulimit 
  { "name" :: (UlimitName)
  , "softLimit" :: (Int)
  , "hardLimit" :: (Int)
  }
derive instance newtypeUlimit :: Newtype Ulimit _
derive instance repGenericUlimit :: Generic Ulimit _
instance showUlimit :: Show Ulimit where show = genericShow
instance decodeUlimit :: Decode Ulimit where decode = genericDecode options
instance encodeUlimit :: Encode Ulimit where encode = genericEncode options

-- | Constructs Ulimit from required parameters
newUlimit :: Int -> UlimitName -> Int -> Ulimit
newUlimit _hardLimit _name _softLimit = Ulimit { "hardLimit": _hardLimit, "name": _name, "softLimit": _softLimit }

-- | Constructs Ulimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUlimit' :: Int -> UlimitName -> Int -> ( { "name" :: (UlimitName) , "softLimit" :: (Int) , "hardLimit" :: (Int) } -> {"name" :: (UlimitName) , "softLimit" :: (Int) , "hardLimit" :: (Int) } ) -> Ulimit
newUlimit' _hardLimit _name _softLimit customize = (Ulimit <<< customize) { "hardLimit": _hardLimit, "name": _name, "softLimit": _softLimit }



newtype UlimitList = UlimitList (Array Ulimit)
derive instance newtypeUlimitList :: Newtype UlimitList _
derive instance repGenericUlimitList :: Generic UlimitList _
instance showUlimitList :: Show UlimitList where show = genericShow
instance decodeUlimitList :: Decode UlimitList where decode = genericDecode options
instance encodeUlimitList :: Encode UlimitList where encode = genericEncode options



newtype UlimitName = UlimitName String
derive instance newtypeUlimitName :: Newtype UlimitName _
derive instance repGenericUlimitName :: Generic UlimitName _
instance showUlimitName :: Show UlimitName where show = genericShow
instance decodeUlimitName :: Decode UlimitName where decode = genericDecode options
instance encodeUlimitName :: Encode UlimitName where encode = genericEncode options



-- | <p>The specified task is not supported in this region.</p>
newtype UnsupportedFeatureException = UnsupportedFeatureException Types.NoArguments
derive instance newtypeUnsupportedFeatureException :: Newtype UnsupportedFeatureException _
derive instance repGenericUnsupportedFeatureException :: Generic UnsupportedFeatureException _
instance showUnsupportedFeatureException :: Show UnsupportedFeatureException where show = genericShow
instance decodeUnsupportedFeatureException :: Decode UnsupportedFeatureException where decode = genericDecode options
instance encodeUnsupportedFeatureException :: Encode UnsupportedFeatureException where encode = genericEncode options



newtype UpdateContainerAgentRequest = UpdateContainerAgentRequest 
  { "cluster" :: Maybe (String)
  , "containerInstance" :: (String)
  }
derive instance newtypeUpdateContainerAgentRequest :: Newtype UpdateContainerAgentRequest _
derive instance repGenericUpdateContainerAgentRequest :: Generic UpdateContainerAgentRequest _
instance showUpdateContainerAgentRequest :: Show UpdateContainerAgentRequest where show = genericShow
instance decodeUpdateContainerAgentRequest :: Decode UpdateContainerAgentRequest where decode = genericDecode options
instance encodeUpdateContainerAgentRequest :: Encode UpdateContainerAgentRequest where encode = genericEncode options

-- | Constructs UpdateContainerAgentRequest from required parameters
newUpdateContainerAgentRequest :: String -> UpdateContainerAgentRequest
newUpdateContainerAgentRequest _containerInstance = UpdateContainerAgentRequest { "containerInstance": _containerInstance, "cluster": Nothing }

-- | Constructs UpdateContainerAgentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerAgentRequest' :: String -> ( { "cluster" :: Maybe (String) , "containerInstance" :: (String) } -> {"cluster" :: Maybe (String) , "containerInstance" :: (String) } ) -> UpdateContainerAgentRequest
newUpdateContainerAgentRequest' _containerInstance customize = (UpdateContainerAgentRequest <<< customize) { "containerInstance": _containerInstance, "cluster": Nothing }



newtype UpdateContainerAgentResponse = UpdateContainerAgentResponse 
  { "containerInstance" :: Maybe (ContainerInstance)
  }
derive instance newtypeUpdateContainerAgentResponse :: Newtype UpdateContainerAgentResponse _
derive instance repGenericUpdateContainerAgentResponse :: Generic UpdateContainerAgentResponse _
instance showUpdateContainerAgentResponse :: Show UpdateContainerAgentResponse where show = genericShow
instance decodeUpdateContainerAgentResponse :: Decode UpdateContainerAgentResponse where decode = genericDecode options
instance encodeUpdateContainerAgentResponse :: Encode UpdateContainerAgentResponse where encode = genericEncode options

-- | Constructs UpdateContainerAgentResponse from required parameters
newUpdateContainerAgentResponse :: UpdateContainerAgentResponse
newUpdateContainerAgentResponse  = UpdateContainerAgentResponse { "containerInstance": Nothing }

-- | Constructs UpdateContainerAgentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerAgentResponse' :: ( { "containerInstance" :: Maybe (ContainerInstance) } -> {"containerInstance" :: Maybe (ContainerInstance) } ) -> UpdateContainerAgentResponse
newUpdateContainerAgentResponse'  customize = (UpdateContainerAgentResponse <<< customize) { "containerInstance": Nothing }



newtype UpdateContainerInstancesStateRequest = UpdateContainerInstancesStateRequest 
  { "cluster" :: Maybe (String)
  , "containerInstances" :: (StringList)
  , "status" :: (ContainerInstanceStatus)
  }
derive instance newtypeUpdateContainerInstancesStateRequest :: Newtype UpdateContainerInstancesStateRequest _
derive instance repGenericUpdateContainerInstancesStateRequest :: Generic UpdateContainerInstancesStateRequest _
instance showUpdateContainerInstancesStateRequest :: Show UpdateContainerInstancesStateRequest where show = genericShow
instance decodeUpdateContainerInstancesStateRequest :: Decode UpdateContainerInstancesStateRequest where decode = genericDecode options
instance encodeUpdateContainerInstancesStateRequest :: Encode UpdateContainerInstancesStateRequest where encode = genericEncode options

-- | Constructs UpdateContainerInstancesStateRequest from required parameters
newUpdateContainerInstancesStateRequest :: StringList -> ContainerInstanceStatus -> UpdateContainerInstancesStateRequest
newUpdateContainerInstancesStateRequest _containerInstances _status = UpdateContainerInstancesStateRequest { "containerInstances": _containerInstances, "status": _status, "cluster": Nothing }

-- | Constructs UpdateContainerInstancesStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerInstancesStateRequest' :: StringList -> ContainerInstanceStatus -> ( { "cluster" :: Maybe (String) , "containerInstances" :: (StringList) , "status" :: (ContainerInstanceStatus) } -> {"cluster" :: Maybe (String) , "containerInstances" :: (StringList) , "status" :: (ContainerInstanceStatus) } ) -> UpdateContainerInstancesStateRequest
newUpdateContainerInstancesStateRequest' _containerInstances _status customize = (UpdateContainerInstancesStateRequest <<< customize) { "containerInstances": _containerInstances, "status": _status, "cluster": Nothing }



newtype UpdateContainerInstancesStateResponse = UpdateContainerInstancesStateResponse 
  { "containerInstances" :: Maybe (ContainerInstances)
  , "failures" :: Maybe (Failures)
  }
derive instance newtypeUpdateContainerInstancesStateResponse :: Newtype UpdateContainerInstancesStateResponse _
derive instance repGenericUpdateContainerInstancesStateResponse :: Generic UpdateContainerInstancesStateResponse _
instance showUpdateContainerInstancesStateResponse :: Show UpdateContainerInstancesStateResponse where show = genericShow
instance decodeUpdateContainerInstancesStateResponse :: Decode UpdateContainerInstancesStateResponse where decode = genericDecode options
instance encodeUpdateContainerInstancesStateResponse :: Encode UpdateContainerInstancesStateResponse where encode = genericEncode options

-- | Constructs UpdateContainerInstancesStateResponse from required parameters
newUpdateContainerInstancesStateResponse :: UpdateContainerInstancesStateResponse
newUpdateContainerInstancesStateResponse  = UpdateContainerInstancesStateResponse { "containerInstances": Nothing, "failures": Nothing }

-- | Constructs UpdateContainerInstancesStateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerInstancesStateResponse' :: ( { "containerInstances" :: Maybe (ContainerInstances) , "failures" :: Maybe (Failures) } -> {"containerInstances" :: Maybe (ContainerInstances) , "failures" :: Maybe (Failures) } ) -> UpdateContainerInstancesStateResponse
newUpdateContainerInstancesStateResponse'  customize = (UpdateContainerInstancesStateResponse <<< customize) { "containerInstances": Nothing, "failures": Nothing }



-- | <p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>
newtype UpdateInProgressException = UpdateInProgressException Types.NoArguments
derive instance newtypeUpdateInProgressException :: Newtype UpdateInProgressException _
derive instance repGenericUpdateInProgressException :: Generic UpdateInProgressException _
instance showUpdateInProgressException :: Show UpdateInProgressException where show = genericShow
instance decodeUpdateInProgressException :: Decode UpdateInProgressException where decode = genericDecode options
instance encodeUpdateInProgressException :: Encode UpdateInProgressException where encode = genericEncode options



newtype UpdateServiceRequest = UpdateServiceRequest 
  { "cluster" :: Maybe (String)
  , "service" :: (String)
  , "desiredCount" :: Maybe (BoxedInteger)
  , "taskDefinition" :: Maybe (String)
  , "deploymentConfiguration" :: Maybe (DeploymentConfiguration)
  , "networkConfiguration" :: Maybe (NetworkConfiguration)
  , "platformVersion" :: Maybe (String)
  , "forceNewDeployment" :: Maybe (Boolean)
  , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger)
  }
derive instance newtypeUpdateServiceRequest :: Newtype UpdateServiceRequest _
derive instance repGenericUpdateServiceRequest :: Generic UpdateServiceRequest _
instance showUpdateServiceRequest :: Show UpdateServiceRequest where show = genericShow
instance decodeUpdateServiceRequest :: Decode UpdateServiceRequest where decode = genericDecode options
instance encodeUpdateServiceRequest :: Encode UpdateServiceRequest where encode = genericEncode options

-- | Constructs UpdateServiceRequest from required parameters
newUpdateServiceRequest :: String -> UpdateServiceRequest
newUpdateServiceRequest _service = UpdateServiceRequest { "service": _service, "cluster": Nothing, "deploymentConfiguration": Nothing, "desiredCount": Nothing, "forceNewDeployment": Nothing, "healthCheckGracePeriodSeconds": Nothing, "networkConfiguration": Nothing, "platformVersion": Nothing, "taskDefinition": Nothing }

-- | Constructs UpdateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceRequest' :: String -> ( { "cluster" :: Maybe (String) , "service" :: (String) , "desiredCount" :: Maybe (BoxedInteger) , "taskDefinition" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "platformVersion" :: Maybe (String) , "forceNewDeployment" :: Maybe (Boolean) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } -> {"cluster" :: Maybe (String) , "service" :: (String) , "desiredCount" :: Maybe (BoxedInteger) , "taskDefinition" :: Maybe (String) , "deploymentConfiguration" :: Maybe (DeploymentConfiguration) , "networkConfiguration" :: Maybe (NetworkConfiguration) , "platformVersion" :: Maybe (String) , "forceNewDeployment" :: Maybe (Boolean) , "healthCheckGracePeriodSeconds" :: Maybe (BoxedInteger) } ) -> UpdateServiceRequest
newUpdateServiceRequest' _service customize = (UpdateServiceRequest <<< customize) { "service": _service, "cluster": Nothing, "deploymentConfiguration": Nothing, "desiredCount": Nothing, "forceNewDeployment": Nothing, "healthCheckGracePeriodSeconds": Nothing, "networkConfiguration": Nothing, "platformVersion": Nothing, "taskDefinition": Nothing }



newtype UpdateServiceResponse = UpdateServiceResponse 
  { "service" :: Maybe (Service)
  }
derive instance newtypeUpdateServiceResponse :: Newtype UpdateServiceResponse _
derive instance repGenericUpdateServiceResponse :: Generic UpdateServiceResponse _
instance showUpdateServiceResponse :: Show UpdateServiceResponse where show = genericShow
instance decodeUpdateServiceResponse :: Decode UpdateServiceResponse where decode = genericDecode options
instance encodeUpdateServiceResponse :: Encode UpdateServiceResponse where encode = genericEncode options

-- | Constructs UpdateServiceResponse from required parameters
newUpdateServiceResponse :: UpdateServiceResponse
newUpdateServiceResponse  = UpdateServiceResponse { "service": Nothing }

-- | Constructs UpdateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceResponse' :: ( { "service" :: Maybe (Service) } -> {"service" :: Maybe (Service) } ) -> UpdateServiceResponse
newUpdateServiceResponse'  customize = (UpdateServiceResponse <<< customize) { "service": Nothing }



-- | <p>The Docker and Amazon ECS container agent version information about a container instance.</p>
newtype VersionInfo = VersionInfo 
  { "agentVersion" :: Maybe (String)
  , "agentHash" :: Maybe (String)
  , "dockerVersion" :: Maybe (String)
  }
derive instance newtypeVersionInfo :: Newtype VersionInfo _
derive instance repGenericVersionInfo :: Generic VersionInfo _
instance showVersionInfo :: Show VersionInfo where show = genericShow
instance decodeVersionInfo :: Decode VersionInfo where decode = genericDecode options
instance encodeVersionInfo :: Encode VersionInfo where encode = genericEncode options

-- | Constructs VersionInfo from required parameters
newVersionInfo :: VersionInfo
newVersionInfo  = VersionInfo { "agentHash": Nothing, "agentVersion": Nothing, "dockerVersion": Nothing }

-- | Constructs VersionInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionInfo' :: ( { "agentVersion" :: Maybe (String) , "agentHash" :: Maybe (String) , "dockerVersion" :: Maybe (String) } -> {"agentVersion" :: Maybe (String) , "agentHash" :: Maybe (String) , "dockerVersion" :: Maybe (String) } ) -> VersionInfo
newVersionInfo'  customize = (VersionInfo <<< customize) { "agentHash": Nothing, "agentVersion": Nothing, "dockerVersion": Nothing }



-- | <p>A data volume used in a task definition.</p>
newtype Volume = Volume 
  { "name" :: Maybe (String)
  , "host" :: Maybe (HostVolumeProperties)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where show = genericShow
instance decodeVolume :: Decode Volume where decode = genericDecode options
instance encodeVolume :: Encode Volume where encode = genericEncode options

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "host": Nothing, "name": Nothing }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "name" :: Maybe (String) , "host" :: Maybe (HostVolumeProperties) } -> {"name" :: Maybe (String) , "host" :: Maybe (HostVolumeProperties) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "host": Nothing, "name": Nothing }



-- | <p>Details on a data volume from another container in the same task definition.</p>
newtype VolumeFrom = VolumeFrom 
  { "sourceContainer" :: Maybe (String)
  , "readOnly" :: Maybe (BoxedBoolean)
  }
derive instance newtypeVolumeFrom :: Newtype VolumeFrom _
derive instance repGenericVolumeFrom :: Generic VolumeFrom _
instance showVolumeFrom :: Show VolumeFrom where show = genericShow
instance decodeVolumeFrom :: Decode VolumeFrom where decode = genericDecode options
instance encodeVolumeFrom :: Encode VolumeFrom where encode = genericEncode options

-- | Constructs VolumeFrom from required parameters
newVolumeFrom :: VolumeFrom
newVolumeFrom  = VolumeFrom { "readOnly": Nothing, "sourceContainer": Nothing }

-- | Constructs VolumeFrom's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeFrom' :: ( { "sourceContainer" :: Maybe (String) , "readOnly" :: Maybe (BoxedBoolean) } -> {"sourceContainer" :: Maybe (String) , "readOnly" :: Maybe (BoxedBoolean) } ) -> VolumeFrom
newVolumeFrom'  customize = (VolumeFrom <<< customize) { "readOnly": Nothing, "sourceContainer": Nothing }



newtype VolumeFromList = VolumeFromList (Array VolumeFrom)
derive instance newtypeVolumeFromList :: Newtype VolumeFromList _
derive instance repGenericVolumeFromList :: Generic VolumeFromList _
instance showVolumeFromList :: Show VolumeFromList where show = genericShow
instance decodeVolumeFromList :: Decode VolumeFromList where decode = genericDecode options
instance encodeVolumeFromList :: Encode VolumeFromList where encode = genericEncode options



newtype VolumeList = VolumeList (Array Volume)
derive instance newtypeVolumeList :: Newtype VolumeList _
derive instance repGenericVolumeList :: Generic VolumeList _
instance showVolumeList :: Show VolumeList where show = genericShow
instance decodeVolumeList :: Decode VolumeList where decode = genericDecode options
instance encodeVolumeList :: Encode VolumeList where encode = genericEncode options

