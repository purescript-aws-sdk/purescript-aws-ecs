
module AWS.ECS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  { "id" :: NullOrUndefined (String)
  , "type" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "details" :: NullOrUndefined (AttachmentDetails)
  }
derive instance newtypeAttachment :: Newtype Attachment _
derive instance repGenericAttachment :: Generic Attachment _
instance showAttachment :: Show Attachment where show = genericShow
instance decodeAttachment :: Decode Attachment where decode = genericDecode options
instance encodeAttachment :: Encode Attachment where encode = genericEncode options

-- | Constructs Attachment from required parameters
newAttachment :: Attachment
newAttachment  = Attachment { "details": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs Attachment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachment' :: ( { "id" :: NullOrUndefined (String) , "type" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "details" :: NullOrUndefined (AttachmentDetails) } -> {"id" :: NullOrUndefined (String) , "type" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "details" :: NullOrUndefined (AttachmentDetails) } ) -> Attachment
newAttachment'  customize = (Attachment <<< customize) { "details": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  , "value" :: NullOrUndefined (String)
  , "targetType" :: NullOrUndefined (TargetType)
  , "targetId" :: NullOrUndefined (String)
  }
derive instance newtypeAttribute :: Newtype Attribute _
derive instance repGenericAttribute :: Generic Attribute _
instance showAttribute :: Show Attribute where show = genericShow
instance decodeAttribute :: Decode Attribute where decode = genericDecode options
instance encodeAttribute :: Encode Attribute where encode = genericEncode options

-- | Constructs Attribute from required parameters
newAttribute :: String -> Attribute
newAttribute _name = Attribute { "name": _name, "targetId": (NullOrUndefined Nothing), "targetType": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs Attribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttribute' :: String -> ( { "name" :: (String) , "value" :: NullOrUndefined (String) , "targetType" :: NullOrUndefined (TargetType) , "targetId" :: NullOrUndefined (String) } -> {"name" :: (String) , "value" :: NullOrUndefined (String) , "targetType" :: NullOrUndefined (TargetType) , "targetId" :: NullOrUndefined (String) } ) -> Attribute
newAttribute' _name customize = (Attribute <<< customize) { "name": _name, "targetId": (NullOrUndefined Nothing), "targetType": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



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
  , "securityGroups" :: NullOrUndefined (StringList)
  , "assignPublicIp" :: NullOrUndefined (AssignPublicIp)
  }
derive instance newtypeAwsVpcConfiguration :: Newtype AwsVpcConfiguration _
derive instance repGenericAwsVpcConfiguration :: Generic AwsVpcConfiguration _
instance showAwsVpcConfiguration :: Show AwsVpcConfiguration where show = genericShow
instance decodeAwsVpcConfiguration :: Decode AwsVpcConfiguration where decode = genericDecode options
instance encodeAwsVpcConfiguration :: Encode AwsVpcConfiguration where encode = genericEncode options

-- | Constructs AwsVpcConfiguration from required parameters
newAwsVpcConfiguration :: StringList -> AwsVpcConfiguration
newAwsVpcConfiguration _subnets = AwsVpcConfiguration { "subnets": _subnets, "assignPublicIp": (NullOrUndefined Nothing), "securityGroups": (NullOrUndefined Nothing) }

-- | Constructs AwsVpcConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAwsVpcConfiguration' :: StringList -> ( { "subnets" :: (StringList) , "securityGroups" :: NullOrUndefined (StringList) , "assignPublicIp" :: NullOrUndefined (AssignPublicIp) } -> {"subnets" :: (StringList) , "securityGroups" :: NullOrUndefined (StringList) , "assignPublicIp" :: NullOrUndefined (AssignPublicIp) } ) -> AwsVpcConfiguration
newAwsVpcConfiguration' _subnets customize = (AwsVpcConfiguration <<< customize) { "subnets": _subnets, "assignPublicIp": (NullOrUndefined Nothing), "securityGroups": (NullOrUndefined Nothing) }



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
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeClientException :: Newtype ClientException _
derive instance repGenericClientException :: Generic ClientException _
instance showClientException :: Show ClientException where show = genericShow
instance decodeClientException :: Decode ClientException where decode = genericDecode options
instance encodeClientException :: Encode ClientException where encode = genericEncode options

-- | Constructs ClientException from required parameters
newClientException :: ClientException
newClientException  = ClientException { "message": (NullOrUndefined Nothing) }

-- | Constructs ClientException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> ClientException
newClientException'  customize = (ClientException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>
newtype Cluster = Cluster 
  { "clusterArn" :: NullOrUndefined (String)
  , "clusterName" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "registeredContainerInstancesCount" :: NullOrUndefined (Int)
  , "runningTasksCount" :: NullOrUndefined (Int)
  , "pendingTasksCount" :: NullOrUndefined (Int)
  , "activeServicesCount" :: NullOrUndefined (Int)
  , "statistics" :: NullOrUndefined (Statistics)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where show = genericShow
instance decodeCluster :: Decode Cluster where decode = genericDecode options
instance encodeCluster :: Encode Cluster where encode = genericEncode options

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "activeServicesCount": (NullOrUndefined Nothing), "clusterArn": (NullOrUndefined Nothing), "clusterName": (NullOrUndefined Nothing), "pendingTasksCount": (NullOrUndefined Nothing), "registeredContainerInstancesCount": (NullOrUndefined Nothing), "runningTasksCount": (NullOrUndefined Nothing), "statistics": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "clusterArn" :: NullOrUndefined (String) , "clusterName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "registeredContainerInstancesCount" :: NullOrUndefined (Int) , "runningTasksCount" :: NullOrUndefined (Int) , "pendingTasksCount" :: NullOrUndefined (Int) , "activeServicesCount" :: NullOrUndefined (Int) , "statistics" :: NullOrUndefined (Statistics) } -> {"clusterArn" :: NullOrUndefined (String) , "clusterName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "registeredContainerInstancesCount" :: NullOrUndefined (Int) , "runningTasksCount" :: NullOrUndefined (Int) , "pendingTasksCount" :: NullOrUndefined (Int) , "activeServicesCount" :: NullOrUndefined (Int) , "statistics" :: NullOrUndefined (Statistics) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "activeServicesCount": (NullOrUndefined Nothing), "clusterArn": (NullOrUndefined Nothing), "clusterName": (NullOrUndefined Nothing), "pendingTasksCount": (NullOrUndefined Nothing), "registeredContainerInstancesCount": (NullOrUndefined Nothing), "runningTasksCount": (NullOrUndefined Nothing), "statistics": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



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
  { "containerArn" :: NullOrUndefined (String)
  , "taskArn" :: NullOrUndefined (String)
  , "name" :: NullOrUndefined (String)
  , "lastStatus" :: NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined (BoxedInteger)
  , "reason" :: NullOrUndefined (String)
  , "networkBindings" :: NullOrUndefined (NetworkBindings)
  , "networkInterfaces" :: NullOrUndefined (NetworkInterfaces)
  , "healthStatus" :: NullOrUndefined (HealthStatus)
  }
derive instance newtypeContainer :: Newtype Container _
derive instance repGenericContainer :: Generic Container _
instance showContainer :: Show Container where show = genericShow
instance decodeContainer :: Decode Container where decode = genericDecode options
instance encodeContainer :: Encode Container where encode = genericEncode options

-- | Constructs Container from required parameters
newContainer :: Container
newContainer  = Container { "containerArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "healthStatus": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "networkInterfaces": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }

-- | Constructs Container's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainer' :: ( { "containerArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "name" :: NullOrUndefined (String) , "lastStatus" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "reason" :: NullOrUndefined (String) , "networkBindings" :: NullOrUndefined (NetworkBindings) , "networkInterfaces" :: NullOrUndefined (NetworkInterfaces) , "healthStatus" :: NullOrUndefined (HealthStatus) } -> {"containerArn" :: NullOrUndefined (String) , "taskArn" :: NullOrUndefined (String) , "name" :: NullOrUndefined (String) , "lastStatus" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "reason" :: NullOrUndefined (String) , "networkBindings" :: NullOrUndefined (NetworkBindings) , "networkInterfaces" :: NullOrUndefined (NetworkInterfaces) , "healthStatus" :: NullOrUndefined (HealthStatus) } ) -> Container
newContainer'  customize = (Container <<< customize) { "containerArn": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "healthStatus": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "networkInterfaces": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing) }



-- | <p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>
newtype ContainerDefinition = ContainerDefinition 
  { "name" :: NullOrUndefined (String)
  , "image" :: NullOrUndefined (String)
  , "cpu" :: NullOrUndefined (Int)
  , "memory" :: NullOrUndefined (BoxedInteger)
  , "memoryReservation" :: NullOrUndefined (BoxedInteger)
  , "links" :: NullOrUndefined (StringList)
  , "portMappings" :: NullOrUndefined (PortMappingList)
  , "essential" :: NullOrUndefined (BoxedBoolean)
  , "entryPoint" :: NullOrUndefined (StringList)
  , "command" :: NullOrUndefined (StringList)
  , "environment" :: NullOrUndefined (EnvironmentVariables)
  , "mountPoints" :: NullOrUndefined (MountPointList)
  , "volumesFrom" :: NullOrUndefined (VolumeFromList)
  , "linuxParameters" :: NullOrUndefined (LinuxParameters)
  , "hostname" :: NullOrUndefined (String)
  , "user" :: NullOrUndefined (String)
  , "workingDirectory" :: NullOrUndefined (String)
  , "disableNetworking" :: NullOrUndefined (BoxedBoolean)
  , "privileged" :: NullOrUndefined (BoxedBoolean)
  , "readonlyRootFilesystem" :: NullOrUndefined (BoxedBoolean)
  , "dnsServers" :: NullOrUndefined (StringList)
  , "dnsSearchDomains" :: NullOrUndefined (StringList)
  , "extraHosts" :: NullOrUndefined (HostEntryList)
  , "dockerSecurityOptions" :: NullOrUndefined (StringList)
  , "dockerLabels" :: NullOrUndefined (DockerLabelsMap)
  , "ulimits" :: NullOrUndefined (UlimitList)
  , "logConfiguration" :: NullOrUndefined (LogConfiguration)
  , "healthCheck" :: NullOrUndefined (HealthCheck)
  }
derive instance newtypeContainerDefinition :: Newtype ContainerDefinition _
derive instance repGenericContainerDefinition :: Generic ContainerDefinition _
instance showContainerDefinition :: Show ContainerDefinition where show = genericShow
instance decodeContainerDefinition :: Decode ContainerDefinition where decode = genericDecode options
instance encodeContainerDefinition :: Encode ContainerDefinition where encode = genericEncode options

-- | Constructs ContainerDefinition from required parameters
newContainerDefinition :: ContainerDefinition
newContainerDefinition  = ContainerDefinition { "command": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "disableNetworking": (NullOrUndefined Nothing), "dnsSearchDomains": (NullOrUndefined Nothing), "dnsServers": (NullOrUndefined Nothing), "dockerLabels": (NullOrUndefined Nothing), "dockerSecurityOptions": (NullOrUndefined Nothing), "entryPoint": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "essential": (NullOrUndefined Nothing), "extraHosts": (NullOrUndefined Nothing), "healthCheck": (NullOrUndefined Nothing), "hostname": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "links": (NullOrUndefined Nothing), "linuxParameters": (NullOrUndefined Nothing), "logConfiguration": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "memoryReservation": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "portMappings": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumesFrom": (NullOrUndefined Nothing), "workingDirectory": (NullOrUndefined Nothing) }

-- | Constructs ContainerDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerDefinition' :: ( { "name" :: NullOrUndefined (String) , "image" :: NullOrUndefined (String) , "cpu" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (BoxedInteger) , "memoryReservation" :: NullOrUndefined (BoxedInteger) , "links" :: NullOrUndefined (StringList) , "portMappings" :: NullOrUndefined (PortMappingList) , "essential" :: NullOrUndefined (BoxedBoolean) , "entryPoint" :: NullOrUndefined (StringList) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPointList) , "volumesFrom" :: NullOrUndefined (VolumeFromList) , "linuxParameters" :: NullOrUndefined (LinuxParameters) , "hostname" :: NullOrUndefined (String) , "user" :: NullOrUndefined (String) , "workingDirectory" :: NullOrUndefined (String) , "disableNetworking" :: NullOrUndefined (BoxedBoolean) , "privileged" :: NullOrUndefined (BoxedBoolean) , "readonlyRootFilesystem" :: NullOrUndefined (BoxedBoolean) , "dnsServers" :: NullOrUndefined (StringList) , "dnsSearchDomains" :: NullOrUndefined (StringList) , "extraHosts" :: NullOrUndefined (HostEntryList) , "dockerSecurityOptions" :: NullOrUndefined (StringList) , "dockerLabels" :: NullOrUndefined (DockerLabelsMap) , "ulimits" :: NullOrUndefined (UlimitList) , "logConfiguration" :: NullOrUndefined (LogConfiguration) , "healthCheck" :: NullOrUndefined (HealthCheck) } -> {"name" :: NullOrUndefined (String) , "image" :: NullOrUndefined (String) , "cpu" :: NullOrUndefined (Int) , "memory" :: NullOrUndefined (BoxedInteger) , "memoryReservation" :: NullOrUndefined (BoxedInteger) , "links" :: NullOrUndefined (StringList) , "portMappings" :: NullOrUndefined (PortMappingList) , "essential" :: NullOrUndefined (BoxedBoolean) , "entryPoint" :: NullOrUndefined (StringList) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) , "mountPoints" :: NullOrUndefined (MountPointList) , "volumesFrom" :: NullOrUndefined (VolumeFromList) , "linuxParameters" :: NullOrUndefined (LinuxParameters) , "hostname" :: NullOrUndefined (String) , "user" :: NullOrUndefined (String) , "workingDirectory" :: NullOrUndefined (String) , "disableNetworking" :: NullOrUndefined (BoxedBoolean) , "privileged" :: NullOrUndefined (BoxedBoolean) , "readonlyRootFilesystem" :: NullOrUndefined (BoxedBoolean) , "dnsServers" :: NullOrUndefined (StringList) , "dnsSearchDomains" :: NullOrUndefined (StringList) , "extraHosts" :: NullOrUndefined (HostEntryList) , "dockerSecurityOptions" :: NullOrUndefined (StringList) , "dockerLabels" :: NullOrUndefined (DockerLabelsMap) , "ulimits" :: NullOrUndefined (UlimitList) , "logConfiguration" :: NullOrUndefined (LogConfiguration) , "healthCheck" :: NullOrUndefined (HealthCheck) } ) -> ContainerDefinition
newContainerDefinition'  customize = (ContainerDefinition <<< customize) { "command": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "disableNetworking": (NullOrUndefined Nothing), "dnsSearchDomains": (NullOrUndefined Nothing), "dnsServers": (NullOrUndefined Nothing), "dockerLabels": (NullOrUndefined Nothing), "dockerSecurityOptions": (NullOrUndefined Nothing), "entryPoint": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "essential": (NullOrUndefined Nothing), "extraHosts": (NullOrUndefined Nothing), "healthCheck": (NullOrUndefined Nothing), "hostname": (NullOrUndefined Nothing), "image": (NullOrUndefined Nothing), "links": (NullOrUndefined Nothing), "linuxParameters": (NullOrUndefined Nothing), "logConfiguration": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "memoryReservation": (NullOrUndefined Nothing), "mountPoints": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "portMappings": (NullOrUndefined Nothing), "privileged": (NullOrUndefined Nothing), "readonlyRootFilesystem": (NullOrUndefined Nothing), "ulimits": (NullOrUndefined Nothing), "user": (NullOrUndefined Nothing), "volumesFrom": (NullOrUndefined Nothing), "workingDirectory": (NullOrUndefined Nothing) }



newtype ContainerDefinitions = ContainerDefinitions (Array ContainerDefinition)
derive instance newtypeContainerDefinitions :: Newtype ContainerDefinitions _
derive instance repGenericContainerDefinitions :: Generic ContainerDefinitions _
instance showContainerDefinitions :: Show ContainerDefinitions where show = genericShow
instance decodeContainerDefinitions :: Decode ContainerDefinitions where decode = genericDecode options
instance encodeContainerDefinitions :: Encode ContainerDefinitions where encode = genericEncode options



-- | <p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>
newtype ContainerInstance = ContainerInstance 
  { "containerInstanceArn" :: NullOrUndefined (String)
  , "ec2InstanceId" :: NullOrUndefined (String)
  , "version" :: NullOrUndefined (Number)
  , "versionInfo" :: NullOrUndefined (VersionInfo)
  , "remainingResources" :: NullOrUndefined (Resources)
  , "registeredResources" :: NullOrUndefined (Resources)
  , "status" :: NullOrUndefined (String)
  , "agentConnected" :: NullOrUndefined (Boolean)
  , "runningTasksCount" :: NullOrUndefined (Int)
  , "pendingTasksCount" :: NullOrUndefined (Int)
  , "agentUpdateStatus" :: NullOrUndefined (AgentUpdateStatus)
  , "attributes" :: NullOrUndefined (Attributes)
  , "registeredAt" :: NullOrUndefined (Types.Timestamp)
  , "attachments" :: NullOrUndefined (Attachments)
  }
derive instance newtypeContainerInstance :: Newtype ContainerInstance _
derive instance repGenericContainerInstance :: Generic ContainerInstance _
instance showContainerInstance :: Show ContainerInstance where show = genericShow
instance decodeContainerInstance :: Decode ContainerInstance where decode = genericDecode options
instance encodeContainerInstance :: Encode ContainerInstance where encode = genericEncode options

-- | Constructs ContainerInstance from required parameters
newContainerInstance :: ContainerInstance
newContainerInstance  = ContainerInstance { "agentConnected": (NullOrUndefined Nothing), "agentUpdateStatus": (NullOrUndefined Nothing), "attachments": (NullOrUndefined Nothing), "attributes": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "ec2InstanceId": (NullOrUndefined Nothing), "pendingTasksCount": (NullOrUndefined Nothing), "registeredAt": (NullOrUndefined Nothing), "registeredResources": (NullOrUndefined Nothing), "remainingResources": (NullOrUndefined Nothing), "runningTasksCount": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing), "versionInfo": (NullOrUndefined Nothing) }

-- | Constructs ContainerInstance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerInstance' :: ( { "containerInstanceArn" :: NullOrUndefined (String) , "ec2InstanceId" :: NullOrUndefined (String) , "version" :: NullOrUndefined (Number) , "versionInfo" :: NullOrUndefined (VersionInfo) , "remainingResources" :: NullOrUndefined (Resources) , "registeredResources" :: NullOrUndefined (Resources) , "status" :: NullOrUndefined (String) , "agentConnected" :: NullOrUndefined (Boolean) , "runningTasksCount" :: NullOrUndefined (Int) , "pendingTasksCount" :: NullOrUndefined (Int) , "agentUpdateStatus" :: NullOrUndefined (AgentUpdateStatus) , "attributes" :: NullOrUndefined (Attributes) , "registeredAt" :: NullOrUndefined (Types.Timestamp) , "attachments" :: NullOrUndefined (Attachments) } -> {"containerInstanceArn" :: NullOrUndefined (String) , "ec2InstanceId" :: NullOrUndefined (String) , "version" :: NullOrUndefined (Number) , "versionInfo" :: NullOrUndefined (VersionInfo) , "remainingResources" :: NullOrUndefined (Resources) , "registeredResources" :: NullOrUndefined (Resources) , "status" :: NullOrUndefined (String) , "agentConnected" :: NullOrUndefined (Boolean) , "runningTasksCount" :: NullOrUndefined (Int) , "pendingTasksCount" :: NullOrUndefined (Int) , "agentUpdateStatus" :: NullOrUndefined (AgentUpdateStatus) , "attributes" :: NullOrUndefined (Attributes) , "registeredAt" :: NullOrUndefined (Types.Timestamp) , "attachments" :: NullOrUndefined (Attachments) } ) -> ContainerInstance
newContainerInstance'  customize = (ContainerInstance <<< customize) { "agentConnected": (NullOrUndefined Nothing), "agentUpdateStatus": (NullOrUndefined Nothing), "attachments": (NullOrUndefined Nothing), "attributes": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "ec2InstanceId": (NullOrUndefined Nothing), "pendingTasksCount": (NullOrUndefined Nothing), "registeredAt": (NullOrUndefined Nothing), "registeredResources": (NullOrUndefined Nothing), "remainingResources": (NullOrUndefined Nothing), "runningTasksCount": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing), "versionInfo": (NullOrUndefined Nothing) }



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
  { "name" :: NullOrUndefined (String)
  , "command" :: NullOrUndefined (StringList)
  , "environment" :: NullOrUndefined (EnvironmentVariables)
  , "cpu" :: NullOrUndefined (BoxedInteger)
  , "memory" :: NullOrUndefined (BoxedInteger)
  , "memoryReservation" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeContainerOverride :: Newtype ContainerOverride _
derive instance repGenericContainerOverride :: Generic ContainerOverride _
instance showContainerOverride :: Show ContainerOverride where show = genericShow
instance decodeContainerOverride :: Decode ContainerOverride where decode = genericDecode options
instance encodeContainerOverride :: Encode ContainerOverride where encode = genericEncode options

-- | Constructs ContainerOverride from required parameters
newContainerOverride :: ContainerOverride
newContainerOverride  = ContainerOverride { "command": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "memoryReservation": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs ContainerOverride's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerOverride' :: ( { "name" :: NullOrUndefined (String) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) , "cpu" :: NullOrUndefined (BoxedInteger) , "memory" :: NullOrUndefined (BoxedInteger) , "memoryReservation" :: NullOrUndefined (BoxedInteger) } -> {"name" :: NullOrUndefined (String) , "command" :: NullOrUndefined (StringList) , "environment" :: NullOrUndefined (EnvironmentVariables) , "cpu" :: NullOrUndefined (BoxedInteger) , "memory" :: NullOrUndefined (BoxedInteger) , "memoryReservation" :: NullOrUndefined (BoxedInteger) } ) -> ContainerOverride
newContainerOverride'  customize = (ContainerOverride <<< customize) { "command": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "environment": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "memoryReservation": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



newtype ContainerOverrides = ContainerOverrides (Array ContainerOverride)
derive instance newtypeContainerOverrides :: Newtype ContainerOverrides _
derive instance repGenericContainerOverrides :: Generic ContainerOverrides _
instance showContainerOverrides :: Show ContainerOverrides where show = genericShow
instance decodeContainerOverrides :: Decode ContainerOverrides where decode = genericDecode options
instance encodeContainerOverrides :: Encode ContainerOverrides where encode = genericEncode options



-- | <p>An object representing a change in state for a container.</p>
newtype ContainerStateChange = ContainerStateChange 
  { "containerName" :: NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined (BoxedInteger)
  , "networkBindings" :: NullOrUndefined (NetworkBindings)
  , "reason" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  }
derive instance newtypeContainerStateChange :: Newtype ContainerStateChange _
derive instance repGenericContainerStateChange :: Generic ContainerStateChange _
instance showContainerStateChange :: Show ContainerStateChange where show = genericShow
instance decodeContainerStateChange :: Decode ContainerStateChange where decode = genericDecode options
instance encodeContainerStateChange :: Encode ContainerStateChange where encode = genericEncode options

-- | Constructs ContainerStateChange from required parameters
newContainerStateChange :: ContainerStateChange
newContainerStateChange  = ContainerStateChange { "containerName": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs ContainerStateChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerStateChange' :: ( { "containerName" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "networkBindings" :: NullOrUndefined (NetworkBindings) , "reason" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) } -> {"containerName" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "networkBindings" :: NullOrUndefined (NetworkBindings) , "reason" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) } ) -> ContainerStateChange
newContainerStateChange'  customize = (ContainerStateChange <<< customize) { "containerName": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



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
  { "clusterName" :: NullOrUndefined (String)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where decode = genericDecode options
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where encode = genericEncode options

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: CreateClusterRequest
newCreateClusterRequest  = CreateClusterRequest { "clusterName": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: ( { "clusterName" :: NullOrUndefined (String) } -> {"clusterName" :: NullOrUndefined (String) } ) -> CreateClusterRequest
newCreateClusterRequest'  customize = (CreateClusterRequest <<< customize) { "clusterName": (NullOrUndefined Nothing) }



newtype CreateClusterResponse = CreateClusterResponse 
  { "cluster" :: NullOrUndefined (Cluster)
  }
derive instance newtypeCreateClusterResponse :: Newtype CreateClusterResponse _
derive instance repGenericCreateClusterResponse :: Generic CreateClusterResponse _
instance showCreateClusterResponse :: Show CreateClusterResponse where show = genericShow
instance decodeCreateClusterResponse :: Decode CreateClusterResponse where decode = genericDecode options
instance encodeCreateClusterResponse :: Encode CreateClusterResponse where encode = genericEncode options

-- | Constructs CreateClusterResponse from required parameters
newCreateClusterResponse :: CreateClusterResponse
newCreateClusterResponse  = CreateClusterResponse { "cluster": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResponse' :: ( { "cluster" :: NullOrUndefined (Cluster) } -> {"cluster" :: NullOrUndefined (Cluster) } ) -> CreateClusterResponse
newCreateClusterResponse'  customize = (CreateClusterResponse <<< customize) { "cluster": (NullOrUndefined Nothing) }



newtype CreateServiceRequest = CreateServiceRequest 
  { "cluster" :: NullOrUndefined (String)
  , "serviceName" :: (String)
  , "taskDefinition" :: (String)
  , "loadBalancers" :: NullOrUndefined (LoadBalancers)
  , "desiredCount" :: (BoxedInteger)
  , "clientToken" :: NullOrUndefined (String)
  , "launchType" :: NullOrUndefined (LaunchType)
  , "platformVersion" :: NullOrUndefined (String)
  , "role" :: NullOrUndefined (String)
  , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration)
  , "placementConstraints" :: NullOrUndefined (PlacementConstraints)
  , "placementStrategy" :: NullOrUndefined (PlacementStrategies)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeCreateServiceRequest :: Newtype CreateServiceRequest _
derive instance repGenericCreateServiceRequest :: Generic CreateServiceRequest _
instance showCreateServiceRequest :: Show CreateServiceRequest where show = genericShow
instance decodeCreateServiceRequest :: Decode CreateServiceRequest where decode = genericDecode options
instance encodeCreateServiceRequest :: Encode CreateServiceRequest where encode = genericEncode options

-- | Constructs CreateServiceRequest from required parameters
newCreateServiceRequest :: BoxedInteger -> String -> String -> CreateServiceRequest
newCreateServiceRequest _desiredCount _serviceName _taskDefinition = CreateServiceRequest { "desiredCount": _desiredCount, "serviceName": _serviceName, "taskDefinition": _taskDefinition, "clientToken": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "loadBalancers": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "role": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceRequest' :: BoxedInteger -> String -> String -> ( { "cluster" :: NullOrUndefined (String) , "serviceName" :: (String) , "taskDefinition" :: (String) , "loadBalancers" :: NullOrUndefined (LoadBalancers) , "desiredCount" :: (BoxedInteger) , "clientToken" :: NullOrUndefined (String) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "role" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } -> {"cluster" :: NullOrUndefined (String) , "serviceName" :: (String) , "taskDefinition" :: (String) , "loadBalancers" :: NullOrUndefined (LoadBalancers) , "desiredCount" :: (BoxedInteger) , "clientToken" :: NullOrUndefined (String) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "role" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } ) -> CreateServiceRequest
newCreateServiceRequest' _desiredCount _serviceName _taskDefinition customize = (CreateServiceRequest <<< customize) { "desiredCount": _desiredCount, "serviceName": _serviceName, "taskDefinition": _taskDefinition, "clientToken": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "loadBalancers": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "role": (NullOrUndefined Nothing) }



newtype CreateServiceResponse = CreateServiceResponse 
  { "service" :: NullOrUndefined (Service)
  }
derive instance newtypeCreateServiceResponse :: Newtype CreateServiceResponse _
derive instance repGenericCreateServiceResponse :: Generic CreateServiceResponse _
instance showCreateServiceResponse :: Show CreateServiceResponse where show = genericShow
instance decodeCreateServiceResponse :: Decode CreateServiceResponse where decode = genericDecode options
instance encodeCreateServiceResponse :: Encode CreateServiceResponse where encode = genericEncode options

-- | Constructs CreateServiceResponse from required parameters
newCreateServiceResponse :: CreateServiceResponse
newCreateServiceResponse  = CreateServiceResponse { "service": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceResponse' :: ( { "service" :: NullOrUndefined (Service) } -> {"service" :: NullOrUndefined (Service) } ) -> CreateServiceResponse
newCreateServiceResponse'  customize = (CreateServiceResponse <<< customize) { "service": (NullOrUndefined Nothing) }



newtype DeleteAttributesRequest = DeleteAttributesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "attributes" :: (Attributes)
  }
derive instance newtypeDeleteAttributesRequest :: Newtype DeleteAttributesRequest _
derive instance repGenericDeleteAttributesRequest :: Generic DeleteAttributesRequest _
instance showDeleteAttributesRequest :: Show DeleteAttributesRequest where show = genericShow
instance decodeDeleteAttributesRequest :: Decode DeleteAttributesRequest where decode = genericDecode options
instance encodeDeleteAttributesRequest :: Encode DeleteAttributesRequest where encode = genericEncode options

-- | Constructs DeleteAttributesRequest from required parameters
newDeleteAttributesRequest :: Attributes -> DeleteAttributesRequest
newDeleteAttributesRequest _attributes = DeleteAttributesRequest { "attributes": _attributes, "cluster": (NullOrUndefined Nothing) }

-- | Constructs DeleteAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAttributesRequest' :: Attributes -> ( { "cluster" :: NullOrUndefined (String) , "attributes" :: (Attributes) } -> {"cluster" :: NullOrUndefined (String) , "attributes" :: (Attributes) } ) -> DeleteAttributesRequest
newDeleteAttributesRequest' _attributes customize = (DeleteAttributesRequest <<< customize) { "attributes": _attributes, "cluster": (NullOrUndefined Nothing) }



newtype DeleteAttributesResponse = DeleteAttributesResponse 
  { "attributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypeDeleteAttributesResponse :: Newtype DeleteAttributesResponse _
derive instance repGenericDeleteAttributesResponse :: Generic DeleteAttributesResponse _
instance showDeleteAttributesResponse :: Show DeleteAttributesResponse where show = genericShow
instance decodeDeleteAttributesResponse :: Decode DeleteAttributesResponse where decode = genericDecode options
instance encodeDeleteAttributesResponse :: Encode DeleteAttributesResponse where encode = genericEncode options

-- | Constructs DeleteAttributesResponse from required parameters
newDeleteAttributesResponse :: DeleteAttributesResponse
newDeleteAttributesResponse  = DeleteAttributesResponse { "attributes": (NullOrUndefined Nothing) }

-- | Constructs DeleteAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAttributesResponse' :: ( { "attributes" :: NullOrUndefined (Attributes) } -> {"attributes" :: NullOrUndefined (Attributes) } ) -> DeleteAttributesResponse
newDeleteAttributesResponse'  customize = (DeleteAttributesResponse <<< customize) { "attributes": (NullOrUndefined Nothing) }



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
  { "cluster" :: NullOrUndefined (Cluster)
  }
derive instance newtypeDeleteClusterResponse :: Newtype DeleteClusterResponse _
derive instance repGenericDeleteClusterResponse :: Generic DeleteClusterResponse _
instance showDeleteClusterResponse :: Show DeleteClusterResponse where show = genericShow
instance decodeDeleteClusterResponse :: Decode DeleteClusterResponse where decode = genericDecode options
instance encodeDeleteClusterResponse :: Encode DeleteClusterResponse where encode = genericEncode options

-- | Constructs DeleteClusterResponse from required parameters
newDeleteClusterResponse :: DeleteClusterResponse
newDeleteClusterResponse  = DeleteClusterResponse { "cluster": (NullOrUndefined Nothing) }

-- | Constructs DeleteClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterResponse' :: ( { "cluster" :: NullOrUndefined (Cluster) } -> {"cluster" :: NullOrUndefined (Cluster) } ) -> DeleteClusterResponse
newDeleteClusterResponse'  customize = (DeleteClusterResponse <<< customize) { "cluster": (NullOrUndefined Nothing) }



newtype DeleteServiceRequest = DeleteServiceRequest 
  { "cluster" :: NullOrUndefined (String)
  , "service" :: (String)
  }
derive instance newtypeDeleteServiceRequest :: Newtype DeleteServiceRequest _
derive instance repGenericDeleteServiceRequest :: Generic DeleteServiceRequest _
instance showDeleteServiceRequest :: Show DeleteServiceRequest where show = genericShow
instance decodeDeleteServiceRequest :: Decode DeleteServiceRequest where decode = genericDecode options
instance encodeDeleteServiceRequest :: Encode DeleteServiceRequest where encode = genericEncode options

-- | Constructs DeleteServiceRequest from required parameters
newDeleteServiceRequest :: String -> DeleteServiceRequest
newDeleteServiceRequest _service = DeleteServiceRequest { "service": _service, "cluster": (NullOrUndefined Nothing) }

-- | Constructs DeleteServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "service" :: (String) } -> {"cluster" :: NullOrUndefined (String) , "service" :: (String) } ) -> DeleteServiceRequest
newDeleteServiceRequest' _service customize = (DeleteServiceRequest <<< customize) { "service": _service, "cluster": (NullOrUndefined Nothing) }



newtype DeleteServiceResponse = DeleteServiceResponse 
  { "service" :: NullOrUndefined (Service)
  }
derive instance newtypeDeleteServiceResponse :: Newtype DeleteServiceResponse _
derive instance repGenericDeleteServiceResponse :: Generic DeleteServiceResponse _
instance showDeleteServiceResponse :: Show DeleteServiceResponse where show = genericShow
instance decodeDeleteServiceResponse :: Decode DeleteServiceResponse where decode = genericDecode options
instance encodeDeleteServiceResponse :: Encode DeleteServiceResponse where encode = genericEncode options

-- | Constructs DeleteServiceResponse from required parameters
newDeleteServiceResponse :: DeleteServiceResponse
newDeleteServiceResponse  = DeleteServiceResponse { "service": (NullOrUndefined Nothing) }

-- | Constructs DeleteServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceResponse' :: ( { "service" :: NullOrUndefined (Service) } -> {"service" :: NullOrUndefined (Service) } ) -> DeleteServiceResponse
newDeleteServiceResponse'  customize = (DeleteServiceResponse <<< customize) { "service": (NullOrUndefined Nothing) }



-- | <p>The details of an Amazon ECS service deployment.</p>
newtype Deployment = Deployment 
  { "id" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "taskDefinition" :: NullOrUndefined (String)
  , "desiredCount" :: NullOrUndefined (Int)
  , "pendingCount" :: NullOrUndefined (Int)
  , "runningCount" :: NullOrUndefined (Int)
  , "createdAt" :: NullOrUndefined (Types.Timestamp)
  , "updatedAt" :: NullOrUndefined (Types.Timestamp)
  , "launchType" :: NullOrUndefined (LaunchType)
  , "platformVersion" :: NullOrUndefined (String)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  }
derive instance newtypeDeployment :: Newtype Deployment _
derive instance repGenericDeployment :: Generic Deployment _
instance showDeployment :: Show Deployment where show = genericShow
instance decodeDeployment :: Decode Deployment where decode = genericDecode options
instance encodeDeployment :: Encode Deployment where encode = genericEncode options

-- | Constructs Deployment from required parameters
newDeployment :: Deployment
newDeployment  = Deployment { "createdAt": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "pendingCount": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "runningCount": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing), "updatedAt": (NullOrUndefined Nothing) }

-- | Constructs Deployment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeployment' :: ( { "id" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "taskDefinition" :: NullOrUndefined (String) , "desiredCount" :: NullOrUndefined (Int) , "pendingCount" :: NullOrUndefined (Int) , "runningCount" :: NullOrUndefined (Int) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "updatedAt" :: NullOrUndefined (Types.Timestamp) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } -> {"id" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "taskDefinition" :: NullOrUndefined (String) , "desiredCount" :: NullOrUndefined (Int) , "pendingCount" :: NullOrUndefined (Int) , "runningCount" :: NullOrUndefined (Int) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "updatedAt" :: NullOrUndefined (Types.Timestamp) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } ) -> Deployment
newDeployment'  customize = (Deployment <<< customize) { "createdAt": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "pendingCount": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "runningCount": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing), "updatedAt": (NullOrUndefined Nothing) }



-- | <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
newtype DeploymentConfiguration = DeploymentConfiguration 
  { "maximumPercent" :: NullOrUndefined (BoxedInteger)
  , "minimumHealthyPercent" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeDeploymentConfiguration :: Newtype DeploymentConfiguration _
derive instance repGenericDeploymentConfiguration :: Generic DeploymentConfiguration _
instance showDeploymentConfiguration :: Show DeploymentConfiguration where show = genericShow
instance decodeDeploymentConfiguration :: Decode DeploymentConfiguration where decode = genericDecode options
instance encodeDeploymentConfiguration :: Encode DeploymentConfiguration where encode = genericEncode options

-- | Constructs DeploymentConfiguration from required parameters
newDeploymentConfiguration :: DeploymentConfiguration
newDeploymentConfiguration  = DeploymentConfiguration { "maximumPercent": (NullOrUndefined Nothing), "minimumHealthyPercent": (NullOrUndefined Nothing) }

-- | Constructs DeploymentConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeploymentConfiguration' :: ( { "maximumPercent" :: NullOrUndefined (BoxedInteger) , "minimumHealthyPercent" :: NullOrUndefined (BoxedInteger) } -> {"maximumPercent" :: NullOrUndefined (BoxedInteger) , "minimumHealthyPercent" :: NullOrUndefined (BoxedInteger) } ) -> DeploymentConfiguration
newDeploymentConfiguration'  customize = (DeploymentConfiguration <<< customize) { "maximumPercent": (NullOrUndefined Nothing), "minimumHealthyPercent": (NullOrUndefined Nothing) }



newtype Deployments = Deployments (Array Deployment)
derive instance newtypeDeployments :: Newtype Deployments _
derive instance repGenericDeployments :: Generic Deployments _
instance showDeployments :: Show Deployments where show = genericShow
instance decodeDeployments :: Decode Deployments where decode = genericDecode options
instance encodeDeployments :: Encode Deployments where encode = genericEncode options



newtype DeregisterContainerInstanceRequest = DeregisterContainerInstanceRequest 
  { "cluster" :: NullOrUndefined (String)
  , "containerInstance" :: (String)
  , "force" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeDeregisterContainerInstanceRequest :: Newtype DeregisterContainerInstanceRequest _
derive instance repGenericDeregisterContainerInstanceRequest :: Generic DeregisterContainerInstanceRequest _
instance showDeregisterContainerInstanceRequest :: Show DeregisterContainerInstanceRequest where show = genericShow
instance decodeDeregisterContainerInstanceRequest :: Decode DeregisterContainerInstanceRequest where decode = genericDecode options
instance encodeDeregisterContainerInstanceRequest :: Encode DeregisterContainerInstanceRequest where encode = genericEncode options

-- | Constructs DeregisterContainerInstanceRequest from required parameters
newDeregisterContainerInstanceRequest :: String -> DeregisterContainerInstanceRequest
newDeregisterContainerInstanceRequest _containerInstance = DeregisterContainerInstanceRequest { "containerInstance": _containerInstance, "cluster": (NullOrUndefined Nothing), "force": (NullOrUndefined Nothing) }

-- | Constructs DeregisterContainerInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterContainerInstanceRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "containerInstance" :: (String) , "force" :: NullOrUndefined (BoxedBoolean) } -> {"cluster" :: NullOrUndefined (String) , "containerInstance" :: (String) , "force" :: NullOrUndefined (BoxedBoolean) } ) -> DeregisterContainerInstanceRequest
newDeregisterContainerInstanceRequest' _containerInstance customize = (DeregisterContainerInstanceRequest <<< customize) { "containerInstance": _containerInstance, "cluster": (NullOrUndefined Nothing), "force": (NullOrUndefined Nothing) }



newtype DeregisterContainerInstanceResponse = DeregisterContainerInstanceResponse 
  { "containerInstance" :: NullOrUndefined (ContainerInstance)
  }
derive instance newtypeDeregisterContainerInstanceResponse :: Newtype DeregisterContainerInstanceResponse _
derive instance repGenericDeregisterContainerInstanceResponse :: Generic DeregisterContainerInstanceResponse _
instance showDeregisterContainerInstanceResponse :: Show DeregisterContainerInstanceResponse where show = genericShow
instance decodeDeregisterContainerInstanceResponse :: Decode DeregisterContainerInstanceResponse where decode = genericDecode options
instance encodeDeregisterContainerInstanceResponse :: Encode DeregisterContainerInstanceResponse where encode = genericEncode options

-- | Constructs DeregisterContainerInstanceResponse from required parameters
newDeregisterContainerInstanceResponse :: DeregisterContainerInstanceResponse
newDeregisterContainerInstanceResponse  = DeregisterContainerInstanceResponse { "containerInstance": (NullOrUndefined Nothing) }

-- | Constructs DeregisterContainerInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterContainerInstanceResponse' :: ( { "containerInstance" :: NullOrUndefined (ContainerInstance) } -> {"containerInstance" :: NullOrUndefined (ContainerInstance) } ) -> DeregisterContainerInstanceResponse
newDeregisterContainerInstanceResponse'  customize = (DeregisterContainerInstanceResponse <<< customize) { "containerInstance": (NullOrUndefined Nothing) }



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
  { "taskDefinition" :: NullOrUndefined (TaskDefinition)
  }
derive instance newtypeDeregisterTaskDefinitionResponse :: Newtype DeregisterTaskDefinitionResponse _
derive instance repGenericDeregisterTaskDefinitionResponse :: Generic DeregisterTaskDefinitionResponse _
instance showDeregisterTaskDefinitionResponse :: Show DeregisterTaskDefinitionResponse where show = genericShow
instance decodeDeregisterTaskDefinitionResponse :: Decode DeregisterTaskDefinitionResponse where decode = genericDecode options
instance encodeDeregisterTaskDefinitionResponse :: Encode DeregisterTaskDefinitionResponse where encode = genericEncode options

-- | Constructs DeregisterTaskDefinitionResponse from required parameters
newDeregisterTaskDefinitionResponse :: DeregisterTaskDefinitionResponse
newDeregisterTaskDefinitionResponse  = DeregisterTaskDefinitionResponse { "taskDefinition": (NullOrUndefined Nothing) }

-- | Constructs DeregisterTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterTaskDefinitionResponse' :: ( { "taskDefinition" :: NullOrUndefined (TaskDefinition) } -> {"taskDefinition" :: NullOrUndefined (TaskDefinition) } ) -> DeregisterTaskDefinitionResponse
newDeregisterTaskDefinitionResponse'  customize = (DeregisterTaskDefinitionResponse <<< customize) { "taskDefinition": (NullOrUndefined Nothing) }



newtype DescribeClustersRequest = DescribeClustersRequest 
  { "clusters" :: NullOrUndefined (StringList)
  , "include" :: NullOrUndefined (ClusterFieldList)
  }
derive instance newtypeDescribeClustersRequest :: Newtype DescribeClustersRequest _
derive instance repGenericDescribeClustersRequest :: Generic DescribeClustersRequest _
instance showDescribeClustersRequest :: Show DescribeClustersRequest where show = genericShow
instance decodeDescribeClustersRequest :: Decode DescribeClustersRequest where decode = genericDecode options
instance encodeDescribeClustersRequest :: Encode DescribeClustersRequest where encode = genericEncode options

-- | Constructs DescribeClustersRequest from required parameters
newDescribeClustersRequest :: DescribeClustersRequest
newDescribeClustersRequest  = DescribeClustersRequest { "clusters": (NullOrUndefined Nothing), "include": (NullOrUndefined Nothing) }

-- | Constructs DescribeClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersRequest' :: ( { "clusters" :: NullOrUndefined (StringList) , "include" :: NullOrUndefined (ClusterFieldList) } -> {"clusters" :: NullOrUndefined (StringList) , "include" :: NullOrUndefined (ClusterFieldList) } ) -> DescribeClustersRequest
newDescribeClustersRequest'  customize = (DescribeClustersRequest <<< customize) { "clusters": (NullOrUndefined Nothing), "include": (NullOrUndefined Nothing) }



newtype DescribeClustersResponse = DescribeClustersResponse 
  { "clusters" :: NullOrUndefined (Clusters)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeDescribeClustersResponse :: Newtype DescribeClustersResponse _
derive instance repGenericDescribeClustersResponse :: Generic DescribeClustersResponse _
instance showDescribeClustersResponse :: Show DescribeClustersResponse where show = genericShow
instance decodeDescribeClustersResponse :: Decode DescribeClustersResponse where decode = genericDecode options
instance encodeDescribeClustersResponse :: Encode DescribeClustersResponse where encode = genericEncode options

-- | Constructs DescribeClustersResponse from required parameters
newDescribeClustersResponse :: DescribeClustersResponse
newDescribeClustersResponse  = DescribeClustersResponse { "clusters": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }

-- | Constructs DescribeClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersResponse' :: ( { "clusters" :: NullOrUndefined (Clusters) , "failures" :: NullOrUndefined (Failures) } -> {"clusters" :: NullOrUndefined (Clusters) , "failures" :: NullOrUndefined (Failures) } ) -> DescribeClustersResponse
newDescribeClustersResponse'  customize = (DescribeClustersResponse <<< customize) { "clusters": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }



newtype DescribeContainerInstancesRequest = DescribeContainerInstancesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "containerInstances" :: (StringList)
  }
derive instance newtypeDescribeContainerInstancesRequest :: Newtype DescribeContainerInstancesRequest _
derive instance repGenericDescribeContainerInstancesRequest :: Generic DescribeContainerInstancesRequest _
instance showDescribeContainerInstancesRequest :: Show DescribeContainerInstancesRequest where show = genericShow
instance decodeDescribeContainerInstancesRequest :: Decode DescribeContainerInstancesRequest where decode = genericDecode options
instance encodeDescribeContainerInstancesRequest :: Encode DescribeContainerInstancesRequest where encode = genericEncode options

-- | Constructs DescribeContainerInstancesRequest from required parameters
newDescribeContainerInstancesRequest :: StringList -> DescribeContainerInstancesRequest
newDescribeContainerInstancesRequest _containerInstances = DescribeContainerInstancesRequest { "containerInstances": _containerInstances, "cluster": (NullOrUndefined Nothing) }

-- | Constructs DescribeContainerInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerInstancesRequest' :: StringList -> ( { "cluster" :: NullOrUndefined (String) , "containerInstances" :: (StringList) } -> {"cluster" :: NullOrUndefined (String) , "containerInstances" :: (StringList) } ) -> DescribeContainerInstancesRequest
newDescribeContainerInstancesRequest' _containerInstances customize = (DescribeContainerInstancesRequest <<< customize) { "containerInstances": _containerInstances, "cluster": (NullOrUndefined Nothing) }



newtype DescribeContainerInstancesResponse = DescribeContainerInstancesResponse 
  { "containerInstances" :: NullOrUndefined (ContainerInstances)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeDescribeContainerInstancesResponse :: Newtype DescribeContainerInstancesResponse _
derive instance repGenericDescribeContainerInstancesResponse :: Generic DescribeContainerInstancesResponse _
instance showDescribeContainerInstancesResponse :: Show DescribeContainerInstancesResponse where show = genericShow
instance decodeDescribeContainerInstancesResponse :: Decode DescribeContainerInstancesResponse where decode = genericDecode options
instance encodeDescribeContainerInstancesResponse :: Encode DescribeContainerInstancesResponse where encode = genericEncode options

-- | Constructs DescribeContainerInstancesResponse from required parameters
newDescribeContainerInstancesResponse :: DescribeContainerInstancesResponse
newDescribeContainerInstancesResponse  = DescribeContainerInstancesResponse { "containerInstances": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }

-- | Constructs DescribeContainerInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerInstancesResponse' :: ( { "containerInstances" :: NullOrUndefined (ContainerInstances) , "failures" :: NullOrUndefined (Failures) } -> {"containerInstances" :: NullOrUndefined (ContainerInstances) , "failures" :: NullOrUndefined (Failures) } ) -> DescribeContainerInstancesResponse
newDescribeContainerInstancesResponse'  customize = (DescribeContainerInstancesResponse <<< customize) { "containerInstances": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }



newtype DescribeServicesRequest = DescribeServicesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "services" :: (StringList)
  }
derive instance newtypeDescribeServicesRequest :: Newtype DescribeServicesRequest _
derive instance repGenericDescribeServicesRequest :: Generic DescribeServicesRequest _
instance showDescribeServicesRequest :: Show DescribeServicesRequest where show = genericShow
instance decodeDescribeServicesRequest :: Decode DescribeServicesRequest where decode = genericDecode options
instance encodeDescribeServicesRequest :: Encode DescribeServicesRequest where encode = genericEncode options

-- | Constructs DescribeServicesRequest from required parameters
newDescribeServicesRequest :: StringList -> DescribeServicesRequest
newDescribeServicesRequest _services = DescribeServicesRequest { "services": _services, "cluster": (NullOrUndefined Nothing) }

-- | Constructs DescribeServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesRequest' :: StringList -> ( { "cluster" :: NullOrUndefined (String) , "services" :: (StringList) } -> {"cluster" :: NullOrUndefined (String) , "services" :: (StringList) } ) -> DescribeServicesRequest
newDescribeServicesRequest' _services customize = (DescribeServicesRequest <<< customize) { "services": _services, "cluster": (NullOrUndefined Nothing) }



newtype DescribeServicesResponse = DescribeServicesResponse 
  { "services" :: NullOrUndefined (Services)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeDescribeServicesResponse :: Newtype DescribeServicesResponse _
derive instance repGenericDescribeServicesResponse :: Generic DescribeServicesResponse _
instance showDescribeServicesResponse :: Show DescribeServicesResponse where show = genericShow
instance decodeDescribeServicesResponse :: Decode DescribeServicesResponse where decode = genericDecode options
instance encodeDescribeServicesResponse :: Encode DescribeServicesResponse where encode = genericEncode options

-- | Constructs DescribeServicesResponse from required parameters
newDescribeServicesResponse :: DescribeServicesResponse
newDescribeServicesResponse  = DescribeServicesResponse { "failures": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing) }

-- | Constructs DescribeServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeServicesResponse' :: ( { "services" :: NullOrUndefined (Services) , "failures" :: NullOrUndefined (Failures) } -> {"services" :: NullOrUndefined (Services) , "failures" :: NullOrUndefined (Failures) } ) -> DescribeServicesResponse
newDescribeServicesResponse'  customize = (DescribeServicesResponse <<< customize) { "failures": (NullOrUndefined Nothing), "services": (NullOrUndefined Nothing) }



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
  { "taskDefinition" :: NullOrUndefined (TaskDefinition)
  }
derive instance newtypeDescribeTaskDefinitionResponse :: Newtype DescribeTaskDefinitionResponse _
derive instance repGenericDescribeTaskDefinitionResponse :: Generic DescribeTaskDefinitionResponse _
instance showDescribeTaskDefinitionResponse :: Show DescribeTaskDefinitionResponse where show = genericShow
instance decodeDescribeTaskDefinitionResponse :: Decode DescribeTaskDefinitionResponse where decode = genericDecode options
instance encodeDescribeTaskDefinitionResponse :: Encode DescribeTaskDefinitionResponse where encode = genericEncode options

-- | Constructs DescribeTaskDefinitionResponse from required parameters
newDescribeTaskDefinitionResponse :: DescribeTaskDefinitionResponse
newDescribeTaskDefinitionResponse  = DescribeTaskDefinitionResponse { "taskDefinition": (NullOrUndefined Nothing) }

-- | Constructs DescribeTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTaskDefinitionResponse' :: ( { "taskDefinition" :: NullOrUndefined (TaskDefinition) } -> {"taskDefinition" :: NullOrUndefined (TaskDefinition) } ) -> DescribeTaskDefinitionResponse
newDescribeTaskDefinitionResponse'  customize = (DescribeTaskDefinitionResponse <<< customize) { "taskDefinition": (NullOrUndefined Nothing) }



newtype DescribeTasksRequest = DescribeTasksRequest 
  { "cluster" :: NullOrUndefined (String)
  , "tasks" :: (StringList)
  }
derive instance newtypeDescribeTasksRequest :: Newtype DescribeTasksRequest _
derive instance repGenericDescribeTasksRequest :: Generic DescribeTasksRequest _
instance showDescribeTasksRequest :: Show DescribeTasksRequest where show = genericShow
instance decodeDescribeTasksRequest :: Decode DescribeTasksRequest where decode = genericDecode options
instance encodeDescribeTasksRequest :: Encode DescribeTasksRequest where encode = genericEncode options

-- | Constructs DescribeTasksRequest from required parameters
newDescribeTasksRequest :: StringList -> DescribeTasksRequest
newDescribeTasksRequest _tasks = DescribeTasksRequest { "tasks": _tasks, "cluster": (NullOrUndefined Nothing) }

-- | Constructs DescribeTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTasksRequest' :: StringList -> ( { "cluster" :: NullOrUndefined (String) , "tasks" :: (StringList) } -> {"cluster" :: NullOrUndefined (String) , "tasks" :: (StringList) } ) -> DescribeTasksRequest
newDescribeTasksRequest' _tasks customize = (DescribeTasksRequest <<< customize) { "tasks": _tasks, "cluster": (NullOrUndefined Nothing) }



newtype DescribeTasksResponse = DescribeTasksResponse 
  { "tasks" :: NullOrUndefined (Tasks)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeDescribeTasksResponse :: Newtype DescribeTasksResponse _
derive instance repGenericDescribeTasksResponse :: Generic DescribeTasksResponse _
instance showDescribeTasksResponse :: Show DescribeTasksResponse where show = genericShow
instance decodeDescribeTasksResponse :: Decode DescribeTasksResponse where decode = genericDecode options
instance encodeDescribeTasksResponse :: Encode DescribeTasksResponse where encode = genericEncode options

-- | Constructs DescribeTasksResponse from required parameters
newDescribeTasksResponse :: DescribeTasksResponse
newDescribeTasksResponse  = DescribeTasksResponse { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }

-- | Constructs DescribeTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTasksResponse' :: ( { "tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } -> {"tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } ) -> DescribeTasksResponse
newDescribeTasksResponse'  customize = (DescribeTasksResponse <<< customize) { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }



newtype DesiredStatus = DesiredStatus String
derive instance newtypeDesiredStatus :: Newtype DesiredStatus _
derive instance repGenericDesiredStatus :: Generic DesiredStatus _
instance showDesiredStatus :: Show DesiredStatus where show = genericShow
instance decodeDesiredStatus :: Decode DesiredStatus where decode = genericDecode options
instance encodeDesiredStatus :: Encode DesiredStatus where encode = genericEncode options



-- | <p>An object representing a container instance host device.</p>
newtype Device = Device 
  { "hostPath" :: (String)
  , "containerPath" :: NullOrUndefined (String)
  , "permissions" :: NullOrUndefined (DeviceCgroupPermissions)
  }
derive instance newtypeDevice :: Newtype Device _
derive instance repGenericDevice :: Generic Device _
instance showDevice :: Show Device where show = genericShow
instance decodeDevice :: Decode Device where decode = genericDecode options
instance encodeDevice :: Encode Device where encode = genericEncode options

-- | Constructs Device from required parameters
newDevice :: String -> Device
newDevice _hostPath = Device { "hostPath": _hostPath, "containerPath": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing) }

-- | Constructs Device's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDevice' :: String -> ( { "hostPath" :: (String) , "containerPath" :: NullOrUndefined (String) , "permissions" :: NullOrUndefined (DeviceCgroupPermissions) } -> {"hostPath" :: (String) , "containerPath" :: NullOrUndefined (String) , "permissions" :: NullOrUndefined (DeviceCgroupPermissions) } ) -> Device
newDevice' _hostPath customize = (Device <<< customize) { "hostPath": _hostPath, "containerPath": (NullOrUndefined Nothing), "permissions": (NullOrUndefined Nothing) }



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
  { "containerInstance" :: NullOrUndefined (String)
  , "cluster" :: NullOrUndefined (String)
  }
derive instance newtypeDiscoverPollEndpointRequest :: Newtype DiscoverPollEndpointRequest _
derive instance repGenericDiscoverPollEndpointRequest :: Generic DiscoverPollEndpointRequest _
instance showDiscoverPollEndpointRequest :: Show DiscoverPollEndpointRequest where show = genericShow
instance decodeDiscoverPollEndpointRequest :: Decode DiscoverPollEndpointRequest where decode = genericDecode options
instance encodeDiscoverPollEndpointRequest :: Encode DiscoverPollEndpointRequest where encode = genericEncode options

-- | Constructs DiscoverPollEndpointRequest from required parameters
newDiscoverPollEndpointRequest :: DiscoverPollEndpointRequest
newDiscoverPollEndpointRequest  = DiscoverPollEndpointRequest { "cluster": (NullOrUndefined Nothing), "containerInstance": (NullOrUndefined Nothing) }

-- | Constructs DiscoverPollEndpointRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoverPollEndpointRequest' :: ( { "containerInstance" :: NullOrUndefined (String) , "cluster" :: NullOrUndefined (String) } -> {"containerInstance" :: NullOrUndefined (String) , "cluster" :: NullOrUndefined (String) } ) -> DiscoverPollEndpointRequest
newDiscoverPollEndpointRequest'  customize = (DiscoverPollEndpointRequest <<< customize) { "cluster": (NullOrUndefined Nothing), "containerInstance": (NullOrUndefined Nothing) }



newtype DiscoverPollEndpointResponse = DiscoverPollEndpointResponse 
  { "endpoint" :: NullOrUndefined (String)
  , "telemetryEndpoint" :: NullOrUndefined (String)
  }
derive instance newtypeDiscoverPollEndpointResponse :: Newtype DiscoverPollEndpointResponse _
derive instance repGenericDiscoverPollEndpointResponse :: Generic DiscoverPollEndpointResponse _
instance showDiscoverPollEndpointResponse :: Show DiscoverPollEndpointResponse where show = genericShow
instance decodeDiscoverPollEndpointResponse :: Decode DiscoverPollEndpointResponse where decode = genericDecode options
instance encodeDiscoverPollEndpointResponse :: Encode DiscoverPollEndpointResponse where encode = genericEncode options

-- | Constructs DiscoverPollEndpointResponse from required parameters
newDiscoverPollEndpointResponse :: DiscoverPollEndpointResponse
newDiscoverPollEndpointResponse  = DiscoverPollEndpointResponse { "endpoint": (NullOrUndefined Nothing), "telemetryEndpoint": (NullOrUndefined Nothing) }

-- | Constructs DiscoverPollEndpointResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDiscoverPollEndpointResponse' :: ( { "endpoint" :: NullOrUndefined (String) , "telemetryEndpoint" :: NullOrUndefined (String) } -> {"endpoint" :: NullOrUndefined (String) , "telemetryEndpoint" :: NullOrUndefined (String) } ) -> DiscoverPollEndpointResponse
newDiscoverPollEndpointResponse'  customize = (DiscoverPollEndpointResponse <<< customize) { "endpoint": (NullOrUndefined Nothing), "telemetryEndpoint": (NullOrUndefined Nothing) }



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
  { "arn" :: NullOrUndefined (String)
  , "reason" :: NullOrUndefined (String)
  }
derive instance newtypeFailure :: Newtype Failure _
derive instance repGenericFailure :: Generic Failure _
instance showFailure :: Show Failure where show = genericShow
instance decodeFailure :: Decode Failure where decode = genericDecode options
instance encodeFailure :: Encode Failure where encode = genericEncode options

-- | Constructs Failure from required parameters
newFailure :: Failure
newFailure  = Failure { "arn": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }

-- | Constructs Failure's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailure' :: ( { "arn" :: NullOrUndefined (String) , "reason" :: NullOrUndefined (String) } -> {"arn" :: NullOrUndefined (String) , "reason" :: NullOrUndefined (String) } ) -> Failure
newFailure'  customize = (Failure <<< customize) { "arn": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }



newtype Failures = Failures (Array Failure)
derive instance newtypeFailures :: Newtype Failures _
derive instance repGenericFailures :: Generic Failures _
instance showFailures :: Show Failures where show = genericShow
instance decodeFailures :: Decode Failures where decode = genericDecode options
instance encodeFailures :: Encode Failures where encode = genericEncode options



-- | <p>An object representing a container health check. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile).</p>
newtype HealthCheck = HealthCheck 
  { "command" :: (StringList)
  , "interval" :: NullOrUndefined (BoxedInteger)
  , "timeout" :: NullOrUndefined (BoxedInteger)
  , "retries" :: NullOrUndefined (BoxedInteger)
  , "startPeriod" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeHealthCheck :: Newtype HealthCheck _
derive instance repGenericHealthCheck :: Generic HealthCheck _
instance showHealthCheck :: Show HealthCheck where show = genericShow
instance decodeHealthCheck :: Decode HealthCheck where decode = genericDecode options
instance encodeHealthCheck :: Encode HealthCheck where encode = genericEncode options

-- | Constructs HealthCheck from required parameters
newHealthCheck :: StringList -> HealthCheck
newHealthCheck _command = HealthCheck { "command": _command, "interval": (NullOrUndefined Nothing), "retries": (NullOrUndefined Nothing), "startPeriod": (NullOrUndefined Nothing), "timeout": (NullOrUndefined Nothing) }

-- | Constructs HealthCheck's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheck' :: StringList -> ( { "command" :: (StringList) , "interval" :: NullOrUndefined (BoxedInteger) , "timeout" :: NullOrUndefined (BoxedInteger) , "retries" :: NullOrUndefined (BoxedInteger) , "startPeriod" :: NullOrUndefined (BoxedInteger) } -> {"command" :: (StringList) , "interval" :: NullOrUndefined (BoxedInteger) , "timeout" :: NullOrUndefined (BoxedInteger) , "retries" :: NullOrUndefined (BoxedInteger) , "startPeriod" :: NullOrUndefined (BoxedInteger) } ) -> HealthCheck
newHealthCheck' _command customize = (HealthCheck <<< customize) { "command": _command, "interval": (NullOrUndefined Nothing), "retries": (NullOrUndefined Nothing), "startPeriod": (NullOrUndefined Nothing), "timeout": (NullOrUndefined Nothing) }



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
  { "sourcePath" :: NullOrUndefined (String)
  }
derive instance newtypeHostVolumeProperties :: Newtype HostVolumeProperties _
derive instance repGenericHostVolumeProperties :: Generic HostVolumeProperties _
instance showHostVolumeProperties :: Show HostVolumeProperties where show = genericShow
instance decodeHostVolumeProperties :: Decode HostVolumeProperties where decode = genericDecode options
instance encodeHostVolumeProperties :: Encode HostVolumeProperties where encode = genericEncode options

-- | Constructs HostVolumeProperties from required parameters
newHostVolumeProperties :: HostVolumeProperties
newHostVolumeProperties  = HostVolumeProperties { "sourcePath": (NullOrUndefined Nothing) }

-- | Constructs HostVolumeProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHostVolumeProperties' :: ( { "sourcePath" :: NullOrUndefined (String) } -> {"sourcePath" :: NullOrUndefined (String) } ) -> HostVolumeProperties
newHostVolumeProperties'  customize = (HostVolumeProperties <<< customize) { "sourcePath": (NullOrUndefined Nothing) }



-- | <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
newtype InvalidParameterException = InvalidParameterException Types.NoArguments
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options



-- | <p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker. For more information on the default capabilities and the non-default available capabilities, see <a href="https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities">Runtime privilege and Linux capabilities</a> in the <i>Docker run reference</i>. For more detailed information on these Linux capabilities, see the <a href="http://man7.org/linux/man-pages/man7/capabilities.7.html">capabilities(7)</a> Linux manual page.</p>
newtype KernelCapabilities = KernelCapabilities 
  { "add" :: NullOrUndefined (StringList)
  , "drop" :: NullOrUndefined (StringList)
  }
derive instance newtypeKernelCapabilities :: Newtype KernelCapabilities _
derive instance repGenericKernelCapabilities :: Generic KernelCapabilities _
instance showKernelCapabilities :: Show KernelCapabilities where show = genericShow
instance decodeKernelCapabilities :: Decode KernelCapabilities where decode = genericDecode options
instance encodeKernelCapabilities :: Encode KernelCapabilities where encode = genericEncode options

-- | Constructs KernelCapabilities from required parameters
newKernelCapabilities :: KernelCapabilities
newKernelCapabilities  = KernelCapabilities { "add": (NullOrUndefined Nothing), "drop": (NullOrUndefined Nothing) }

-- | Constructs KernelCapabilities's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKernelCapabilities' :: ( { "add" :: NullOrUndefined (StringList) , "drop" :: NullOrUndefined (StringList) } -> {"add" :: NullOrUndefined (StringList) , "drop" :: NullOrUndefined (StringList) } ) -> KernelCapabilities
newKernelCapabilities'  customize = (KernelCapabilities <<< customize) { "add": (NullOrUndefined Nothing), "drop": (NullOrUndefined Nothing) }



-- | <p>A key and value pair object.</p>
newtype KeyValuePair = KeyValuePair 
  { "name" :: NullOrUndefined (String)
  , "value" :: NullOrUndefined (String)
  }
derive instance newtypeKeyValuePair :: Newtype KeyValuePair _
derive instance repGenericKeyValuePair :: Generic KeyValuePair _
instance showKeyValuePair :: Show KeyValuePair where show = genericShow
instance decodeKeyValuePair :: Decode KeyValuePair where decode = genericDecode options
instance encodeKeyValuePair :: Encode KeyValuePair where encode = genericEncode options

-- | Constructs KeyValuePair from required parameters
newKeyValuePair :: KeyValuePair
newKeyValuePair  = KeyValuePair { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs KeyValuePair's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValuePair' :: ( { "name" :: NullOrUndefined (String) , "value" :: NullOrUndefined (String) } -> {"name" :: NullOrUndefined (String) , "value" :: NullOrUndefined (String) } ) -> KeyValuePair
newKeyValuePair'  customize = (KeyValuePair <<< customize) { "name": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



newtype LaunchType = LaunchType String
derive instance newtypeLaunchType :: Newtype LaunchType _
derive instance repGenericLaunchType :: Generic LaunchType _
instance showLaunchType :: Show LaunchType where show = genericShow
instance decodeLaunchType :: Decode LaunchType where decode = genericDecode options
instance encodeLaunchType :: Encode LaunchType where encode = genericEncode options



-- | <p>Linux-specific options that are applied to the container, such as Linux <a>KernelCapabilities</a>.</p>
newtype LinuxParameters = LinuxParameters 
  { "capabilities" :: NullOrUndefined (KernelCapabilities)
  , "devices" :: NullOrUndefined (DevicesList)
  , "initProcessEnabled" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeLinuxParameters :: Newtype LinuxParameters _
derive instance repGenericLinuxParameters :: Generic LinuxParameters _
instance showLinuxParameters :: Show LinuxParameters where show = genericShow
instance decodeLinuxParameters :: Decode LinuxParameters where decode = genericDecode options
instance encodeLinuxParameters :: Encode LinuxParameters where encode = genericEncode options

-- | Constructs LinuxParameters from required parameters
newLinuxParameters :: LinuxParameters
newLinuxParameters  = LinuxParameters { "capabilities": (NullOrUndefined Nothing), "devices": (NullOrUndefined Nothing), "initProcessEnabled": (NullOrUndefined Nothing) }

-- | Constructs LinuxParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLinuxParameters' :: ( { "capabilities" :: NullOrUndefined (KernelCapabilities) , "devices" :: NullOrUndefined (DevicesList) , "initProcessEnabled" :: NullOrUndefined (BoxedBoolean) } -> {"capabilities" :: NullOrUndefined (KernelCapabilities) , "devices" :: NullOrUndefined (DevicesList) , "initProcessEnabled" :: NullOrUndefined (BoxedBoolean) } ) -> LinuxParameters
newLinuxParameters'  customize = (LinuxParameters <<< customize) { "capabilities": (NullOrUndefined Nothing), "devices": (NullOrUndefined Nothing), "initProcessEnabled": (NullOrUndefined Nothing) }



newtype ListAttributesRequest = ListAttributesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "targetType" :: (TargetType)
  , "attributeName" :: NullOrUndefined (String)
  , "attributeValue" :: NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeListAttributesRequest :: Newtype ListAttributesRequest _
derive instance repGenericListAttributesRequest :: Generic ListAttributesRequest _
instance showListAttributesRequest :: Show ListAttributesRequest where show = genericShow
instance decodeListAttributesRequest :: Decode ListAttributesRequest where decode = genericDecode options
instance encodeListAttributesRequest :: Encode ListAttributesRequest where encode = genericEncode options

-- | Constructs ListAttributesRequest from required parameters
newListAttributesRequest :: TargetType -> ListAttributesRequest
newListAttributesRequest _targetType = ListAttributesRequest { "targetType": _targetType, "attributeName": (NullOrUndefined Nothing), "attributeValue": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttributesRequest' :: TargetType -> ( { "cluster" :: NullOrUndefined (String) , "targetType" :: (TargetType) , "attributeName" :: NullOrUndefined (String) , "attributeValue" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } -> {"cluster" :: NullOrUndefined (String) , "targetType" :: (TargetType) , "attributeName" :: NullOrUndefined (String) , "attributeValue" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } ) -> ListAttributesRequest
newListAttributesRequest' _targetType customize = (ListAttributesRequest <<< customize) { "targetType": _targetType, "attributeName": (NullOrUndefined Nothing), "attributeValue": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListAttributesResponse = ListAttributesResponse 
  { "attributes" :: NullOrUndefined (Attributes)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListAttributesResponse :: Newtype ListAttributesResponse _
derive instance repGenericListAttributesResponse :: Generic ListAttributesResponse _
instance showListAttributesResponse :: Show ListAttributesResponse where show = genericShow
instance decodeListAttributesResponse :: Decode ListAttributesResponse where decode = genericDecode options
instance encodeListAttributesResponse :: Encode ListAttributesResponse where encode = genericEncode options

-- | Constructs ListAttributesResponse from required parameters
newListAttributesResponse :: ListAttributesResponse
newListAttributesResponse  = ListAttributesResponse { "attributes": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttributesResponse' :: ( { "attributes" :: NullOrUndefined (Attributes) , "nextToken" :: NullOrUndefined (String) } -> {"attributes" :: NullOrUndefined (Attributes) , "nextToken" :: NullOrUndefined (String) } ) -> ListAttributesResponse
newListAttributesResponse'  customize = (ListAttributesResponse <<< customize) { "attributes": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListClustersRequest = ListClustersRequest 
  { "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeListClustersRequest :: Newtype ListClustersRequest _
derive instance repGenericListClustersRequest :: Generic ListClustersRequest _
instance showListClustersRequest :: Show ListClustersRequest where show = genericShow
instance decodeListClustersRequest :: Decode ListClustersRequest where decode = genericDecode options
instance encodeListClustersRequest :: Encode ListClustersRequest where encode = genericEncode options

-- | Constructs ListClustersRequest from required parameters
newListClustersRequest :: ListClustersRequest
newListClustersRequest  = ListClustersRequest { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersRequest' :: ( { "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } -> {"nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } ) -> ListClustersRequest
newListClustersRequest'  customize = (ListClustersRequest <<< customize) { "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListClustersResponse = ListClustersResponse 
  { "clusterArns" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListClustersResponse :: Newtype ListClustersResponse _
derive instance repGenericListClustersResponse :: Generic ListClustersResponse _
instance showListClustersResponse :: Show ListClustersResponse where show = genericShow
instance decodeListClustersResponse :: Decode ListClustersResponse where decode = genericDecode options
instance encodeListClustersResponse :: Encode ListClustersResponse where encode = genericEncode options

-- | Constructs ListClustersResponse from required parameters
newListClustersResponse :: ListClustersResponse
newListClustersResponse  = ListClustersResponse { "clusterArns": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersResponse' :: ( { "clusterArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"clusterArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListClustersResponse
newListClustersResponse'  customize = (ListClustersResponse <<< customize) { "clusterArns": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListContainerInstancesRequest = ListContainerInstancesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "filter" :: NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  , "status" :: NullOrUndefined (ContainerInstanceStatus)
  }
derive instance newtypeListContainerInstancesRequest :: Newtype ListContainerInstancesRequest _
derive instance repGenericListContainerInstancesRequest :: Generic ListContainerInstancesRequest _
instance showListContainerInstancesRequest :: Show ListContainerInstancesRequest where show = genericShow
instance decodeListContainerInstancesRequest :: Decode ListContainerInstancesRequest where decode = genericDecode options
instance encodeListContainerInstancesRequest :: Encode ListContainerInstancesRequest where encode = genericEncode options

-- | Constructs ListContainerInstancesRequest from required parameters
newListContainerInstancesRequest :: ListContainerInstancesRequest
newListContainerInstancesRequest  = ListContainerInstancesRequest { "cluster": (NullOrUndefined Nothing), "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs ListContainerInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainerInstancesRequest' :: ( { "cluster" :: NullOrUndefined (String) , "filter" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "status" :: NullOrUndefined (ContainerInstanceStatus) } -> {"cluster" :: NullOrUndefined (String) , "filter" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "status" :: NullOrUndefined (ContainerInstanceStatus) } ) -> ListContainerInstancesRequest
newListContainerInstancesRequest'  customize = (ListContainerInstancesRequest <<< customize) { "cluster": (NullOrUndefined Nothing), "filter": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype ListContainerInstancesResponse = ListContainerInstancesResponse 
  { "containerInstanceArns" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListContainerInstancesResponse :: Newtype ListContainerInstancesResponse _
derive instance repGenericListContainerInstancesResponse :: Generic ListContainerInstancesResponse _
instance showListContainerInstancesResponse :: Show ListContainerInstancesResponse where show = genericShow
instance decodeListContainerInstancesResponse :: Decode ListContainerInstancesResponse where decode = genericDecode options
instance encodeListContainerInstancesResponse :: Encode ListContainerInstancesResponse where encode = genericEncode options

-- | Constructs ListContainerInstancesResponse from required parameters
newListContainerInstancesResponse :: ListContainerInstancesResponse
newListContainerInstancesResponse  = ListContainerInstancesResponse { "containerInstanceArns": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListContainerInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainerInstancesResponse' :: ( { "containerInstanceArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"containerInstanceArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListContainerInstancesResponse
newListContainerInstancesResponse'  customize = (ListContainerInstancesResponse <<< customize) { "containerInstanceArns": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListServicesRequest = ListServicesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  , "launchType" :: NullOrUndefined (LaunchType)
  }
derive instance newtypeListServicesRequest :: Newtype ListServicesRequest _
derive instance repGenericListServicesRequest :: Generic ListServicesRequest _
instance showListServicesRequest :: Show ListServicesRequest where show = genericShow
instance decodeListServicesRequest :: Decode ListServicesRequest where decode = genericDecode options
instance encodeListServicesRequest :: Encode ListServicesRequest where encode = genericEncode options

-- | Constructs ListServicesRequest from required parameters
newListServicesRequest :: ListServicesRequest
newListServicesRequest  = ListServicesRequest { "cluster": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesRequest' :: ( { "cluster" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "launchType" :: NullOrUndefined (LaunchType) } -> {"cluster" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "launchType" :: NullOrUndefined (LaunchType) } ) -> ListServicesRequest
newListServicesRequest'  customize = (ListServicesRequest <<< customize) { "cluster": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListServicesResponse = ListServicesResponse 
  { "serviceArns" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListServicesResponse :: Newtype ListServicesResponse _
derive instance repGenericListServicesResponse :: Generic ListServicesResponse _
instance showListServicesResponse :: Show ListServicesResponse where show = genericShow
instance decodeListServicesResponse :: Decode ListServicesResponse where decode = genericDecode options
instance encodeListServicesResponse :: Encode ListServicesResponse where encode = genericEncode options

-- | Constructs ListServicesResponse from required parameters
newListServicesResponse :: ListServicesResponse
newListServicesResponse  = ListServicesResponse { "nextToken": (NullOrUndefined Nothing), "serviceArns": (NullOrUndefined Nothing) }

-- | Constructs ListServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesResponse' :: ( { "serviceArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"serviceArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListServicesResponse
newListServicesResponse'  customize = (ListServicesResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "serviceArns": (NullOrUndefined Nothing) }



newtype ListTaskDefinitionFamiliesRequest = ListTaskDefinitionFamiliesRequest 
  { "familyPrefix" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (TaskDefinitionFamilyStatus)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeListTaskDefinitionFamiliesRequest :: Newtype ListTaskDefinitionFamiliesRequest _
derive instance repGenericListTaskDefinitionFamiliesRequest :: Generic ListTaskDefinitionFamiliesRequest _
instance showListTaskDefinitionFamiliesRequest :: Show ListTaskDefinitionFamiliesRequest where show = genericShow
instance decodeListTaskDefinitionFamiliesRequest :: Decode ListTaskDefinitionFamiliesRequest where decode = genericDecode options
instance encodeListTaskDefinitionFamiliesRequest :: Encode ListTaskDefinitionFamiliesRequest where encode = genericEncode options

-- | Constructs ListTaskDefinitionFamiliesRequest from required parameters
newListTaskDefinitionFamiliesRequest :: ListTaskDefinitionFamiliesRequest
newListTaskDefinitionFamiliesRequest  = ListTaskDefinitionFamiliesRequest { "familyPrefix": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs ListTaskDefinitionFamiliesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionFamiliesRequest' :: ( { "familyPrefix" :: NullOrUndefined (String) , "status" :: NullOrUndefined (TaskDefinitionFamilyStatus) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } -> {"familyPrefix" :: NullOrUndefined (String) , "status" :: NullOrUndefined (TaskDefinitionFamilyStatus) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } ) -> ListTaskDefinitionFamiliesRequest
newListTaskDefinitionFamiliesRequest'  customize = (ListTaskDefinitionFamiliesRequest <<< customize) { "familyPrefix": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype ListTaskDefinitionFamiliesResponse = ListTaskDefinitionFamiliesResponse 
  { "families" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListTaskDefinitionFamiliesResponse :: Newtype ListTaskDefinitionFamiliesResponse _
derive instance repGenericListTaskDefinitionFamiliesResponse :: Generic ListTaskDefinitionFamiliesResponse _
instance showListTaskDefinitionFamiliesResponse :: Show ListTaskDefinitionFamiliesResponse where show = genericShow
instance decodeListTaskDefinitionFamiliesResponse :: Decode ListTaskDefinitionFamiliesResponse where decode = genericDecode options
instance encodeListTaskDefinitionFamiliesResponse :: Encode ListTaskDefinitionFamiliesResponse where encode = genericEncode options

-- | Constructs ListTaskDefinitionFamiliesResponse from required parameters
newListTaskDefinitionFamiliesResponse :: ListTaskDefinitionFamiliesResponse
newListTaskDefinitionFamiliesResponse  = ListTaskDefinitionFamiliesResponse { "families": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTaskDefinitionFamiliesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionFamiliesResponse' :: ( { "families" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"families" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListTaskDefinitionFamiliesResponse
newListTaskDefinitionFamiliesResponse'  customize = (ListTaskDefinitionFamiliesResponse <<< customize) { "families": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing) }



newtype ListTaskDefinitionsRequest = ListTaskDefinitionsRequest 
  { "familyPrefix" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (TaskDefinitionStatus)
  , "sort" :: NullOrUndefined (SortOrder)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeListTaskDefinitionsRequest :: Newtype ListTaskDefinitionsRequest _
derive instance repGenericListTaskDefinitionsRequest :: Generic ListTaskDefinitionsRequest _
instance showListTaskDefinitionsRequest :: Show ListTaskDefinitionsRequest where show = genericShow
instance decodeListTaskDefinitionsRequest :: Decode ListTaskDefinitionsRequest where decode = genericDecode options
instance encodeListTaskDefinitionsRequest :: Encode ListTaskDefinitionsRequest where encode = genericEncode options

-- | Constructs ListTaskDefinitionsRequest from required parameters
newListTaskDefinitionsRequest :: ListTaskDefinitionsRequest
newListTaskDefinitionsRequest  = ListTaskDefinitionsRequest { "familyPrefix": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs ListTaskDefinitionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionsRequest' :: ( { "familyPrefix" :: NullOrUndefined (String) , "status" :: NullOrUndefined (TaskDefinitionStatus) , "sort" :: NullOrUndefined (SortOrder) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } -> {"familyPrefix" :: NullOrUndefined (String) , "status" :: NullOrUndefined (TaskDefinitionStatus) , "sort" :: NullOrUndefined (SortOrder) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) } ) -> ListTaskDefinitionsRequest
newListTaskDefinitionsRequest'  customize = (ListTaskDefinitionsRequest <<< customize) { "familyPrefix": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



newtype ListTaskDefinitionsResponse = ListTaskDefinitionsResponse 
  { "taskDefinitionArns" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListTaskDefinitionsResponse :: Newtype ListTaskDefinitionsResponse _
derive instance repGenericListTaskDefinitionsResponse :: Generic ListTaskDefinitionsResponse _
instance showListTaskDefinitionsResponse :: Show ListTaskDefinitionsResponse where show = genericShow
instance decodeListTaskDefinitionsResponse :: Decode ListTaskDefinitionsResponse where decode = genericDecode options
instance encodeListTaskDefinitionsResponse :: Encode ListTaskDefinitionsResponse where encode = genericEncode options

-- | Constructs ListTaskDefinitionsResponse from required parameters
newListTaskDefinitionsResponse :: ListTaskDefinitionsResponse
newListTaskDefinitionsResponse  = ListTaskDefinitionsResponse { "nextToken": (NullOrUndefined Nothing), "taskDefinitionArns": (NullOrUndefined Nothing) }

-- | Constructs ListTaskDefinitionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTaskDefinitionsResponse' :: ( { "taskDefinitionArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"taskDefinitionArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListTaskDefinitionsResponse
newListTaskDefinitionsResponse'  customize = (ListTaskDefinitionsResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "taskDefinitionArns": (NullOrUndefined Nothing) }



newtype ListTasksRequest = ListTasksRequest 
  { "cluster" :: NullOrUndefined (String)
  , "containerInstance" :: NullOrUndefined (String)
  , "family" :: NullOrUndefined (String)
  , "nextToken" :: NullOrUndefined (String)
  , "maxResults" :: NullOrUndefined (BoxedInteger)
  , "startedBy" :: NullOrUndefined (String)
  , "serviceName" :: NullOrUndefined (String)
  , "desiredStatus" :: NullOrUndefined (DesiredStatus)
  , "launchType" :: NullOrUndefined (LaunchType)
  }
derive instance newtypeListTasksRequest :: Newtype ListTasksRequest _
derive instance repGenericListTasksRequest :: Generic ListTasksRequest _
instance showListTasksRequest :: Show ListTasksRequest where show = genericShow
instance decodeListTasksRequest :: Decode ListTasksRequest where decode = genericDecode options
instance encodeListTasksRequest :: Encode ListTasksRequest where encode = genericEncode options

-- | Constructs ListTasksRequest from required parameters
newListTasksRequest :: ListTasksRequest
newListTasksRequest  = ListTasksRequest { "cluster": (NullOrUndefined Nothing), "containerInstance": (NullOrUndefined Nothing), "desiredStatus": (NullOrUndefined Nothing), "family": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "serviceName": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }

-- | Constructs ListTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTasksRequest' :: ( { "cluster" :: NullOrUndefined (String) , "containerInstance" :: NullOrUndefined (String) , "family" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "startedBy" :: NullOrUndefined (String) , "serviceName" :: NullOrUndefined (String) , "desiredStatus" :: NullOrUndefined (DesiredStatus) , "launchType" :: NullOrUndefined (LaunchType) } -> {"cluster" :: NullOrUndefined (String) , "containerInstance" :: NullOrUndefined (String) , "family" :: NullOrUndefined (String) , "nextToken" :: NullOrUndefined (String) , "maxResults" :: NullOrUndefined (BoxedInteger) , "startedBy" :: NullOrUndefined (String) , "serviceName" :: NullOrUndefined (String) , "desiredStatus" :: NullOrUndefined (DesiredStatus) , "launchType" :: NullOrUndefined (LaunchType) } ) -> ListTasksRequest
newListTasksRequest'  customize = (ListTasksRequest <<< customize) { "cluster": (NullOrUndefined Nothing), "containerInstance": (NullOrUndefined Nothing), "desiredStatus": (NullOrUndefined Nothing), "family": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "maxResults": (NullOrUndefined Nothing), "nextToken": (NullOrUndefined Nothing), "serviceName": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }



newtype ListTasksResponse = ListTasksResponse 
  { "taskArns" :: NullOrUndefined (StringList)
  , "nextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListTasksResponse :: Newtype ListTasksResponse _
derive instance repGenericListTasksResponse :: Generic ListTasksResponse _
instance showListTasksResponse :: Show ListTasksResponse where show = genericShow
instance decodeListTasksResponse :: Decode ListTasksResponse where decode = genericDecode options
instance encodeListTasksResponse :: Encode ListTasksResponse where encode = genericEncode options

-- | Constructs ListTasksResponse from required parameters
newListTasksResponse :: ListTasksResponse
newListTasksResponse  = ListTasksResponse { "nextToken": (NullOrUndefined Nothing), "taskArns": (NullOrUndefined Nothing) }

-- | Constructs ListTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTasksResponse' :: ( { "taskArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } -> {"taskArns" :: NullOrUndefined (StringList) , "nextToken" :: NullOrUndefined (String) } ) -> ListTasksResponse
newListTasksResponse'  customize = (ListTasksResponse <<< customize) { "nextToken": (NullOrUndefined Nothing), "taskArns": (NullOrUndefined Nothing) }



-- | <p>Details on a load balancer that is used with a service.</p>
newtype LoadBalancer = LoadBalancer 
  { "targetGroupArn" :: NullOrUndefined (String)
  , "loadBalancerName" :: NullOrUndefined (String)
  , "containerName" :: NullOrUndefined (String)
  , "containerPort" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive instance repGenericLoadBalancer :: Generic LoadBalancer _
instance showLoadBalancer :: Show LoadBalancer where show = genericShow
instance decodeLoadBalancer :: Decode LoadBalancer where decode = genericDecode options
instance encodeLoadBalancer :: Encode LoadBalancer where encode = genericEncode options

-- | Constructs LoadBalancer from required parameters
newLoadBalancer :: LoadBalancer
newLoadBalancer  = LoadBalancer { "containerName": (NullOrUndefined Nothing), "containerPort": (NullOrUndefined Nothing), "loadBalancerName": (NullOrUndefined Nothing), "targetGroupArn": (NullOrUndefined Nothing) }

-- | Constructs LoadBalancer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLoadBalancer' :: ( { "targetGroupArn" :: NullOrUndefined (String) , "loadBalancerName" :: NullOrUndefined (String) , "containerName" :: NullOrUndefined (String) , "containerPort" :: NullOrUndefined (BoxedInteger) } -> {"targetGroupArn" :: NullOrUndefined (String) , "loadBalancerName" :: NullOrUndefined (String) , "containerName" :: NullOrUndefined (String) , "containerPort" :: NullOrUndefined (BoxedInteger) } ) -> LoadBalancer
newLoadBalancer'  customize = (LoadBalancer <<< customize) { "containerName": (NullOrUndefined Nothing), "containerPort": (NullOrUndefined Nothing), "loadBalancerName": (NullOrUndefined Nothing), "targetGroupArn": (NullOrUndefined Nothing) }



newtype LoadBalancers = LoadBalancers (Array LoadBalancer)
derive instance newtypeLoadBalancers :: Newtype LoadBalancers _
derive instance repGenericLoadBalancers :: Generic LoadBalancers _
instance showLoadBalancers :: Show LoadBalancers where show = genericShow
instance decodeLoadBalancers :: Decode LoadBalancers where decode = genericDecode options
instance encodeLoadBalancers :: Encode LoadBalancers where encode = genericEncode options



-- | <p>Log configuration options to send to a custom log driver for the container.</p>
newtype LogConfiguration = LogConfiguration 
  { "logDriver" :: (LogDriver)
  , "options" :: NullOrUndefined (LogConfigurationOptionsMap)
  }
derive instance newtypeLogConfiguration :: Newtype LogConfiguration _
derive instance repGenericLogConfiguration :: Generic LogConfiguration _
instance showLogConfiguration :: Show LogConfiguration where show = genericShow
instance decodeLogConfiguration :: Decode LogConfiguration where decode = genericDecode options
instance encodeLogConfiguration :: Encode LogConfiguration where encode = genericEncode options

-- | Constructs LogConfiguration from required parameters
newLogConfiguration :: LogDriver -> LogConfiguration
newLogConfiguration _logDriver = LogConfiguration { "logDriver": _logDriver, "options": (NullOrUndefined Nothing) }

-- | Constructs LogConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogConfiguration' :: LogDriver -> ( { "logDriver" :: (LogDriver) , "options" :: NullOrUndefined (LogConfigurationOptionsMap) } -> {"logDriver" :: (LogDriver) , "options" :: NullOrUndefined (LogConfigurationOptionsMap) } ) -> LogConfiguration
newLogConfiguration' _logDriver customize = (LogConfiguration <<< customize) { "logDriver": _logDriver, "options": (NullOrUndefined Nothing) }



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
  { "sourceVolume" :: NullOrUndefined (String)
  , "containerPath" :: NullOrUndefined (String)
  , "readOnly" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeMountPoint :: Newtype MountPoint _
derive instance repGenericMountPoint :: Generic MountPoint _
instance showMountPoint :: Show MountPoint where show = genericShow
instance decodeMountPoint :: Decode MountPoint where decode = genericDecode options
instance encodeMountPoint :: Encode MountPoint where encode = genericEncode options

-- | Constructs MountPoint from required parameters
newMountPoint :: MountPoint
newMountPoint  = MountPoint { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }

-- | Constructs MountPoint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMountPoint' :: ( { "sourceVolume" :: NullOrUndefined (String) , "containerPath" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (BoxedBoolean) } -> {"sourceVolume" :: NullOrUndefined (String) , "containerPath" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (BoxedBoolean) } ) -> MountPoint
newMountPoint'  customize = (MountPoint <<< customize) { "containerPath": (NullOrUndefined Nothing), "readOnly": (NullOrUndefined Nothing), "sourceVolume": (NullOrUndefined Nothing) }



newtype MountPointList = MountPointList (Array MountPoint)
derive instance newtypeMountPointList :: Newtype MountPointList _
derive instance repGenericMountPointList :: Generic MountPointList _
instance showMountPointList :: Show MountPointList where show = genericShow
instance decodeMountPointList :: Decode MountPointList where decode = genericDecode options
instance encodeMountPointList :: Encode MountPointList where encode = genericEncode options



-- | <p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
newtype NetworkBinding = NetworkBinding 
  { "bindIP" :: NullOrUndefined (String)
  , "containerPort" :: NullOrUndefined (BoxedInteger)
  , "hostPort" :: NullOrUndefined (BoxedInteger)
  , "protocol" :: NullOrUndefined (TransportProtocol)
  }
derive instance newtypeNetworkBinding :: Newtype NetworkBinding _
derive instance repGenericNetworkBinding :: Generic NetworkBinding _
instance showNetworkBinding :: Show NetworkBinding where show = genericShow
instance decodeNetworkBinding :: Decode NetworkBinding where decode = genericDecode options
instance encodeNetworkBinding :: Encode NetworkBinding where encode = genericEncode options

-- | Constructs NetworkBinding from required parameters
newNetworkBinding :: NetworkBinding
newNetworkBinding  = NetworkBinding { "bindIP": (NullOrUndefined Nothing), "containerPort": (NullOrUndefined Nothing), "hostPort": (NullOrUndefined Nothing), "protocol": (NullOrUndefined Nothing) }

-- | Constructs NetworkBinding's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkBinding' :: ( { "bindIP" :: NullOrUndefined (String) , "containerPort" :: NullOrUndefined (BoxedInteger) , "hostPort" :: NullOrUndefined (BoxedInteger) , "protocol" :: NullOrUndefined (TransportProtocol) } -> {"bindIP" :: NullOrUndefined (String) , "containerPort" :: NullOrUndefined (BoxedInteger) , "hostPort" :: NullOrUndefined (BoxedInteger) , "protocol" :: NullOrUndefined (TransportProtocol) } ) -> NetworkBinding
newNetworkBinding'  customize = (NetworkBinding <<< customize) { "bindIP": (NullOrUndefined Nothing), "containerPort": (NullOrUndefined Nothing), "hostPort": (NullOrUndefined Nothing), "protocol": (NullOrUndefined Nothing) }



newtype NetworkBindings = NetworkBindings (Array NetworkBinding)
derive instance newtypeNetworkBindings :: Newtype NetworkBindings _
derive instance repGenericNetworkBindings :: Generic NetworkBindings _
instance showNetworkBindings :: Show NetworkBindings where show = genericShow
instance decodeNetworkBindings :: Decode NetworkBindings where decode = genericDecode options
instance encodeNetworkBindings :: Encode NetworkBindings where encode = genericEncode options



-- | <p>An object representing the network configuration for a task or service.</p>
newtype NetworkConfiguration = NetworkConfiguration 
  { "awsvpcConfiguration" :: NullOrUndefined (AwsVpcConfiguration)
  }
derive instance newtypeNetworkConfiguration :: Newtype NetworkConfiguration _
derive instance repGenericNetworkConfiguration :: Generic NetworkConfiguration _
instance showNetworkConfiguration :: Show NetworkConfiguration where show = genericShow
instance decodeNetworkConfiguration :: Decode NetworkConfiguration where decode = genericDecode options
instance encodeNetworkConfiguration :: Encode NetworkConfiguration where encode = genericEncode options

-- | Constructs NetworkConfiguration from required parameters
newNetworkConfiguration :: NetworkConfiguration
newNetworkConfiguration  = NetworkConfiguration { "awsvpcConfiguration": (NullOrUndefined Nothing) }

-- | Constructs NetworkConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkConfiguration' :: ( { "awsvpcConfiguration" :: NullOrUndefined (AwsVpcConfiguration) } -> {"awsvpcConfiguration" :: NullOrUndefined (AwsVpcConfiguration) } ) -> NetworkConfiguration
newNetworkConfiguration'  customize = (NetworkConfiguration <<< customize) { "awsvpcConfiguration": (NullOrUndefined Nothing) }



-- | <p>An object representing the Elastic Network Interface for tasks that use the <code>awsvpc</code> network mode.</p>
newtype NetworkInterface = NetworkInterface 
  { "attachmentId" :: NullOrUndefined (String)
  , "privateIpv4Address" :: NullOrUndefined (String)
  , "ipv6Address" :: NullOrUndefined (String)
  }
derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive instance repGenericNetworkInterface :: Generic NetworkInterface _
instance showNetworkInterface :: Show NetworkInterface where show = genericShow
instance decodeNetworkInterface :: Decode NetworkInterface where decode = genericDecode options
instance encodeNetworkInterface :: Encode NetworkInterface where encode = genericEncode options

-- | Constructs NetworkInterface from required parameters
newNetworkInterface :: NetworkInterface
newNetworkInterface  = NetworkInterface { "attachmentId": (NullOrUndefined Nothing), "ipv6Address": (NullOrUndefined Nothing), "privateIpv4Address": (NullOrUndefined Nothing) }

-- | Constructs NetworkInterface's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkInterface' :: ( { "attachmentId" :: NullOrUndefined (String) , "privateIpv4Address" :: NullOrUndefined (String) , "ipv6Address" :: NullOrUndefined (String) } -> {"attachmentId" :: NullOrUndefined (String) , "privateIpv4Address" :: NullOrUndefined (String) , "ipv6Address" :: NullOrUndefined (String) } ) -> NetworkInterface
newNetworkInterface'  customize = (NetworkInterface <<< customize) { "attachmentId": (NullOrUndefined Nothing), "ipv6Address": (NullOrUndefined Nothing), "privateIpv4Address": (NullOrUndefined Nothing) }



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
  { "type" :: NullOrUndefined (PlacementConstraintType)
  , "expression" :: NullOrUndefined (String)
  }
derive instance newtypePlacementConstraint :: Newtype PlacementConstraint _
derive instance repGenericPlacementConstraint :: Generic PlacementConstraint _
instance showPlacementConstraint :: Show PlacementConstraint where show = genericShow
instance decodePlacementConstraint :: Decode PlacementConstraint where decode = genericDecode options
instance encodePlacementConstraint :: Encode PlacementConstraint where encode = genericEncode options

-- | Constructs PlacementConstraint from required parameters
newPlacementConstraint :: PlacementConstraint
newPlacementConstraint  = PlacementConstraint { "expression": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs PlacementConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementConstraint' :: ( { "type" :: NullOrUndefined (PlacementConstraintType) , "expression" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (PlacementConstraintType) , "expression" :: NullOrUndefined (String) } ) -> PlacementConstraint
newPlacementConstraint'  customize = (PlacementConstraint <<< customize) { "expression": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  { "type" :: NullOrUndefined (PlacementStrategyType)
  , "field" :: NullOrUndefined (String)
  }
derive instance newtypePlacementStrategy :: Newtype PlacementStrategy _
derive instance repGenericPlacementStrategy :: Generic PlacementStrategy _
instance showPlacementStrategy :: Show PlacementStrategy where show = genericShow
instance decodePlacementStrategy :: Decode PlacementStrategy where decode = genericDecode options
instance encodePlacementStrategy :: Encode PlacementStrategy where encode = genericEncode options

-- | Constructs PlacementStrategy from required parameters
newPlacementStrategy :: PlacementStrategy
newPlacementStrategy  = PlacementStrategy { "field": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs PlacementStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementStrategy' :: ( { "type" :: NullOrUndefined (PlacementStrategyType) , "field" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (PlacementStrategyType) , "field" :: NullOrUndefined (String) } ) -> PlacementStrategy
newPlacementStrategy'  customize = (PlacementStrategy <<< customize) { "field": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  { "containerPort" :: NullOrUndefined (BoxedInteger)
  , "hostPort" :: NullOrUndefined (BoxedInteger)
  , "protocol" :: NullOrUndefined (TransportProtocol)
  }
derive instance newtypePortMapping :: Newtype PortMapping _
derive instance repGenericPortMapping :: Generic PortMapping _
instance showPortMapping :: Show PortMapping where show = genericShow
instance decodePortMapping :: Decode PortMapping where decode = genericDecode options
instance encodePortMapping :: Encode PortMapping where encode = genericEncode options

-- | Constructs PortMapping from required parameters
newPortMapping :: PortMapping
newPortMapping  = PortMapping { "containerPort": (NullOrUndefined Nothing), "hostPort": (NullOrUndefined Nothing), "protocol": (NullOrUndefined Nothing) }

-- | Constructs PortMapping's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortMapping' :: ( { "containerPort" :: NullOrUndefined (BoxedInteger) , "hostPort" :: NullOrUndefined (BoxedInteger) , "protocol" :: NullOrUndefined (TransportProtocol) } -> {"containerPort" :: NullOrUndefined (BoxedInteger) , "hostPort" :: NullOrUndefined (BoxedInteger) , "protocol" :: NullOrUndefined (TransportProtocol) } ) -> PortMapping
newPortMapping'  customize = (PortMapping <<< customize) { "containerPort": (NullOrUndefined Nothing), "hostPort": (NullOrUndefined Nothing), "protocol": (NullOrUndefined Nothing) }



newtype PortMappingList = PortMappingList (Array PortMapping)
derive instance newtypePortMappingList :: Newtype PortMappingList _
derive instance repGenericPortMappingList :: Generic PortMappingList _
instance showPortMappingList :: Show PortMappingList where show = genericShow
instance decodePortMappingList :: Decode PortMappingList where decode = genericDecode options
instance encodePortMappingList :: Encode PortMappingList where encode = genericEncode options



newtype PutAttributesRequest = PutAttributesRequest 
  { "cluster" :: NullOrUndefined (String)
  , "attributes" :: (Attributes)
  }
derive instance newtypePutAttributesRequest :: Newtype PutAttributesRequest _
derive instance repGenericPutAttributesRequest :: Generic PutAttributesRequest _
instance showPutAttributesRequest :: Show PutAttributesRequest where show = genericShow
instance decodePutAttributesRequest :: Decode PutAttributesRequest where decode = genericDecode options
instance encodePutAttributesRequest :: Encode PutAttributesRequest where encode = genericEncode options

-- | Constructs PutAttributesRequest from required parameters
newPutAttributesRequest :: Attributes -> PutAttributesRequest
newPutAttributesRequest _attributes = PutAttributesRequest { "attributes": _attributes, "cluster": (NullOrUndefined Nothing) }

-- | Constructs PutAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAttributesRequest' :: Attributes -> ( { "cluster" :: NullOrUndefined (String) , "attributes" :: (Attributes) } -> {"cluster" :: NullOrUndefined (String) , "attributes" :: (Attributes) } ) -> PutAttributesRequest
newPutAttributesRequest' _attributes customize = (PutAttributesRequest <<< customize) { "attributes": _attributes, "cluster": (NullOrUndefined Nothing) }



newtype PutAttributesResponse = PutAttributesResponse 
  { "attributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypePutAttributesResponse :: Newtype PutAttributesResponse _
derive instance repGenericPutAttributesResponse :: Generic PutAttributesResponse _
instance showPutAttributesResponse :: Show PutAttributesResponse where show = genericShow
instance decodePutAttributesResponse :: Decode PutAttributesResponse where decode = genericDecode options
instance encodePutAttributesResponse :: Encode PutAttributesResponse where encode = genericEncode options

-- | Constructs PutAttributesResponse from required parameters
newPutAttributesResponse :: PutAttributesResponse
newPutAttributesResponse  = PutAttributesResponse { "attributes": (NullOrUndefined Nothing) }

-- | Constructs PutAttributesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAttributesResponse' :: ( { "attributes" :: NullOrUndefined (Attributes) } -> {"attributes" :: NullOrUndefined (Attributes) } ) -> PutAttributesResponse
newPutAttributesResponse'  customize = (PutAttributesResponse <<< customize) { "attributes": (NullOrUndefined Nothing) }



newtype RegisterContainerInstanceRequest = RegisterContainerInstanceRequest 
  { "cluster" :: NullOrUndefined (String)
  , "instanceIdentityDocument" :: NullOrUndefined (String)
  , "instanceIdentityDocumentSignature" :: NullOrUndefined (String)
  , "totalResources" :: NullOrUndefined (Resources)
  , "versionInfo" :: NullOrUndefined (VersionInfo)
  , "containerInstanceArn" :: NullOrUndefined (String)
  , "attributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypeRegisterContainerInstanceRequest :: Newtype RegisterContainerInstanceRequest _
derive instance repGenericRegisterContainerInstanceRequest :: Generic RegisterContainerInstanceRequest _
instance showRegisterContainerInstanceRequest :: Show RegisterContainerInstanceRequest where show = genericShow
instance decodeRegisterContainerInstanceRequest :: Decode RegisterContainerInstanceRequest where decode = genericDecode options
instance encodeRegisterContainerInstanceRequest :: Encode RegisterContainerInstanceRequest where encode = genericEncode options

-- | Constructs RegisterContainerInstanceRequest from required parameters
newRegisterContainerInstanceRequest :: RegisterContainerInstanceRequest
newRegisterContainerInstanceRequest  = RegisterContainerInstanceRequest { "attributes": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "instanceIdentityDocument": (NullOrUndefined Nothing), "instanceIdentityDocumentSignature": (NullOrUndefined Nothing), "totalResources": (NullOrUndefined Nothing), "versionInfo": (NullOrUndefined Nothing) }

-- | Constructs RegisterContainerInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterContainerInstanceRequest' :: ( { "cluster" :: NullOrUndefined (String) , "instanceIdentityDocument" :: NullOrUndefined (String) , "instanceIdentityDocumentSignature" :: NullOrUndefined (String) , "totalResources" :: NullOrUndefined (Resources) , "versionInfo" :: NullOrUndefined (VersionInfo) , "containerInstanceArn" :: NullOrUndefined (String) , "attributes" :: NullOrUndefined (Attributes) } -> {"cluster" :: NullOrUndefined (String) , "instanceIdentityDocument" :: NullOrUndefined (String) , "instanceIdentityDocumentSignature" :: NullOrUndefined (String) , "totalResources" :: NullOrUndefined (Resources) , "versionInfo" :: NullOrUndefined (VersionInfo) , "containerInstanceArn" :: NullOrUndefined (String) , "attributes" :: NullOrUndefined (Attributes) } ) -> RegisterContainerInstanceRequest
newRegisterContainerInstanceRequest'  customize = (RegisterContainerInstanceRequest <<< customize) { "attributes": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "instanceIdentityDocument": (NullOrUndefined Nothing), "instanceIdentityDocumentSignature": (NullOrUndefined Nothing), "totalResources": (NullOrUndefined Nothing), "versionInfo": (NullOrUndefined Nothing) }



newtype RegisterContainerInstanceResponse = RegisterContainerInstanceResponse 
  { "containerInstance" :: NullOrUndefined (ContainerInstance)
  }
derive instance newtypeRegisterContainerInstanceResponse :: Newtype RegisterContainerInstanceResponse _
derive instance repGenericRegisterContainerInstanceResponse :: Generic RegisterContainerInstanceResponse _
instance showRegisterContainerInstanceResponse :: Show RegisterContainerInstanceResponse where show = genericShow
instance decodeRegisterContainerInstanceResponse :: Decode RegisterContainerInstanceResponse where decode = genericDecode options
instance encodeRegisterContainerInstanceResponse :: Encode RegisterContainerInstanceResponse where encode = genericEncode options

-- | Constructs RegisterContainerInstanceResponse from required parameters
newRegisterContainerInstanceResponse :: RegisterContainerInstanceResponse
newRegisterContainerInstanceResponse  = RegisterContainerInstanceResponse { "containerInstance": (NullOrUndefined Nothing) }

-- | Constructs RegisterContainerInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterContainerInstanceResponse' :: ( { "containerInstance" :: NullOrUndefined (ContainerInstance) } -> {"containerInstance" :: NullOrUndefined (ContainerInstance) } ) -> RegisterContainerInstanceResponse
newRegisterContainerInstanceResponse'  customize = (RegisterContainerInstanceResponse <<< customize) { "containerInstance": (NullOrUndefined Nothing) }



newtype RegisterTaskDefinitionRequest = RegisterTaskDefinitionRequest 
  { "family" :: (String)
  , "taskRoleArn" :: NullOrUndefined (String)
  , "executionRoleArn" :: NullOrUndefined (String)
  , "networkMode" :: NullOrUndefined (NetworkMode)
  , "containerDefinitions" :: (ContainerDefinitions)
  , "volumes" :: NullOrUndefined (VolumeList)
  , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints)
  , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList)
  , "cpu" :: NullOrUndefined (String)
  , "memory" :: NullOrUndefined (String)
  }
derive instance newtypeRegisterTaskDefinitionRequest :: Newtype RegisterTaskDefinitionRequest _
derive instance repGenericRegisterTaskDefinitionRequest :: Generic RegisterTaskDefinitionRequest _
instance showRegisterTaskDefinitionRequest :: Show RegisterTaskDefinitionRequest where show = genericShow
instance decodeRegisterTaskDefinitionRequest :: Decode RegisterTaskDefinitionRequest where decode = genericDecode options
instance encodeRegisterTaskDefinitionRequest :: Encode RegisterTaskDefinitionRequest where encode = genericEncode options

-- | Constructs RegisterTaskDefinitionRequest from required parameters
newRegisterTaskDefinitionRequest :: ContainerDefinitions -> String -> RegisterTaskDefinitionRequest
newRegisterTaskDefinitionRequest _containerDefinitions _family = RegisterTaskDefinitionRequest { "containerDefinitions": _containerDefinitions, "family": _family, "cpu": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "networkMode": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "requiresCompatibilities": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs RegisterTaskDefinitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterTaskDefinitionRequest' :: ContainerDefinitions -> String -> ( { "family" :: (String) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) , "networkMode" :: NullOrUndefined (NetworkMode) , "containerDefinitions" :: (ContainerDefinitions) , "volumes" :: NullOrUndefined (VolumeList) , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints) , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) } -> {"family" :: (String) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) , "networkMode" :: NullOrUndefined (NetworkMode) , "containerDefinitions" :: (ContainerDefinitions) , "volumes" :: NullOrUndefined (VolumeList) , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints) , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) } ) -> RegisterTaskDefinitionRequest
newRegisterTaskDefinitionRequest' _containerDefinitions _family customize = (RegisterTaskDefinitionRequest <<< customize) { "containerDefinitions": _containerDefinitions, "family": _family, "cpu": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "networkMode": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "requiresCompatibilities": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



newtype RegisterTaskDefinitionResponse = RegisterTaskDefinitionResponse 
  { "taskDefinition" :: NullOrUndefined (TaskDefinition)
  }
derive instance newtypeRegisterTaskDefinitionResponse :: Newtype RegisterTaskDefinitionResponse _
derive instance repGenericRegisterTaskDefinitionResponse :: Generic RegisterTaskDefinitionResponse _
instance showRegisterTaskDefinitionResponse :: Show RegisterTaskDefinitionResponse where show = genericShow
instance decodeRegisterTaskDefinitionResponse :: Decode RegisterTaskDefinitionResponse where decode = genericDecode options
instance encodeRegisterTaskDefinitionResponse :: Encode RegisterTaskDefinitionResponse where encode = genericEncode options

-- | Constructs RegisterTaskDefinitionResponse from required parameters
newRegisterTaskDefinitionResponse :: RegisterTaskDefinitionResponse
newRegisterTaskDefinitionResponse  = RegisterTaskDefinitionResponse { "taskDefinition": (NullOrUndefined Nothing) }

-- | Constructs RegisterTaskDefinitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterTaskDefinitionResponse' :: ( { "taskDefinition" :: NullOrUndefined (TaskDefinition) } -> {"taskDefinition" :: NullOrUndefined (TaskDefinition) } ) -> RegisterTaskDefinitionResponse
newRegisterTaskDefinitionResponse'  customize = (RegisterTaskDefinitionResponse <<< customize) { "taskDefinition": (NullOrUndefined Nothing) }



newtype RequiresAttributes = RequiresAttributes (Array Attribute)
derive instance newtypeRequiresAttributes :: Newtype RequiresAttributes _
derive instance repGenericRequiresAttributes :: Generic RequiresAttributes _
instance showRequiresAttributes :: Show RequiresAttributes where show = genericShow
instance decodeRequiresAttributes :: Decode RequiresAttributes where decode = genericDecode options
instance encodeRequiresAttributes :: Encode RequiresAttributes where encode = genericEncode options



-- | <p>Describes the resources available for a container instance.</p>
newtype Resource = Resource 
  { "name" :: NullOrUndefined (String)
  , "type" :: NullOrUndefined (String)
  , "doubleValue" :: NullOrUndefined (Number)
  , "longValue" :: NullOrUndefined (Number)
  , "integerValue" :: NullOrUndefined (Int)
  , "stringSetValue" :: NullOrUndefined (StringList)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "doubleValue": (NullOrUndefined Nothing), "integerValue": (NullOrUndefined Nothing), "longValue": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "stringSetValue": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "name" :: NullOrUndefined (String) , "type" :: NullOrUndefined (String) , "doubleValue" :: NullOrUndefined (Number) , "longValue" :: NullOrUndefined (Number) , "integerValue" :: NullOrUndefined (Int) , "stringSetValue" :: NullOrUndefined (StringList) } -> {"name" :: NullOrUndefined (String) , "type" :: NullOrUndefined (String) , "doubleValue" :: NullOrUndefined (Number) , "longValue" :: NullOrUndefined (Number) , "integerValue" :: NullOrUndefined (Int) , "stringSetValue" :: NullOrUndefined (StringList) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "doubleValue": (NullOrUndefined Nothing), "integerValue": (NullOrUndefined Nothing), "longValue": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing), "stringSetValue": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



newtype Resources = Resources (Array Resource)
derive instance newtypeResources :: Newtype Resources _
derive instance repGenericResources :: Generic Resources _
instance showResources :: Show Resources where show = genericShow
instance decodeResources :: Decode Resources where decode = genericDecode options
instance encodeResources :: Encode Resources where encode = genericEncode options



newtype RunTaskRequest = RunTaskRequest 
  { "cluster" :: NullOrUndefined (String)
  , "taskDefinition" :: (String)
  , "overrides" :: NullOrUndefined (TaskOverride)
  , "count" :: NullOrUndefined (BoxedInteger)
  , "startedBy" :: NullOrUndefined (String)
  , "group" :: NullOrUndefined (String)
  , "placementConstraints" :: NullOrUndefined (PlacementConstraints)
  , "placementStrategy" :: NullOrUndefined (PlacementStrategies)
  , "launchType" :: NullOrUndefined (LaunchType)
  , "platformVersion" :: NullOrUndefined (String)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  }
derive instance newtypeRunTaskRequest :: Newtype RunTaskRequest _
derive instance repGenericRunTaskRequest :: Generic RunTaskRequest _
instance showRunTaskRequest :: Show RunTaskRequest where show = genericShow
instance decodeRunTaskRequest :: Decode RunTaskRequest where decode = genericDecode options
instance encodeRunTaskRequest :: Encode RunTaskRequest where encode = genericEncode options

-- | Constructs RunTaskRequest from required parameters
newRunTaskRequest :: String -> RunTaskRequest
newRunTaskRequest _taskDefinition = RunTaskRequest { "taskDefinition": _taskDefinition, "cluster": (NullOrUndefined Nothing), "count": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }

-- | Constructs RunTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunTaskRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "taskDefinition" :: (String) , "overrides" :: NullOrUndefined (TaskOverride) , "count" :: NullOrUndefined (BoxedInteger) , "startedBy" :: NullOrUndefined (String) , "group" :: NullOrUndefined (String) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } -> {"cluster" :: NullOrUndefined (String) , "taskDefinition" :: (String) , "overrides" :: NullOrUndefined (TaskOverride) , "count" :: NullOrUndefined (BoxedInteger) , "startedBy" :: NullOrUndefined (String) , "group" :: NullOrUndefined (String) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } ) -> RunTaskRequest
newRunTaskRequest' _taskDefinition customize = (RunTaskRequest <<< customize) { "taskDefinition": _taskDefinition, "cluster": (NullOrUndefined Nothing), "count": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }



newtype RunTaskResponse = RunTaskResponse 
  { "tasks" :: NullOrUndefined (Tasks)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeRunTaskResponse :: Newtype RunTaskResponse _
derive instance repGenericRunTaskResponse :: Generic RunTaskResponse _
instance showRunTaskResponse :: Show RunTaskResponse where show = genericShow
instance decodeRunTaskResponse :: Decode RunTaskResponse where decode = genericDecode options
instance encodeRunTaskResponse :: Encode RunTaskResponse where encode = genericEncode options

-- | Constructs RunTaskResponse from required parameters
newRunTaskResponse :: RunTaskResponse
newRunTaskResponse  = RunTaskResponse { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }

-- | Constructs RunTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunTaskResponse' :: ( { "tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } -> {"tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } ) -> RunTaskResponse
newRunTaskResponse'  customize = (RunTaskResponse <<< customize) { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }



-- | <p>These errors are usually caused by a server issue.</p>
newtype ServerException = ServerException 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeServerException :: Newtype ServerException _
derive instance repGenericServerException :: Generic ServerException _
instance showServerException :: Show ServerException where show = genericShow
instance decodeServerException :: Decode ServerException where decode = genericDecode options
instance encodeServerException :: Encode ServerException where encode = genericEncode options

-- | Constructs ServerException from required parameters
newServerException :: ServerException
newServerException  = ServerException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> ServerException
newServerException'  customize = (ServerException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Details on a service within a cluster</p>
newtype Service = Service 
  { "serviceArn" :: NullOrUndefined (String)
  , "serviceName" :: NullOrUndefined (String)
  , "clusterArn" :: NullOrUndefined (String)
  , "loadBalancers" :: NullOrUndefined (LoadBalancers)
  , "status" :: NullOrUndefined (String)
  , "desiredCount" :: NullOrUndefined (Int)
  , "runningCount" :: NullOrUndefined (Int)
  , "pendingCount" :: NullOrUndefined (Int)
  , "launchType" :: NullOrUndefined (LaunchType)
  , "platformVersion" :: NullOrUndefined (String)
  , "taskDefinition" :: NullOrUndefined (String)
  , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration)
  , "deployments" :: NullOrUndefined (Deployments)
  , "roleArn" :: NullOrUndefined (String)
  , "events" :: NullOrUndefined (ServiceEvents)
  , "createdAt" :: NullOrUndefined (Types.Timestamp)
  , "placementConstraints" :: NullOrUndefined (PlacementConstraints)
  , "placementStrategy" :: NullOrUndefined (PlacementStrategies)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "clusterArn": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "deployments": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "events": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "loadBalancers": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "pendingCount": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing), "runningCount": (NullOrUndefined Nothing), "serviceArn": (NullOrUndefined Nothing), "serviceName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing) }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "serviceArn" :: NullOrUndefined (String) , "serviceName" :: NullOrUndefined (String) , "clusterArn" :: NullOrUndefined (String) , "loadBalancers" :: NullOrUndefined (LoadBalancers) , "status" :: NullOrUndefined (String) , "desiredCount" :: NullOrUndefined (Int) , "runningCount" :: NullOrUndefined (Int) , "pendingCount" :: NullOrUndefined (Int) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "taskDefinition" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "deployments" :: NullOrUndefined (Deployments) , "roleArn" :: NullOrUndefined (String) , "events" :: NullOrUndefined (ServiceEvents) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } -> {"serviceArn" :: NullOrUndefined (String) , "serviceName" :: NullOrUndefined (String) , "clusterArn" :: NullOrUndefined (String) , "loadBalancers" :: NullOrUndefined (LoadBalancers) , "status" :: NullOrUndefined (String) , "desiredCount" :: NullOrUndefined (Int) , "runningCount" :: NullOrUndefined (Int) , "pendingCount" :: NullOrUndefined (Int) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "taskDefinition" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "deployments" :: NullOrUndefined (Deployments) , "roleArn" :: NullOrUndefined (String) , "events" :: NullOrUndefined (ServiceEvents) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "placementConstraints" :: NullOrUndefined (PlacementConstraints) , "placementStrategy" :: NullOrUndefined (PlacementStrategies) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } ) -> Service
newService'  customize = (Service <<< customize) { "clusterArn": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "deployments": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "events": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "loadBalancers": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "pendingCount": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "placementStrategy": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "roleArn": (NullOrUndefined Nothing), "runningCount": (NullOrUndefined Nothing), "serviceArn": (NullOrUndefined Nothing), "serviceName": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing) }



-- | <p>Details on an event associated with a service.</p>
newtype ServiceEvent = ServiceEvent 
  { "id" :: NullOrUndefined (String)
  , "createdAt" :: NullOrUndefined (Types.Timestamp)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeServiceEvent :: Newtype ServiceEvent _
derive instance repGenericServiceEvent :: Generic ServiceEvent _
instance showServiceEvent :: Show ServiceEvent where show = genericShow
instance decodeServiceEvent :: Decode ServiceEvent where decode = genericDecode options
instance encodeServiceEvent :: Encode ServiceEvent where encode = genericEncode options

-- | Constructs ServiceEvent from required parameters
newServiceEvent :: ServiceEvent
newServiceEvent  = ServiceEvent { "createdAt": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs ServiceEvent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceEvent' :: ( { "id" :: NullOrUndefined (String) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "message" :: NullOrUndefined (String) } -> {"id" :: NullOrUndefined (String) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "message" :: NullOrUndefined (String) } ) -> ServiceEvent
newServiceEvent'  customize = (ServiceEvent <<< customize) { "createdAt": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



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
  { "cluster" :: NullOrUndefined (String)
  , "taskDefinition" :: (String)
  , "overrides" :: NullOrUndefined (TaskOverride)
  , "containerInstances" :: (StringList)
  , "startedBy" :: NullOrUndefined (String)
  , "group" :: NullOrUndefined (String)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  }
derive instance newtypeStartTaskRequest :: Newtype StartTaskRequest _
derive instance repGenericStartTaskRequest :: Generic StartTaskRequest _
instance showStartTaskRequest :: Show StartTaskRequest where show = genericShow
instance decodeStartTaskRequest :: Decode StartTaskRequest where decode = genericDecode options
instance encodeStartTaskRequest :: Encode StartTaskRequest where encode = genericEncode options

-- | Constructs StartTaskRequest from required parameters
newStartTaskRequest :: StringList -> String -> StartTaskRequest
newStartTaskRequest _containerInstances _taskDefinition = StartTaskRequest { "containerInstances": _containerInstances, "taskDefinition": _taskDefinition, "cluster": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }

-- | Constructs StartTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTaskRequest' :: StringList -> String -> ( { "cluster" :: NullOrUndefined (String) , "taskDefinition" :: (String) , "overrides" :: NullOrUndefined (TaskOverride) , "containerInstances" :: (StringList) , "startedBy" :: NullOrUndefined (String) , "group" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } -> {"cluster" :: NullOrUndefined (String) , "taskDefinition" :: (String) , "overrides" :: NullOrUndefined (TaskOverride) , "containerInstances" :: (StringList) , "startedBy" :: NullOrUndefined (String) , "group" :: NullOrUndefined (String) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) } ) -> StartTaskRequest
newStartTaskRequest' _containerInstances _taskDefinition customize = (StartTaskRequest <<< customize) { "containerInstances": _containerInstances, "taskDefinition": _taskDefinition, "cluster": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing) }



newtype StartTaskResponse = StartTaskResponse 
  { "tasks" :: NullOrUndefined (Tasks)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeStartTaskResponse :: Newtype StartTaskResponse _
derive instance repGenericStartTaskResponse :: Generic StartTaskResponse _
instance showStartTaskResponse :: Show StartTaskResponse where show = genericShow
instance decodeStartTaskResponse :: Decode StartTaskResponse where decode = genericDecode options
instance encodeStartTaskResponse :: Encode StartTaskResponse where encode = genericEncode options

-- | Constructs StartTaskResponse from required parameters
newStartTaskResponse :: StartTaskResponse
newStartTaskResponse  = StartTaskResponse { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }

-- | Constructs StartTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTaskResponse' :: ( { "tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } -> {"tasks" :: NullOrUndefined (Tasks) , "failures" :: NullOrUndefined (Failures) } ) -> StartTaskResponse
newStartTaskResponse'  customize = (StartTaskResponse <<< customize) { "failures": (NullOrUndefined Nothing), "tasks": (NullOrUndefined Nothing) }



newtype Statistics = Statistics (Array KeyValuePair)
derive instance newtypeStatistics :: Newtype Statistics _
derive instance repGenericStatistics :: Generic Statistics _
instance showStatistics :: Show Statistics where show = genericShow
instance decodeStatistics :: Decode Statistics where decode = genericDecode options
instance encodeStatistics :: Encode Statistics where encode = genericEncode options



newtype StopTaskRequest = StopTaskRequest 
  { "cluster" :: NullOrUndefined (String)
  , "task" :: (String)
  , "reason" :: NullOrUndefined (String)
  }
derive instance newtypeStopTaskRequest :: Newtype StopTaskRequest _
derive instance repGenericStopTaskRequest :: Generic StopTaskRequest _
instance showStopTaskRequest :: Show StopTaskRequest where show = genericShow
instance decodeStopTaskRequest :: Decode StopTaskRequest where decode = genericDecode options
instance encodeStopTaskRequest :: Encode StopTaskRequest where encode = genericEncode options

-- | Constructs StopTaskRequest from required parameters
newStopTaskRequest :: String -> StopTaskRequest
newStopTaskRequest _task = StopTaskRequest { "task": _task, "cluster": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }

-- | Constructs StopTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopTaskRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "task" :: (String) , "reason" :: NullOrUndefined (String) } -> {"cluster" :: NullOrUndefined (String) , "task" :: (String) , "reason" :: NullOrUndefined (String) } ) -> StopTaskRequest
newStopTaskRequest' _task customize = (StopTaskRequest <<< customize) { "task": _task, "cluster": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing) }



newtype StopTaskResponse = StopTaskResponse 
  { "task" :: NullOrUndefined (Task)
  }
derive instance newtypeStopTaskResponse :: Newtype StopTaskResponse _
derive instance repGenericStopTaskResponse :: Generic StopTaskResponse _
instance showStopTaskResponse :: Show StopTaskResponse where show = genericShow
instance decodeStopTaskResponse :: Decode StopTaskResponse where decode = genericDecode options
instance encodeStopTaskResponse :: Encode StopTaskResponse where encode = genericEncode options

-- | Constructs StopTaskResponse from required parameters
newStopTaskResponse :: StopTaskResponse
newStopTaskResponse  = StopTaskResponse { "task": (NullOrUndefined Nothing) }

-- | Constructs StopTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopTaskResponse' :: ( { "task" :: NullOrUndefined (Task) } -> {"task" :: NullOrUndefined (Task) } ) -> StopTaskResponse
newStopTaskResponse'  customize = (StopTaskResponse <<< customize) { "task": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype SubmitContainerStateChangeRequest = SubmitContainerStateChangeRequest 
  { "cluster" :: NullOrUndefined (String)
  , "task" :: NullOrUndefined (String)
  , "containerName" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "exitCode" :: NullOrUndefined (BoxedInteger)
  , "reason" :: NullOrUndefined (String)
  , "networkBindings" :: NullOrUndefined (NetworkBindings)
  }
derive instance newtypeSubmitContainerStateChangeRequest :: Newtype SubmitContainerStateChangeRequest _
derive instance repGenericSubmitContainerStateChangeRequest :: Generic SubmitContainerStateChangeRequest _
instance showSubmitContainerStateChangeRequest :: Show SubmitContainerStateChangeRequest where show = genericShow
instance decodeSubmitContainerStateChangeRequest :: Decode SubmitContainerStateChangeRequest where decode = genericDecode options
instance encodeSubmitContainerStateChangeRequest :: Encode SubmitContainerStateChangeRequest where encode = genericEncode options

-- | Constructs SubmitContainerStateChangeRequest from required parameters
newSubmitContainerStateChangeRequest :: SubmitContainerStateChangeRequest
newSubmitContainerStateChangeRequest  = SubmitContainerStateChangeRequest { "cluster": (NullOrUndefined Nothing), "containerName": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "task": (NullOrUndefined Nothing) }

-- | Constructs SubmitContainerStateChangeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitContainerStateChangeRequest' :: ( { "cluster" :: NullOrUndefined (String) , "task" :: NullOrUndefined (String) , "containerName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "reason" :: NullOrUndefined (String) , "networkBindings" :: NullOrUndefined (NetworkBindings) } -> {"cluster" :: NullOrUndefined (String) , "task" :: NullOrUndefined (String) , "containerName" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "exitCode" :: NullOrUndefined (BoxedInteger) , "reason" :: NullOrUndefined (String) , "networkBindings" :: NullOrUndefined (NetworkBindings) } ) -> SubmitContainerStateChangeRequest
newSubmitContainerStateChangeRequest'  customize = (SubmitContainerStateChangeRequest <<< customize) { "cluster": (NullOrUndefined Nothing), "containerName": (NullOrUndefined Nothing), "exitCode": (NullOrUndefined Nothing), "networkBindings": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "task": (NullOrUndefined Nothing) }



newtype SubmitContainerStateChangeResponse = SubmitContainerStateChangeResponse 
  { "acknowledgment" :: NullOrUndefined (String)
  }
derive instance newtypeSubmitContainerStateChangeResponse :: Newtype SubmitContainerStateChangeResponse _
derive instance repGenericSubmitContainerStateChangeResponse :: Generic SubmitContainerStateChangeResponse _
instance showSubmitContainerStateChangeResponse :: Show SubmitContainerStateChangeResponse where show = genericShow
instance decodeSubmitContainerStateChangeResponse :: Decode SubmitContainerStateChangeResponse where decode = genericDecode options
instance encodeSubmitContainerStateChangeResponse :: Encode SubmitContainerStateChangeResponse where encode = genericEncode options

-- | Constructs SubmitContainerStateChangeResponse from required parameters
newSubmitContainerStateChangeResponse :: SubmitContainerStateChangeResponse
newSubmitContainerStateChangeResponse  = SubmitContainerStateChangeResponse { "acknowledgment": (NullOrUndefined Nothing) }

-- | Constructs SubmitContainerStateChangeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitContainerStateChangeResponse' :: ( { "acknowledgment" :: NullOrUndefined (String) } -> {"acknowledgment" :: NullOrUndefined (String) } ) -> SubmitContainerStateChangeResponse
newSubmitContainerStateChangeResponse'  customize = (SubmitContainerStateChangeResponse <<< customize) { "acknowledgment": (NullOrUndefined Nothing) }



newtype SubmitTaskStateChangeRequest = SubmitTaskStateChangeRequest 
  { "cluster" :: NullOrUndefined (String)
  , "task" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (String)
  , "reason" :: NullOrUndefined (String)
  , "containers" :: NullOrUndefined (ContainerStateChanges)
  , "attachments" :: NullOrUndefined (AttachmentStateChanges)
  , "pullStartedAt" :: NullOrUndefined (Types.Timestamp)
  , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp)
  , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeSubmitTaskStateChangeRequest :: Newtype SubmitTaskStateChangeRequest _
derive instance repGenericSubmitTaskStateChangeRequest :: Generic SubmitTaskStateChangeRequest _
instance showSubmitTaskStateChangeRequest :: Show SubmitTaskStateChangeRequest where show = genericShow
instance decodeSubmitTaskStateChangeRequest :: Decode SubmitTaskStateChangeRequest where decode = genericDecode options
instance encodeSubmitTaskStateChangeRequest :: Encode SubmitTaskStateChangeRequest where encode = genericEncode options

-- | Constructs SubmitTaskStateChangeRequest from required parameters
newSubmitTaskStateChangeRequest :: SubmitTaskStateChangeRequest
newSubmitTaskStateChangeRequest  = SubmitTaskStateChangeRequest { "attachments": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "containers": (NullOrUndefined Nothing), "executionStoppedAt": (NullOrUndefined Nothing), "pullStartedAt": (NullOrUndefined Nothing), "pullStoppedAt": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "task": (NullOrUndefined Nothing) }

-- | Constructs SubmitTaskStateChangeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitTaskStateChangeRequest' :: ( { "cluster" :: NullOrUndefined (String) , "task" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "reason" :: NullOrUndefined (String) , "containers" :: NullOrUndefined (ContainerStateChanges) , "attachments" :: NullOrUndefined (AttachmentStateChanges) , "pullStartedAt" :: NullOrUndefined (Types.Timestamp) , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp) , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp) } -> {"cluster" :: NullOrUndefined (String) , "task" :: NullOrUndefined (String) , "status" :: NullOrUndefined (String) , "reason" :: NullOrUndefined (String) , "containers" :: NullOrUndefined (ContainerStateChanges) , "attachments" :: NullOrUndefined (AttachmentStateChanges) , "pullStartedAt" :: NullOrUndefined (Types.Timestamp) , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp) , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp) } ) -> SubmitTaskStateChangeRequest
newSubmitTaskStateChangeRequest'  customize = (SubmitTaskStateChangeRequest <<< customize) { "attachments": (NullOrUndefined Nothing), "cluster": (NullOrUndefined Nothing), "containers": (NullOrUndefined Nothing), "executionStoppedAt": (NullOrUndefined Nothing), "pullStartedAt": (NullOrUndefined Nothing), "pullStoppedAt": (NullOrUndefined Nothing), "reason": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "task": (NullOrUndefined Nothing) }



newtype SubmitTaskStateChangeResponse = SubmitTaskStateChangeResponse 
  { "acknowledgment" :: NullOrUndefined (String)
  }
derive instance newtypeSubmitTaskStateChangeResponse :: Newtype SubmitTaskStateChangeResponse _
derive instance repGenericSubmitTaskStateChangeResponse :: Generic SubmitTaskStateChangeResponse _
instance showSubmitTaskStateChangeResponse :: Show SubmitTaskStateChangeResponse where show = genericShow
instance decodeSubmitTaskStateChangeResponse :: Decode SubmitTaskStateChangeResponse where decode = genericDecode options
instance encodeSubmitTaskStateChangeResponse :: Encode SubmitTaskStateChangeResponse where encode = genericEncode options

-- | Constructs SubmitTaskStateChangeResponse from required parameters
newSubmitTaskStateChangeResponse :: SubmitTaskStateChangeResponse
newSubmitTaskStateChangeResponse  = SubmitTaskStateChangeResponse { "acknowledgment": (NullOrUndefined Nothing) }

-- | Constructs SubmitTaskStateChangeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubmitTaskStateChangeResponse' :: ( { "acknowledgment" :: NullOrUndefined (String) } -> {"acknowledgment" :: NullOrUndefined (String) } ) -> SubmitTaskStateChangeResponse
newSubmitTaskStateChangeResponse'  customize = (SubmitTaskStateChangeResponse <<< customize) { "acknowledgment": (NullOrUndefined Nothing) }



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
  { "taskArn" :: NullOrUndefined (String)
  , "clusterArn" :: NullOrUndefined (String)
  , "taskDefinitionArn" :: NullOrUndefined (String)
  , "containerInstanceArn" :: NullOrUndefined (String)
  , "overrides" :: NullOrUndefined (TaskOverride)
  , "lastStatus" :: NullOrUndefined (String)
  , "desiredStatus" :: NullOrUndefined (String)
  , "cpu" :: NullOrUndefined (String)
  , "memory" :: NullOrUndefined (String)
  , "containers" :: NullOrUndefined (Containers)
  , "startedBy" :: NullOrUndefined (String)
  , "version" :: NullOrUndefined (Number)
  , "stoppedReason" :: NullOrUndefined (String)
  , "connectivity" :: NullOrUndefined (Connectivity)
  , "connectivityAt" :: NullOrUndefined (Types.Timestamp)
  , "pullStartedAt" :: NullOrUndefined (Types.Timestamp)
  , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp)
  , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp)
  , "createdAt" :: NullOrUndefined (Types.Timestamp)
  , "startedAt" :: NullOrUndefined (Types.Timestamp)
  , "stoppingAt" :: NullOrUndefined (Types.Timestamp)
  , "stoppedAt" :: NullOrUndefined (Types.Timestamp)
  , "group" :: NullOrUndefined (String)
  , "launchType" :: NullOrUndefined (LaunchType)
  , "platformVersion" :: NullOrUndefined (String)
  , "attachments" :: NullOrUndefined (Attachments)
  , "healthStatus" :: NullOrUndefined (HealthStatus)
  }
derive instance newtypeTask :: Newtype Task _
derive instance repGenericTask :: Generic Task _
instance showTask :: Show Task where show = genericShow
instance decodeTask :: Decode Task where decode = genericDecode options
instance encodeTask :: Encode Task where encode = genericEncode options

-- | Constructs Task from required parameters
newTask :: Task
newTask  = Task { "attachments": (NullOrUndefined Nothing), "clusterArn": (NullOrUndefined Nothing), "connectivity": (NullOrUndefined Nothing), "connectivityAt": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "containers": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "desiredStatus": (NullOrUndefined Nothing), "executionStoppedAt": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "healthStatus": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "pullStartedAt": (NullOrUndefined Nothing), "pullStoppedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing), "stoppedReason": (NullOrUndefined Nothing), "stoppingAt": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "taskDefinitionArn": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }

-- | Constructs Task's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTask' :: ( { "taskArn" :: NullOrUndefined (String) , "clusterArn" :: NullOrUndefined (String) , "taskDefinitionArn" :: NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined (String) , "overrides" :: NullOrUndefined (TaskOverride) , "lastStatus" :: NullOrUndefined (String) , "desiredStatus" :: NullOrUndefined (String) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) , "containers" :: NullOrUndefined (Containers) , "startedBy" :: NullOrUndefined (String) , "version" :: NullOrUndefined (Number) , "stoppedReason" :: NullOrUndefined (String) , "connectivity" :: NullOrUndefined (Connectivity) , "connectivityAt" :: NullOrUndefined (Types.Timestamp) , "pullStartedAt" :: NullOrUndefined (Types.Timestamp) , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp) , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "startedAt" :: NullOrUndefined (Types.Timestamp) , "stoppingAt" :: NullOrUndefined (Types.Timestamp) , "stoppedAt" :: NullOrUndefined (Types.Timestamp) , "group" :: NullOrUndefined (String) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "attachments" :: NullOrUndefined (Attachments) , "healthStatus" :: NullOrUndefined (HealthStatus) } -> {"taskArn" :: NullOrUndefined (String) , "clusterArn" :: NullOrUndefined (String) , "taskDefinitionArn" :: NullOrUndefined (String) , "containerInstanceArn" :: NullOrUndefined (String) , "overrides" :: NullOrUndefined (TaskOverride) , "lastStatus" :: NullOrUndefined (String) , "desiredStatus" :: NullOrUndefined (String) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) , "containers" :: NullOrUndefined (Containers) , "startedBy" :: NullOrUndefined (String) , "version" :: NullOrUndefined (Number) , "stoppedReason" :: NullOrUndefined (String) , "connectivity" :: NullOrUndefined (Connectivity) , "connectivityAt" :: NullOrUndefined (Types.Timestamp) , "pullStartedAt" :: NullOrUndefined (Types.Timestamp) , "pullStoppedAt" :: NullOrUndefined (Types.Timestamp) , "executionStoppedAt" :: NullOrUndefined (Types.Timestamp) , "createdAt" :: NullOrUndefined (Types.Timestamp) , "startedAt" :: NullOrUndefined (Types.Timestamp) , "stoppingAt" :: NullOrUndefined (Types.Timestamp) , "stoppedAt" :: NullOrUndefined (Types.Timestamp) , "group" :: NullOrUndefined (String) , "launchType" :: NullOrUndefined (LaunchType) , "platformVersion" :: NullOrUndefined (String) , "attachments" :: NullOrUndefined (Attachments) , "healthStatus" :: NullOrUndefined (HealthStatus) } ) -> Task
newTask'  customize = (Task <<< customize) { "attachments": (NullOrUndefined Nothing), "clusterArn": (NullOrUndefined Nothing), "connectivity": (NullOrUndefined Nothing), "connectivityAt": (NullOrUndefined Nothing), "containerInstanceArn": (NullOrUndefined Nothing), "containers": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "createdAt": (NullOrUndefined Nothing), "desiredStatus": (NullOrUndefined Nothing), "executionStoppedAt": (NullOrUndefined Nothing), "group": (NullOrUndefined Nothing), "healthStatus": (NullOrUndefined Nothing), "lastStatus": (NullOrUndefined Nothing), "launchType": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "overrides": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "pullStartedAt": (NullOrUndefined Nothing), "pullStoppedAt": (NullOrUndefined Nothing), "startedAt": (NullOrUndefined Nothing), "startedBy": (NullOrUndefined Nothing), "stoppedAt": (NullOrUndefined Nothing), "stoppedReason": (NullOrUndefined Nothing), "stoppingAt": (NullOrUndefined Nothing), "taskArn": (NullOrUndefined Nothing), "taskDefinitionArn": (NullOrUndefined Nothing), "version": (NullOrUndefined Nothing) }



-- | <p>Details of a task definition.</p>
newtype TaskDefinition = TaskDefinition 
  { "taskDefinitionArn" :: NullOrUndefined (String)
  , "containerDefinitions" :: NullOrUndefined (ContainerDefinitions)
  , "family" :: NullOrUndefined (String)
  , "taskRoleArn" :: NullOrUndefined (String)
  , "executionRoleArn" :: NullOrUndefined (String)
  , "networkMode" :: NullOrUndefined (NetworkMode)
  , "revision" :: NullOrUndefined (Int)
  , "volumes" :: NullOrUndefined (VolumeList)
  , "status" :: NullOrUndefined (TaskDefinitionStatus)
  , "requiresAttributes" :: NullOrUndefined (RequiresAttributes)
  , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints)
  , "compatibilities" :: NullOrUndefined (CompatibilityList)
  , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList)
  , "cpu" :: NullOrUndefined (String)
  , "memory" :: NullOrUndefined (String)
  }
derive instance newtypeTaskDefinition :: Newtype TaskDefinition _
derive instance repGenericTaskDefinition :: Generic TaskDefinition _
instance showTaskDefinition :: Show TaskDefinition where show = genericShow
instance decodeTaskDefinition :: Decode TaskDefinition where decode = genericDecode options
instance encodeTaskDefinition :: Encode TaskDefinition where encode = genericEncode options

-- | Constructs TaskDefinition from required parameters
newTaskDefinition :: TaskDefinition
newTaskDefinition  = TaskDefinition { "compatibilities": (NullOrUndefined Nothing), "containerDefinitions": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "family": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "networkMode": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "requiresAttributes": (NullOrUndefined Nothing), "requiresCompatibilities": (NullOrUndefined Nothing), "revision": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinitionArn": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }

-- | Constructs TaskDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDefinition' :: ( { "taskDefinitionArn" :: NullOrUndefined (String) , "containerDefinitions" :: NullOrUndefined (ContainerDefinitions) , "family" :: NullOrUndefined (String) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) , "networkMode" :: NullOrUndefined (NetworkMode) , "revision" :: NullOrUndefined (Int) , "volumes" :: NullOrUndefined (VolumeList) , "status" :: NullOrUndefined (TaskDefinitionStatus) , "requiresAttributes" :: NullOrUndefined (RequiresAttributes) , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints) , "compatibilities" :: NullOrUndefined (CompatibilityList) , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) } -> {"taskDefinitionArn" :: NullOrUndefined (String) , "containerDefinitions" :: NullOrUndefined (ContainerDefinitions) , "family" :: NullOrUndefined (String) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) , "networkMode" :: NullOrUndefined (NetworkMode) , "revision" :: NullOrUndefined (Int) , "volumes" :: NullOrUndefined (VolumeList) , "status" :: NullOrUndefined (TaskDefinitionStatus) , "requiresAttributes" :: NullOrUndefined (RequiresAttributes) , "placementConstraints" :: NullOrUndefined (TaskDefinitionPlacementConstraints) , "compatibilities" :: NullOrUndefined (CompatibilityList) , "requiresCompatibilities" :: NullOrUndefined (CompatibilityList) , "cpu" :: NullOrUndefined (String) , "memory" :: NullOrUndefined (String) } ) -> TaskDefinition
newTaskDefinition'  customize = (TaskDefinition <<< customize) { "compatibilities": (NullOrUndefined Nothing), "containerDefinitions": (NullOrUndefined Nothing), "cpu": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "family": (NullOrUndefined Nothing), "memory": (NullOrUndefined Nothing), "networkMode": (NullOrUndefined Nothing), "placementConstraints": (NullOrUndefined Nothing), "requiresAttributes": (NullOrUndefined Nothing), "requiresCompatibilities": (NullOrUndefined Nothing), "revision": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "taskDefinitionArn": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing), "volumes": (NullOrUndefined Nothing) }



newtype TaskDefinitionFamilyStatus = TaskDefinitionFamilyStatus String
derive instance newtypeTaskDefinitionFamilyStatus :: Newtype TaskDefinitionFamilyStatus _
derive instance repGenericTaskDefinitionFamilyStatus :: Generic TaskDefinitionFamilyStatus _
instance showTaskDefinitionFamilyStatus :: Show TaskDefinitionFamilyStatus where show = genericShow
instance decodeTaskDefinitionFamilyStatus :: Decode TaskDefinitionFamilyStatus where decode = genericDecode options
instance encodeTaskDefinitionFamilyStatus :: Encode TaskDefinitionFamilyStatus where encode = genericEncode options



-- | <p>An object representing a constraint on task placement in the task definition.</p> <p>If you are using the Fargate launch type, task placement constraints are not supported.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
newtype TaskDefinitionPlacementConstraint = TaskDefinitionPlacementConstraint 
  { "type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType)
  , "expression" :: NullOrUndefined (String)
  }
derive instance newtypeTaskDefinitionPlacementConstraint :: Newtype TaskDefinitionPlacementConstraint _
derive instance repGenericTaskDefinitionPlacementConstraint :: Generic TaskDefinitionPlacementConstraint _
instance showTaskDefinitionPlacementConstraint :: Show TaskDefinitionPlacementConstraint where show = genericShow
instance decodeTaskDefinitionPlacementConstraint :: Decode TaskDefinitionPlacementConstraint where decode = genericDecode options
instance encodeTaskDefinitionPlacementConstraint :: Encode TaskDefinitionPlacementConstraint where encode = genericEncode options

-- | Constructs TaskDefinitionPlacementConstraint from required parameters
newTaskDefinitionPlacementConstraint :: TaskDefinitionPlacementConstraint
newTaskDefinitionPlacementConstraint  = TaskDefinitionPlacementConstraint { "expression": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs TaskDefinitionPlacementConstraint's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskDefinitionPlacementConstraint' :: ( { "type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType) , "expression" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType) , "expression" :: NullOrUndefined (String) } ) -> TaskDefinitionPlacementConstraint
newTaskDefinitionPlacementConstraint'  customize = (TaskDefinitionPlacementConstraint <<< customize) { "expression": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



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
  { "containerOverrides" :: NullOrUndefined (ContainerOverrides)
  , "taskRoleArn" :: NullOrUndefined (String)
  , "executionRoleArn" :: NullOrUndefined (String)
  }
derive instance newtypeTaskOverride :: Newtype TaskOverride _
derive instance repGenericTaskOverride :: Generic TaskOverride _
instance showTaskOverride :: Show TaskOverride where show = genericShow
instance decodeTaskOverride :: Decode TaskOverride where decode = genericDecode options
instance encodeTaskOverride :: Encode TaskOverride where encode = genericEncode options

-- | Constructs TaskOverride from required parameters
newTaskOverride :: TaskOverride
newTaskOverride  = TaskOverride { "containerOverrides": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing) }

-- | Constructs TaskOverride's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTaskOverride' :: ( { "containerOverrides" :: NullOrUndefined (ContainerOverrides) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) } -> {"containerOverrides" :: NullOrUndefined (ContainerOverrides) , "taskRoleArn" :: NullOrUndefined (String) , "executionRoleArn" :: NullOrUndefined (String) } ) -> TaskOverride
newTaskOverride'  customize = (TaskOverride <<< customize) { "containerOverrides": (NullOrUndefined Nothing), "executionRoleArn": (NullOrUndefined Nothing), "taskRoleArn": (NullOrUndefined Nothing) }



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
  { "cluster" :: NullOrUndefined (String)
  , "containerInstance" :: (String)
  }
derive instance newtypeUpdateContainerAgentRequest :: Newtype UpdateContainerAgentRequest _
derive instance repGenericUpdateContainerAgentRequest :: Generic UpdateContainerAgentRequest _
instance showUpdateContainerAgentRequest :: Show UpdateContainerAgentRequest where show = genericShow
instance decodeUpdateContainerAgentRequest :: Decode UpdateContainerAgentRequest where decode = genericDecode options
instance encodeUpdateContainerAgentRequest :: Encode UpdateContainerAgentRequest where encode = genericEncode options

-- | Constructs UpdateContainerAgentRequest from required parameters
newUpdateContainerAgentRequest :: String -> UpdateContainerAgentRequest
newUpdateContainerAgentRequest _containerInstance = UpdateContainerAgentRequest { "containerInstance": _containerInstance, "cluster": (NullOrUndefined Nothing) }

-- | Constructs UpdateContainerAgentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerAgentRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "containerInstance" :: (String) } -> {"cluster" :: NullOrUndefined (String) , "containerInstance" :: (String) } ) -> UpdateContainerAgentRequest
newUpdateContainerAgentRequest' _containerInstance customize = (UpdateContainerAgentRequest <<< customize) { "containerInstance": _containerInstance, "cluster": (NullOrUndefined Nothing) }



newtype UpdateContainerAgentResponse = UpdateContainerAgentResponse 
  { "containerInstance" :: NullOrUndefined (ContainerInstance)
  }
derive instance newtypeUpdateContainerAgentResponse :: Newtype UpdateContainerAgentResponse _
derive instance repGenericUpdateContainerAgentResponse :: Generic UpdateContainerAgentResponse _
instance showUpdateContainerAgentResponse :: Show UpdateContainerAgentResponse where show = genericShow
instance decodeUpdateContainerAgentResponse :: Decode UpdateContainerAgentResponse where decode = genericDecode options
instance encodeUpdateContainerAgentResponse :: Encode UpdateContainerAgentResponse where encode = genericEncode options

-- | Constructs UpdateContainerAgentResponse from required parameters
newUpdateContainerAgentResponse :: UpdateContainerAgentResponse
newUpdateContainerAgentResponse  = UpdateContainerAgentResponse { "containerInstance": (NullOrUndefined Nothing) }

-- | Constructs UpdateContainerAgentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerAgentResponse' :: ( { "containerInstance" :: NullOrUndefined (ContainerInstance) } -> {"containerInstance" :: NullOrUndefined (ContainerInstance) } ) -> UpdateContainerAgentResponse
newUpdateContainerAgentResponse'  customize = (UpdateContainerAgentResponse <<< customize) { "containerInstance": (NullOrUndefined Nothing) }



newtype UpdateContainerInstancesStateRequest = UpdateContainerInstancesStateRequest 
  { "cluster" :: NullOrUndefined (String)
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
newUpdateContainerInstancesStateRequest _containerInstances _status = UpdateContainerInstancesStateRequest { "containerInstances": _containerInstances, "status": _status, "cluster": (NullOrUndefined Nothing) }

-- | Constructs UpdateContainerInstancesStateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerInstancesStateRequest' :: StringList -> ContainerInstanceStatus -> ( { "cluster" :: NullOrUndefined (String) , "containerInstances" :: (StringList) , "status" :: (ContainerInstanceStatus) } -> {"cluster" :: NullOrUndefined (String) , "containerInstances" :: (StringList) , "status" :: (ContainerInstanceStatus) } ) -> UpdateContainerInstancesStateRequest
newUpdateContainerInstancesStateRequest' _containerInstances _status customize = (UpdateContainerInstancesStateRequest <<< customize) { "containerInstances": _containerInstances, "status": _status, "cluster": (NullOrUndefined Nothing) }



newtype UpdateContainerInstancesStateResponse = UpdateContainerInstancesStateResponse 
  { "containerInstances" :: NullOrUndefined (ContainerInstances)
  , "failures" :: NullOrUndefined (Failures)
  }
derive instance newtypeUpdateContainerInstancesStateResponse :: Newtype UpdateContainerInstancesStateResponse _
derive instance repGenericUpdateContainerInstancesStateResponse :: Generic UpdateContainerInstancesStateResponse _
instance showUpdateContainerInstancesStateResponse :: Show UpdateContainerInstancesStateResponse where show = genericShow
instance decodeUpdateContainerInstancesStateResponse :: Decode UpdateContainerInstancesStateResponse where decode = genericDecode options
instance encodeUpdateContainerInstancesStateResponse :: Encode UpdateContainerInstancesStateResponse where encode = genericEncode options

-- | Constructs UpdateContainerInstancesStateResponse from required parameters
newUpdateContainerInstancesStateResponse :: UpdateContainerInstancesStateResponse
newUpdateContainerInstancesStateResponse  = UpdateContainerInstancesStateResponse { "containerInstances": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }

-- | Constructs UpdateContainerInstancesStateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateContainerInstancesStateResponse' :: ( { "containerInstances" :: NullOrUndefined (ContainerInstances) , "failures" :: NullOrUndefined (Failures) } -> {"containerInstances" :: NullOrUndefined (ContainerInstances) , "failures" :: NullOrUndefined (Failures) } ) -> UpdateContainerInstancesStateResponse
newUpdateContainerInstancesStateResponse'  customize = (UpdateContainerInstancesStateResponse <<< customize) { "containerInstances": (NullOrUndefined Nothing), "failures": (NullOrUndefined Nothing) }



-- | <p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>
newtype UpdateInProgressException = UpdateInProgressException Types.NoArguments
derive instance newtypeUpdateInProgressException :: Newtype UpdateInProgressException _
derive instance repGenericUpdateInProgressException :: Generic UpdateInProgressException _
instance showUpdateInProgressException :: Show UpdateInProgressException where show = genericShow
instance decodeUpdateInProgressException :: Decode UpdateInProgressException where decode = genericDecode options
instance encodeUpdateInProgressException :: Encode UpdateInProgressException where encode = genericEncode options



newtype UpdateServiceRequest = UpdateServiceRequest 
  { "cluster" :: NullOrUndefined (String)
  , "service" :: (String)
  , "desiredCount" :: NullOrUndefined (BoxedInteger)
  , "taskDefinition" :: NullOrUndefined (String)
  , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration)
  , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration)
  , "platformVersion" :: NullOrUndefined (String)
  , "forceNewDeployment" :: NullOrUndefined (Boolean)
  , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger)
  }
derive instance newtypeUpdateServiceRequest :: Newtype UpdateServiceRequest _
derive instance repGenericUpdateServiceRequest :: Generic UpdateServiceRequest _
instance showUpdateServiceRequest :: Show UpdateServiceRequest where show = genericShow
instance decodeUpdateServiceRequest :: Decode UpdateServiceRequest where decode = genericDecode options
instance encodeUpdateServiceRequest :: Encode UpdateServiceRequest where encode = genericEncode options

-- | Constructs UpdateServiceRequest from required parameters
newUpdateServiceRequest :: String -> UpdateServiceRequest
newUpdateServiceRequest _service = UpdateServiceRequest { "service": _service, "cluster": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "forceNewDeployment": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing) }

-- | Constructs UpdateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceRequest' :: String -> ( { "cluster" :: NullOrUndefined (String) , "service" :: (String) , "desiredCount" :: NullOrUndefined (BoxedInteger) , "taskDefinition" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "platformVersion" :: NullOrUndefined (String) , "forceNewDeployment" :: NullOrUndefined (Boolean) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } -> {"cluster" :: NullOrUndefined (String) , "service" :: (String) , "desiredCount" :: NullOrUndefined (BoxedInteger) , "taskDefinition" :: NullOrUndefined (String) , "deploymentConfiguration" :: NullOrUndefined (DeploymentConfiguration) , "networkConfiguration" :: NullOrUndefined (NetworkConfiguration) , "platformVersion" :: NullOrUndefined (String) , "forceNewDeployment" :: NullOrUndefined (Boolean) , "healthCheckGracePeriodSeconds" :: NullOrUndefined (BoxedInteger) } ) -> UpdateServiceRequest
newUpdateServiceRequest' _service customize = (UpdateServiceRequest <<< customize) { "service": _service, "cluster": (NullOrUndefined Nothing), "deploymentConfiguration": (NullOrUndefined Nothing), "desiredCount": (NullOrUndefined Nothing), "forceNewDeployment": (NullOrUndefined Nothing), "healthCheckGracePeriodSeconds": (NullOrUndefined Nothing), "networkConfiguration": (NullOrUndefined Nothing), "platformVersion": (NullOrUndefined Nothing), "taskDefinition": (NullOrUndefined Nothing) }



newtype UpdateServiceResponse = UpdateServiceResponse 
  { "service" :: NullOrUndefined (Service)
  }
derive instance newtypeUpdateServiceResponse :: Newtype UpdateServiceResponse _
derive instance repGenericUpdateServiceResponse :: Generic UpdateServiceResponse _
instance showUpdateServiceResponse :: Show UpdateServiceResponse where show = genericShow
instance decodeUpdateServiceResponse :: Decode UpdateServiceResponse where decode = genericDecode options
instance encodeUpdateServiceResponse :: Encode UpdateServiceResponse where encode = genericEncode options

-- | Constructs UpdateServiceResponse from required parameters
newUpdateServiceResponse :: UpdateServiceResponse
newUpdateServiceResponse  = UpdateServiceResponse { "service": (NullOrUndefined Nothing) }

-- | Constructs UpdateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceResponse' :: ( { "service" :: NullOrUndefined (Service) } -> {"service" :: NullOrUndefined (Service) } ) -> UpdateServiceResponse
newUpdateServiceResponse'  customize = (UpdateServiceResponse <<< customize) { "service": (NullOrUndefined Nothing) }



-- | <p>The Docker and Amazon ECS container agent version information about a container instance.</p>
newtype VersionInfo = VersionInfo 
  { "agentVersion" :: NullOrUndefined (String)
  , "agentHash" :: NullOrUndefined (String)
  , "dockerVersion" :: NullOrUndefined (String)
  }
derive instance newtypeVersionInfo :: Newtype VersionInfo _
derive instance repGenericVersionInfo :: Generic VersionInfo _
instance showVersionInfo :: Show VersionInfo where show = genericShow
instance decodeVersionInfo :: Decode VersionInfo where decode = genericDecode options
instance encodeVersionInfo :: Encode VersionInfo where encode = genericEncode options

-- | Constructs VersionInfo from required parameters
newVersionInfo :: VersionInfo
newVersionInfo  = VersionInfo { "agentHash": (NullOrUndefined Nothing), "agentVersion": (NullOrUndefined Nothing), "dockerVersion": (NullOrUndefined Nothing) }

-- | Constructs VersionInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionInfo' :: ( { "agentVersion" :: NullOrUndefined (String) , "agentHash" :: NullOrUndefined (String) , "dockerVersion" :: NullOrUndefined (String) } -> {"agentVersion" :: NullOrUndefined (String) , "agentHash" :: NullOrUndefined (String) , "dockerVersion" :: NullOrUndefined (String) } ) -> VersionInfo
newVersionInfo'  customize = (VersionInfo <<< customize) { "agentHash": (NullOrUndefined Nothing), "agentVersion": (NullOrUndefined Nothing), "dockerVersion": (NullOrUndefined Nothing) }



-- | <p>A data volume used in a task definition.</p>
newtype Volume = Volume 
  { "name" :: NullOrUndefined (String)
  , "host" :: NullOrUndefined (HostVolumeProperties)
  }
derive instance newtypeVolume :: Newtype Volume _
derive instance repGenericVolume :: Generic Volume _
instance showVolume :: Show Volume where show = genericShow
instance decodeVolume :: Decode Volume where decode = genericDecode options
instance encodeVolume :: Encode Volume where encode = genericEncode options

-- | Constructs Volume from required parameters
newVolume :: Volume
newVolume  = Volume { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }

-- | Constructs Volume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolume' :: ( { "name" :: NullOrUndefined (String) , "host" :: NullOrUndefined (HostVolumeProperties) } -> {"name" :: NullOrUndefined (String) , "host" :: NullOrUndefined (HostVolumeProperties) } ) -> Volume
newVolume'  customize = (Volume <<< customize) { "host": (NullOrUndefined Nothing), "name": (NullOrUndefined Nothing) }



-- | <p>Details on a data volume from another container in the same task definition.</p>
newtype VolumeFrom = VolumeFrom 
  { "sourceContainer" :: NullOrUndefined (String)
  , "readOnly" :: NullOrUndefined (BoxedBoolean)
  }
derive instance newtypeVolumeFrom :: Newtype VolumeFrom _
derive instance repGenericVolumeFrom :: Generic VolumeFrom _
instance showVolumeFrom :: Show VolumeFrom where show = genericShow
instance decodeVolumeFrom :: Decode VolumeFrom where decode = genericDecode options
instance encodeVolumeFrom :: Encode VolumeFrom where encode = genericEncode options

-- | Constructs VolumeFrom from required parameters
newVolumeFrom :: VolumeFrom
newVolumeFrom  = VolumeFrom { "readOnly": (NullOrUndefined Nothing), "sourceContainer": (NullOrUndefined Nothing) }

-- | Constructs VolumeFrom's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeFrom' :: ( { "sourceContainer" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (BoxedBoolean) } -> {"sourceContainer" :: NullOrUndefined (String) , "readOnly" :: NullOrUndefined (BoxedBoolean) } ) -> VolumeFrom
newVolumeFrom'  customize = (VolumeFrom <<< customize) { "readOnly": (NullOrUndefined Nothing), "sourceContainer": (NullOrUndefined Nothing) }



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

