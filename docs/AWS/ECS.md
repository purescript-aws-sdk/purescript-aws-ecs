## Module AWS.ECS

<p>Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast, container management service that makes it easy to run, stop, and manage Docker containers on a cluster. You can host your cluster on a serverless infrastructure that is managed by Amazon ECS by launching your services or tasks using the Fargate launch type. For more control, you can host your tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2) instances that you manage by using the EC2 launch type. For more information about launch types, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS Launch Types</a>.</p> <p>Amazon ECS lets you launch and stop container-based applications with simple API calls, allows you to get the state of your cluster from a centralized service, and gives you access to many familiar Amazon EC2 features.</p> <p>You can use Amazon ECS to schedule the placement of containers across your cluster based on your resource needs, isolation policies, and availability requirements. Amazon ECS eliminates the need for you to operate your own cluster management and configuration management systems or worry about scaling your management infrastructure.</p>

#### `createCluster`

``` purescript
createCluster :: forall eff. CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResponse
```

<p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code> cluster when you launch your first container instance. However, you can create your own cluster with a unique name with the <code>CreateCluster</code> action.</p> <note> <p>When you call the <a>CreateCluster</a> API operation, Amazon ECS attempts to create the service-linked role for your account so that required resources in other AWS services can be managed on your behalf. However, if the IAM user that makes the call does not have permissions to create the service-linked role, it is not created. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>

#### `createService`

``` purescript
createService :: forall eff. CreateServiceRequest -> Aff (exception :: EXCEPTION | eff) CreateServiceResponse
```

<p>Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below <code>desiredCount</code>, Amazon ECS spawns another copy of the task in the specified cluster. To update an existing service, see <a>UpdateService</a>.</p> <p>In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind a load balancer. The load balancer distributes traffic across the tasks that are associated with the service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service Load Balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can optionally specify a deployment configuration for your service. During a deployment, the service scheduler uses the <code>minimumHealthyPercent</code> and <code>maximumPercent</code> parameters to determine the deployment strategy. The deployment is triggered by changing the task definition or the desired count of a service with an <a>UpdateService</a> operation.</p> <p>The <code>minimumHealthyPercent</code> represents a lower limit on the number of your service's tasks that must remain in the <code>RUNNING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded up to the nearest integer). This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a <code>desiredCount</code> of four tasks and a <code>minimumHealthyPercent</code> of 50%, the scheduler can stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that <i>do not</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that <i>do</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer. The default value for <code>minimumHealthyPercent</code> is 50% in the console and 100% for the AWS CLI, the AWS SDKs, and the APIs.</p> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of your service's tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded down to the nearest integer). This parameter enables you to define the deployment batch size. For example, if your service has a <code>desiredCount</code> of four tasks and a <code>maximumPercent</code> value of 200%, the scheduler can start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for <code>maximumPercent</code> is 200%.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy) with the <code>placementStrategy</code> parameter):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul>

#### `deleteAttributes`

``` purescript
deleteAttributes :: forall eff. DeleteAttributesRequest -> Aff (exception :: EXCEPTION | eff) DeleteAttributesResponse
```

<p>Deletes one or more custom attributes from an Amazon ECS resource.</p>

#### `deleteCluster`

``` purescript
deleteCluster :: forall eff. DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DeleteClusterResponse
```

<p>Deletes the specified cluster. You must deregister all container instances from this cluster before you may delete it. You can list the container instances in a cluster with <a>ListContainerInstances</a> and deregister them with <a>DeregisterContainerInstance</a>.</p>

#### `deleteService`

``` purescript
deleteService :: forall eff. DeleteServiceRequest -> Aff (exception :: EXCEPTION | eff) DeleteServiceResponse
```

<p>Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see <a>UpdateService</a>.</p> <note> <p>When you delete a service, if there are still running tasks that require cleanup, the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the service is no longer visible in the console or in <a>ListServices</a> API operations. After the tasks have stopped, then the service status moves from <code>DRAINING</code> to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or <code>INACTIVE</code> status can still be viewed with <a>DescribeServices</a> API operations. However, in the future, <code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record keeping, and <a>DescribeServices</a> API operations on those services return a <code>ServiceNotFoundException</code> error.</p> </note>

#### `deregisterContainerInstance`

``` purescript
deregisterContainerInstance :: forall eff. DeregisterContainerInstanceRequest -> Aff (exception :: EXCEPTION | eff) DeregisterContainerInstanceResponse
```

<p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is no longer available to run tasks.</p> <p>If you intend to use the container instance for some other purpose after deregistration, you should stop all of the tasks running on the container instance before deregistration. That prevents any orphaned tasks from consuming resources.</p> <p>Deregistering a container instance removes the instance from a cluster, but it does not terminate the EC2 instance; if you are finished using the instance, be sure to terminate it in the Amazon EC2 console to stop billing.</p> <note> <p>If you terminate a running container instance, Amazon ECS automatically deregisters the instance from your cluster (stopped container instances or instances with disconnected agents are not automatically deregistered when terminated).</p> </note>

#### `deregisterTaskDefinition`

``` purescript
deregisterTaskDefinition :: forall eff. DeregisterTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) DeregisterTaskDefinitionResponse
```

<p>Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that reference an <code>INACTIVE</code> task definition continue to run without disruption. Existing services that reference an <code>INACTIVE</code> task definition can still scale up or down by modifying the service's desired count.</p> <p>You cannot use an <code>INACTIVE</code> task definition to run new tasks or create new services, and you cannot update an existing service to reference an <code>INACTIVE</code> task definition (although there may be up to a 10-minute window following deregistration where these restrictions have not yet taken effect).</p> <note> <p>At this time, <code>INACTIVE</code> task definitions remain discoverable in your account indefinitely; however, this behavior is subject to change in the future, so you should not rely on <code>INACTIVE</code> task definitions persisting beyond the lifecycle of any associated tasks and services.</p> </note>

#### `describeClusters`

``` purescript
describeClusters :: forall eff. DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeClustersResponse
```

<p>Describes one or more of your clusters.</p>

#### `describeContainerInstances`

``` purescript
describeContainerInstances :: forall eff. DescribeContainerInstancesRequest -> Aff (exception :: EXCEPTION | eff) DescribeContainerInstancesResponse
```

<p>Describes Amazon Elastic Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.</p>

#### `describeServices`

``` purescript
describeServices :: forall eff. DescribeServicesRequest -> Aff (exception :: EXCEPTION | eff) DescribeServicesResponse
```

<p>Describes the specified services running in your cluster.</p>

#### `describeTaskDefinition`

``` purescript
describeTaskDefinition :: forall eff. DescribeTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) DescribeTaskDefinitionResponse
```

<p>Describes a task definition. You can specify a <code>family</code> and <code>revision</code> to find information about a specific task definition, or you can simply specify the family to find the latest <code>ACTIVE</code> revision in that family.</p> <note> <p>You can only describe <code>INACTIVE</code> task definitions while an active task or service references them.</p> </note>

#### `describeTasks`

``` purescript
describeTasks :: forall eff. DescribeTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeTasksResponse
```

<p>Describes a specified task or tasks.</p>

#### `discoverPollEndpoint`

``` purescript
discoverPollEndpoint :: forall eff. DiscoverPollEndpointRequest -> Aff (exception :: EXCEPTION | eff) DiscoverPollEndpointResponse
```

<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Returns an endpoint for the Amazon ECS agent to poll for updates.</p>

#### `listAttributes`

``` purescript
listAttributes :: forall eff. ListAttributesRequest -> Aff (exception :: EXCEPTION | eff) ListAttributesResponse
```

<p>Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, <code>ListAttributes</code> returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (<code>ecs.os-type=linux</code>). </p>

#### `listClusters`

``` purescript
listClusters :: forall eff. ListClustersRequest -> Aff (exception :: EXCEPTION | eff) ListClustersResponse
```

<p>Returns a list of existing clusters.</p>

#### `listContainerInstances`

``` purescript
listContainerInstances :: forall eff. ListContainerInstancesRequest -> Aff (exception :: EXCEPTION | eff) ListContainerInstancesResponse
```

<p>Returns a list of container instances in a specified cluster. You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements inside the <code>filter</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `listServices`

``` purescript
listServices :: forall eff. ListServicesRequest -> Aff (exception :: EXCEPTION | eff) ListServicesResponse
```

<p>Lists the services that are running in a specified cluster.</p>

#### `listTaskDefinitionFamilies`

``` purescript
listTaskDefinitionFamilies :: forall eff. ListTaskDefinitionFamiliesRequest -> Aff (exception :: EXCEPTION | eff) ListTaskDefinitionFamiliesResponse
```

<p>Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any <code>ACTIVE</code> task definition revisions).</p> <p>You can filter out task definition families that do not contain any <code>ACTIVE</code> task definition revisions by setting the <code>status</code> parameter to <code>ACTIVE</code>. You can also filter the results with the <code>familyPrefix</code> parameter.</p>

#### `listTaskDefinitions`

``` purescript
listTaskDefinitions :: forall eff. ListTaskDefinitionsRequest -> Aff (exception :: EXCEPTION | eff) ListTaskDefinitionsResponse
```

<p>Returns a list of task definitions that are registered to your account. You can filter the results by family name with the <code>familyPrefix</code> parameter or by status with the <code>status</code> parameter.</p>

#### `listTasks`

``` purescript
listTasks :: forall eff. ListTasksRequest -> Aff (exception :: EXCEPTION | eff) ListTasksResponse
```

<p>Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the <code>family</code>, <code>containerInstance</code>, and <code>desiredStatus</code> parameters.</p> <p>Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour. </p>

#### `putAttributes`

``` purescript
putAttributes :: forall eff. PutAttributesRequest -> Aff (exception :: EXCEPTION | eff) PutAttributesResponse
```

<p>Create or update an attribute on an Amazon ECS resource. If the attribute does not exist, it is created. If the attribute exists, its value is replaced with the specified value. To delete an attribute, use <a>DeleteAttributes</a>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `registerContainerInstance`

``` purescript
registerContainerInstance :: forall eff. RegisterContainerInstanceRequest -> Aff (exception :: EXCEPTION | eff) RegisterContainerInstanceResponse
```

<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.</p>

#### `registerTaskDefinition`

``` purescript
registerTaskDefinition :: forall eff. RegisterTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) RegisterTaskDefinitionResponse
```

<p>Registers a new task definition from the supplied <code>family</code> and <code>containerDefinitions</code>. Optionally, you can add data volumes to your containers with the <code>volumes</code> parameter. For more information about task definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify an IAM role for your task with the <code>taskRoleArn</code> parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify a Docker networking mode for the containers in your task definition with the <code>networkMode</code> parameter. The available network modes correspond to those described in <a href="https://docs.docker.com/engine/reference/run/#/network-settings">Network settings</a> in the Docker run reference. If you specify the <code>awsvpc</code> network mode, the task is allocated an Elastic Network Interface, and you must specify a <a>NetworkConfiguration</a> when you create a service or run a task with the task definition. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `runTask`

``` purescript
runTask :: forall eff. RunTaskRequest -> Aff (exception :: EXCEPTION | eff) RunTaskResponse
```

<p>Starts a new task using the specified task definition.</p> <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>Alternatively, you can use <a>StartTask</a> to use your own scheduler or place tasks manually on specific container instances.</p> <p>The Amazon ECS API follows an eventual consistency model, due to the distributed nature of the system supporting the API. This means that the result of an API command you run that affects your Amazon ECS resources might not be immediately visible to all subsequent commands you run. You should keep this in mind when you carry out an API command that immediately follows a previous API command.</p> <p>To manage eventual consistency, you can do the following:</p> <ul> <li> <p>Confirm the state of the resource before you run a command to modify it. Run the DescribeTasks command using an exponential backoff algorithm to ensure that you allow enough time for the previous command to propagate through the system. To do this, run the DescribeTasks command repeatedly, starting with a couple of seconds of wait time, and increasing gradually up to five minutes of wait time.</p> </li> <li> <p>Add wait time between subsequent commands, even if the DescribeTasks command returns an accurate response. Apply an exponential backoff algorithm starting with a couple of seconds of wait time, and increase gradually up to about five minutes of wait time.</p> </li> </ul>

#### `startTask`

``` purescript
startTask :: forall eff. StartTaskRequest -> Aff (exception :: EXCEPTION | eff) StartTaskResponse
```

<p>Starts a new task from the specified task definition on the specified container instance or instances.</p> <p>Alternatively, you can use <a>RunTask</a> to place tasks for you. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `stopTask`

``` purescript
stopTask :: forall eff. StopTaskRequest -> Aff (exception :: EXCEPTION | eff) StopTaskResponse
```

<p>Stops a running task.</p> <p>When <a>StopTask</a> is called on a task, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a default 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <note> <p>The default 30-second timeout can be configured on the Amazon ECS container agent with the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>

#### `submitContainerStateChange`

``` purescript
submitContainerStateChange :: forall eff. SubmitContainerStateChangeRequest -> Aff (exception :: EXCEPTION | eff) SubmitContainerStateChangeResponse
```

<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a container changed states.</p>

#### `submitTaskStateChange`

``` purescript
submitTaskStateChange :: forall eff. SubmitTaskStateChangeRequest -> Aff (exception :: EXCEPTION | eff) SubmitTaskStateChangeResponse
```

<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a task changed states.</p>

#### `updateContainerAgent`

``` purescript
updateContainerAgent :: forall eff. UpdateContainerAgentRequest -> Aff (exception :: EXCEPTION | eff) UpdateContainerAgentResponse
```

<p>Updates the Amazon ECS container agent on a specified container instance. Updating the Amazon ECS container agent does not interrupt running tasks or services on the container instance. The process for updating the agent differs depending on whether your container instance was launched with the Amazon ECS-optimized AMI or another operating system.</p> <p> <code>UpdateContainerAgent</code> requires the Amazon ECS-optimized AMI or Amazon Linux with the <code>ecs-init</code> service installed and running. For help updating the Amazon ECS container agent on other operating systems, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>

#### `updateContainerInstancesState`

``` purescript
updateContainerInstancesState :: forall eff. UpdateContainerInstancesStateRequest -> Aff (exception :: EXCEPTION | eff) UpdateContainerInstancesStateResponse
```

<p>Modifies the status of an Amazon ECS container instance.</p> <p>You can change the status of a container instance to <code>DRAINING</code> to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size. </p> <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the <code>PENDING</code> state are stopped immediately.</p> <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are stopped and replaced according to the service's deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You can change the deployment configuration of your service using <a>UpdateService</a>.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during task replacement. For example, <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if <code>desiredCount</code> of four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained (provided that the cluster resources required to do this are available). If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.</p> </li> </ul> <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service are not affected; you must wait for them to finish or stop them manually.</p> <p>A container instance has completed draining when it has no more <code>RUNNING</code> tasks. You can verify this using <a>ListTasks</a>.</p> <p>When you set a container instance to <code>ACTIVE</code>, the Amazon ECS scheduler can begin scheduling tasks on the instance again.</p>

#### `updateService`

``` purescript
updateService :: forall eff. UpdateServiceRequest -> Aff (exception :: EXCEPTION | eff) UpdateServiceResponse
```

<p>Modifies the desired count, deployment configuration, network configuration, or task definition used in a service.</p> <p>You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new <code>desiredCount</code> parameter.</p> <p>You can use <a>UpdateService</a> to modify your task definition and deploy a new version of your service.</p> <p>You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>, to determine the deployment strategy.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during a deployment. For example, if <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if <code>desiredCount</code> is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).</p> </li> </ul> <p>When <a>UpdateService</a> stops a task during a deployment, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul> <p>When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic: </p> <ul> <li> <p>Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.</p> </li> <li> <p>Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.</p> </li> </ul>

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
  = Attachment { id :: NullOrUndefined (String), "type" :: NullOrUndefined (String), status :: NullOrUndefined (String), details :: NullOrUndefined (AttachmentDetails) }
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
newAttachment' :: ({ id :: NullOrUndefined (String), "type" :: NullOrUndefined (String), status :: NullOrUndefined (String), details :: NullOrUndefined (AttachmentDetails) } -> { id :: NullOrUndefined (String), "type" :: NullOrUndefined (String), status :: NullOrUndefined (String), details :: NullOrUndefined (AttachmentDetails) }) -> Attachment
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
  = Attribute { name :: String, value :: NullOrUndefined (String), targetType :: NullOrUndefined (TargetType), targetId :: NullOrUndefined (String) }
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
newAttribute' :: String -> ({ name :: String, value :: NullOrUndefined (String), targetType :: NullOrUndefined (TargetType), targetId :: NullOrUndefined (String) } -> { name :: String, value :: NullOrUndefined (String), targetType :: NullOrUndefined (TargetType), targetId :: NullOrUndefined (String) }) -> Attribute
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
  = AwsVpcConfiguration { subnets :: StringList, securityGroups :: NullOrUndefined (StringList), assignPublicIp :: NullOrUndefined (AssignPublicIp) }
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
newAwsVpcConfiguration' :: StringList -> ({ subnets :: StringList, securityGroups :: NullOrUndefined (StringList), assignPublicIp :: NullOrUndefined (AssignPublicIp) } -> { subnets :: StringList, securityGroups :: NullOrUndefined (StringList), assignPublicIp :: NullOrUndefined (AssignPublicIp) }) -> AwsVpcConfiguration
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
  = ClientException { message :: NullOrUndefined (String) }
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
newClientException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ClientException
```

Constructs ClientException's fields from required parameters

#### `Cluster`

``` purescript
newtype Cluster
  = Cluster { clusterArn :: NullOrUndefined (String), clusterName :: NullOrUndefined (String), status :: NullOrUndefined (String), registeredContainerInstancesCount :: NullOrUndefined (Int), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), activeServicesCount :: NullOrUndefined (Int), statistics :: NullOrUndefined (Statistics) }
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
newCluster' :: ({ clusterArn :: NullOrUndefined (String), clusterName :: NullOrUndefined (String), status :: NullOrUndefined (String), registeredContainerInstancesCount :: NullOrUndefined (Int), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), activeServicesCount :: NullOrUndefined (Int), statistics :: NullOrUndefined (Statistics) } -> { clusterArn :: NullOrUndefined (String), clusterName :: NullOrUndefined (String), status :: NullOrUndefined (String), registeredContainerInstancesCount :: NullOrUndefined (Int), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), activeServicesCount :: NullOrUndefined (Int), statistics :: NullOrUndefined (Statistics) }) -> Cluster
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
  = Container { containerArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), name :: NullOrUndefined (String), lastStatus :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings), networkInterfaces :: NullOrUndefined (NetworkInterfaces), healthStatus :: NullOrUndefined (HealthStatus) }
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
newContainer' :: ({ containerArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), name :: NullOrUndefined (String), lastStatus :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings), networkInterfaces :: NullOrUndefined (NetworkInterfaces), healthStatus :: NullOrUndefined (HealthStatus) } -> { containerArn :: NullOrUndefined (String), taskArn :: NullOrUndefined (String), name :: NullOrUndefined (String), lastStatus :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings), networkInterfaces :: NullOrUndefined (NetworkInterfaces), healthStatus :: NullOrUndefined (HealthStatus) }) -> Container
```

Constructs Container's fields from required parameters

#### `ContainerDefinition`

``` purescript
newtype ContainerDefinition
  = ContainerDefinition { name :: NullOrUndefined (String), image :: NullOrUndefined (String), cpu :: NullOrUndefined (Int), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger), links :: NullOrUndefined (StringList), portMappings :: NullOrUndefined (PortMappingList), essential :: NullOrUndefined (BoxedBoolean), entryPoint :: NullOrUndefined (StringList), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPointList), volumesFrom :: NullOrUndefined (VolumeFromList), linuxParameters :: NullOrUndefined (LinuxParameters), hostname :: NullOrUndefined (String), user :: NullOrUndefined (String), workingDirectory :: NullOrUndefined (String), disableNetworking :: NullOrUndefined (BoxedBoolean), privileged :: NullOrUndefined (BoxedBoolean), readonlyRootFilesystem :: NullOrUndefined (BoxedBoolean), dnsServers :: NullOrUndefined (StringList), dnsSearchDomains :: NullOrUndefined (StringList), extraHosts :: NullOrUndefined (HostEntryList), dockerSecurityOptions :: NullOrUndefined (StringList), dockerLabels :: NullOrUndefined (DockerLabelsMap), ulimits :: NullOrUndefined (UlimitList), logConfiguration :: NullOrUndefined (LogConfiguration), healthCheck :: NullOrUndefined (HealthCheck) }
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
newContainerDefinition' :: ({ name :: NullOrUndefined (String), image :: NullOrUndefined (String), cpu :: NullOrUndefined (Int), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger), links :: NullOrUndefined (StringList), portMappings :: NullOrUndefined (PortMappingList), essential :: NullOrUndefined (BoxedBoolean), entryPoint :: NullOrUndefined (StringList), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPointList), volumesFrom :: NullOrUndefined (VolumeFromList), linuxParameters :: NullOrUndefined (LinuxParameters), hostname :: NullOrUndefined (String), user :: NullOrUndefined (String), workingDirectory :: NullOrUndefined (String), disableNetworking :: NullOrUndefined (BoxedBoolean), privileged :: NullOrUndefined (BoxedBoolean), readonlyRootFilesystem :: NullOrUndefined (BoxedBoolean), dnsServers :: NullOrUndefined (StringList), dnsSearchDomains :: NullOrUndefined (StringList), extraHosts :: NullOrUndefined (HostEntryList), dockerSecurityOptions :: NullOrUndefined (StringList), dockerLabels :: NullOrUndefined (DockerLabelsMap), ulimits :: NullOrUndefined (UlimitList), logConfiguration :: NullOrUndefined (LogConfiguration), healthCheck :: NullOrUndefined (HealthCheck) } -> { name :: NullOrUndefined (String), image :: NullOrUndefined (String), cpu :: NullOrUndefined (Int), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger), links :: NullOrUndefined (StringList), portMappings :: NullOrUndefined (PortMappingList), essential :: NullOrUndefined (BoxedBoolean), entryPoint :: NullOrUndefined (StringList), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), mountPoints :: NullOrUndefined (MountPointList), volumesFrom :: NullOrUndefined (VolumeFromList), linuxParameters :: NullOrUndefined (LinuxParameters), hostname :: NullOrUndefined (String), user :: NullOrUndefined (String), workingDirectory :: NullOrUndefined (String), disableNetworking :: NullOrUndefined (BoxedBoolean), privileged :: NullOrUndefined (BoxedBoolean), readonlyRootFilesystem :: NullOrUndefined (BoxedBoolean), dnsServers :: NullOrUndefined (StringList), dnsSearchDomains :: NullOrUndefined (StringList), extraHosts :: NullOrUndefined (HostEntryList), dockerSecurityOptions :: NullOrUndefined (StringList), dockerLabels :: NullOrUndefined (DockerLabelsMap), ulimits :: NullOrUndefined (UlimitList), logConfiguration :: NullOrUndefined (LogConfiguration), healthCheck :: NullOrUndefined (HealthCheck) }) -> ContainerDefinition
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
  = ContainerInstance { containerInstanceArn :: NullOrUndefined (String), ec2InstanceId :: NullOrUndefined (String), version :: NullOrUndefined (Number), versionInfo :: NullOrUndefined (VersionInfo), remainingResources :: NullOrUndefined (Resources), registeredResources :: NullOrUndefined (Resources), status :: NullOrUndefined (String), agentConnected :: NullOrUndefined (Boolean), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), agentUpdateStatus :: NullOrUndefined (AgentUpdateStatus), attributes :: NullOrUndefined (Attributes), registeredAt :: NullOrUndefined (Timestamp), attachments :: NullOrUndefined (Attachments) }
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
newContainerInstance' :: ({ containerInstanceArn :: NullOrUndefined (String), ec2InstanceId :: NullOrUndefined (String), version :: NullOrUndefined (Number), versionInfo :: NullOrUndefined (VersionInfo), remainingResources :: NullOrUndefined (Resources), registeredResources :: NullOrUndefined (Resources), status :: NullOrUndefined (String), agentConnected :: NullOrUndefined (Boolean), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), agentUpdateStatus :: NullOrUndefined (AgentUpdateStatus), attributes :: NullOrUndefined (Attributes), registeredAt :: NullOrUndefined (Timestamp), attachments :: NullOrUndefined (Attachments) } -> { containerInstanceArn :: NullOrUndefined (String), ec2InstanceId :: NullOrUndefined (String), version :: NullOrUndefined (Number), versionInfo :: NullOrUndefined (VersionInfo), remainingResources :: NullOrUndefined (Resources), registeredResources :: NullOrUndefined (Resources), status :: NullOrUndefined (String), agentConnected :: NullOrUndefined (Boolean), runningTasksCount :: NullOrUndefined (Int), pendingTasksCount :: NullOrUndefined (Int), agentUpdateStatus :: NullOrUndefined (AgentUpdateStatus), attributes :: NullOrUndefined (Attributes), registeredAt :: NullOrUndefined (Timestamp), attachments :: NullOrUndefined (Attachments) }) -> ContainerInstance
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
  = ContainerOverride { name :: NullOrUndefined (String), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), cpu :: NullOrUndefined (BoxedInteger), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger) }
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
newContainerOverride' :: ({ name :: NullOrUndefined (String), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), cpu :: NullOrUndefined (BoxedInteger), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger) } -> { name :: NullOrUndefined (String), command :: NullOrUndefined (StringList), environment :: NullOrUndefined (EnvironmentVariables), cpu :: NullOrUndefined (BoxedInteger), memory :: NullOrUndefined (BoxedInteger), memoryReservation :: NullOrUndefined (BoxedInteger) }) -> ContainerOverride
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
  = ContainerStateChange { containerName :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), networkBindings :: NullOrUndefined (NetworkBindings), reason :: NullOrUndefined (String), status :: NullOrUndefined (String) }
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
newContainerStateChange' :: ({ containerName :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), networkBindings :: NullOrUndefined (NetworkBindings), reason :: NullOrUndefined (String), status :: NullOrUndefined (String) } -> { containerName :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), networkBindings :: NullOrUndefined (NetworkBindings), reason :: NullOrUndefined (String), status :: NullOrUndefined (String) }) -> ContainerStateChange
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
  = CreateClusterRequest { clusterName :: NullOrUndefined (String) }
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
newCreateClusterRequest' :: ({ clusterName :: NullOrUndefined (String) } -> { clusterName :: NullOrUndefined (String) }) -> CreateClusterRequest
```

Constructs CreateClusterRequest's fields from required parameters

#### `CreateClusterResponse`

``` purescript
newtype CreateClusterResponse
  = CreateClusterResponse { cluster :: NullOrUndefined (Cluster) }
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
newCreateClusterResponse' :: ({ cluster :: NullOrUndefined (Cluster) } -> { cluster :: NullOrUndefined (Cluster) }) -> CreateClusterResponse
```

Constructs CreateClusterResponse's fields from required parameters

#### `CreateServiceRequest`

``` purescript
newtype CreateServiceRequest
  = CreateServiceRequest { cluster :: NullOrUndefined (String), serviceName :: String, taskDefinition :: String, loadBalancers :: NullOrUndefined (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), role :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }
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
newCreateServiceRequest' :: BoxedInteger -> String -> String -> ({ cluster :: NullOrUndefined (String), serviceName :: String, taskDefinition :: String, loadBalancers :: NullOrUndefined (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), role :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) } -> { cluster :: NullOrUndefined (String), serviceName :: String, taskDefinition :: String, loadBalancers :: NullOrUndefined (LoadBalancers), desiredCount :: BoxedInteger, clientToken :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), role :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }) -> CreateServiceRequest
```

Constructs CreateServiceRequest's fields from required parameters

#### `CreateServiceResponse`

``` purescript
newtype CreateServiceResponse
  = CreateServiceResponse { service :: NullOrUndefined (Service) }
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
newCreateServiceResponse' :: ({ service :: NullOrUndefined (Service) } -> { service :: NullOrUndefined (Service) }) -> CreateServiceResponse
```

Constructs CreateServiceResponse's fields from required parameters

#### `DeleteAttributesRequest`

``` purescript
newtype DeleteAttributesRequest
  = DeleteAttributesRequest { cluster :: NullOrUndefined (String), attributes :: Attributes }
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
newDeleteAttributesRequest' :: Attributes -> ({ cluster :: NullOrUndefined (String), attributes :: Attributes } -> { cluster :: NullOrUndefined (String), attributes :: Attributes }) -> DeleteAttributesRequest
```

Constructs DeleteAttributesRequest's fields from required parameters

#### `DeleteAttributesResponse`

``` purescript
newtype DeleteAttributesResponse
  = DeleteAttributesResponse { attributes :: NullOrUndefined (Attributes) }
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
newDeleteAttributesResponse' :: ({ attributes :: NullOrUndefined (Attributes) } -> { attributes :: NullOrUndefined (Attributes) }) -> DeleteAttributesResponse
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
  = DeleteClusterResponse { cluster :: NullOrUndefined (Cluster) }
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
newDeleteClusterResponse' :: ({ cluster :: NullOrUndefined (Cluster) } -> { cluster :: NullOrUndefined (Cluster) }) -> DeleteClusterResponse
```

Constructs DeleteClusterResponse's fields from required parameters

#### `DeleteServiceRequest`

``` purescript
newtype DeleteServiceRequest
  = DeleteServiceRequest { cluster :: NullOrUndefined (String), service :: String }
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
newDeleteServiceRequest' :: String -> ({ cluster :: NullOrUndefined (String), service :: String } -> { cluster :: NullOrUndefined (String), service :: String }) -> DeleteServiceRequest
```

Constructs DeleteServiceRequest's fields from required parameters

#### `DeleteServiceResponse`

``` purescript
newtype DeleteServiceResponse
  = DeleteServiceResponse { service :: NullOrUndefined (Service) }
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
newDeleteServiceResponse' :: ({ service :: NullOrUndefined (Service) } -> { service :: NullOrUndefined (Service) }) -> DeleteServiceResponse
```

Constructs DeleteServiceResponse's fields from required parameters

#### `Deployment`

``` purescript
newtype Deployment
  = Deployment { id :: NullOrUndefined (String), status :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), createdAt :: NullOrUndefined (Timestamp), updatedAt :: NullOrUndefined (Timestamp), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }
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
newDeployment' :: ({ id :: NullOrUndefined (String), status :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), createdAt :: NullOrUndefined (Timestamp), updatedAt :: NullOrUndefined (Timestamp), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) } -> { id :: NullOrUndefined (String), status :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), createdAt :: NullOrUndefined (Timestamp), updatedAt :: NullOrUndefined (Timestamp), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }) -> Deployment
```

Constructs Deployment's fields from required parameters

#### `DeploymentConfiguration`

``` purescript
newtype DeploymentConfiguration
  = DeploymentConfiguration { maximumPercent :: NullOrUndefined (BoxedInteger), minimumHealthyPercent :: NullOrUndefined (BoxedInteger) }
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
newDeploymentConfiguration' :: ({ maximumPercent :: NullOrUndefined (BoxedInteger), minimumHealthyPercent :: NullOrUndefined (BoxedInteger) } -> { maximumPercent :: NullOrUndefined (BoxedInteger), minimumHealthyPercent :: NullOrUndefined (BoxedInteger) }) -> DeploymentConfiguration
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
  = DeregisterContainerInstanceRequest { cluster :: NullOrUndefined (String), containerInstance :: String, force :: NullOrUndefined (BoxedBoolean) }
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
newDeregisterContainerInstanceRequest' :: String -> ({ cluster :: NullOrUndefined (String), containerInstance :: String, force :: NullOrUndefined (BoxedBoolean) } -> { cluster :: NullOrUndefined (String), containerInstance :: String, force :: NullOrUndefined (BoxedBoolean) }) -> DeregisterContainerInstanceRequest
```

Constructs DeregisterContainerInstanceRequest's fields from required parameters

#### `DeregisterContainerInstanceResponse`

``` purescript
newtype DeregisterContainerInstanceResponse
  = DeregisterContainerInstanceResponse { containerInstance :: NullOrUndefined (ContainerInstance) }
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
newDeregisterContainerInstanceResponse' :: ({ containerInstance :: NullOrUndefined (ContainerInstance) } -> { containerInstance :: NullOrUndefined (ContainerInstance) }) -> DeregisterContainerInstanceResponse
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
  = DeregisterTaskDefinitionResponse { taskDefinition :: NullOrUndefined (TaskDefinition) }
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
newDeregisterTaskDefinitionResponse' :: ({ taskDefinition :: NullOrUndefined (TaskDefinition) } -> { taskDefinition :: NullOrUndefined (TaskDefinition) }) -> DeregisterTaskDefinitionResponse
```

Constructs DeregisterTaskDefinitionResponse's fields from required parameters

#### `DescribeClustersRequest`

``` purescript
newtype DescribeClustersRequest
  = DescribeClustersRequest { clusters :: NullOrUndefined (StringList), include :: NullOrUndefined (ClusterFieldList) }
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
newDescribeClustersRequest' :: ({ clusters :: NullOrUndefined (StringList), include :: NullOrUndefined (ClusterFieldList) } -> { clusters :: NullOrUndefined (StringList), include :: NullOrUndefined (ClusterFieldList) }) -> DescribeClustersRequest
```

Constructs DescribeClustersRequest's fields from required parameters

#### `DescribeClustersResponse`

``` purescript
newtype DescribeClustersResponse
  = DescribeClustersResponse { clusters :: NullOrUndefined (Clusters), failures :: NullOrUndefined (Failures) }
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
newDescribeClustersResponse' :: ({ clusters :: NullOrUndefined (Clusters), failures :: NullOrUndefined (Failures) } -> { clusters :: NullOrUndefined (Clusters), failures :: NullOrUndefined (Failures) }) -> DescribeClustersResponse
```

Constructs DescribeClustersResponse's fields from required parameters

#### `DescribeContainerInstancesRequest`

``` purescript
newtype DescribeContainerInstancesRequest
  = DescribeContainerInstancesRequest { cluster :: NullOrUndefined (String), containerInstances :: StringList }
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
newDescribeContainerInstancesRequest' :: StringList -> ({ cluster :: NullOrUndefined (String), containerInstances :: StringList } -> { cluster :: NullOrUndefined (String), containerInstances :: StringList }) -> DescribeContainerInstancesRequest
```

Constructs DescribeContainerInstancesRequest's fields from required parameters

#### `DescribeContainerInstancesResponse`

``` purescript
newtype DescribeContainerInstancesResponse
  = DescribeContainerInstancesResponse { containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) }
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
newDescribeContainerInstancesResponse' :: ({ containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) } -> { containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) }) -> DescribeContainerInstancesResponse
```

Constructs DescribeContainerInstancesResponse's fields from required parameters

#### `DescribeServicesRequest`

``` purescript
newtype DescribeServicesRequest
  = DescribeServicesRequest { cluster :: NullOrUndefined (String), services :: StringList }
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
newDescribeServicesRequest' :: StringList -> ({ cluster :: NullOrUndefined (String), services :: StringList } -> { cluster :: NullOrUndefined (String), services :: StringList }) -> DescribeServicesRequest
```

Constructs DescribeServicesRequest's fields from required parameters

#### `DescribeServicesResponse`

``` purescript
newtype DescribeServicesResponse
  = DescribeServicesResponse { services :: NullOrUndefined (Services), failures :: NullOrUndefined (Failures) }
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
newDescribeServicesResponse' :: ({ services :: NullOrUndefined (Services), failures :: NullOrUndefined (Failures) } -> { services :: NullOrUndefined (Services), failures :: NullOrUndefined (Failures) }) -> DescribeServicesResponse
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
  = DescribeTaskDefinitionResponse { taskDefinition :: NullOrUndefined (TaskDefinition) }
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
newDescribeTaskDefinitionResponse' :: ({ taskDefinition :: NullOrUndefined (TaskDefinition) } -> { taskDefinition :: NullOrUndefined (TaskDefinition) }) -> DescribeTaskDefinitionResponse
```

Constructs DescribeTaskDefinitionResponse's fields from required parameters

#### `DescribeTasksRequest`

``` purescript
newtype DescribeTasksRequest
  = DescribeTasksRequest { cluster :: NullOrUndefined (String), tasks :: StringList }
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
newDescribeTasksRequest' :: StringList -> ({ cluster :: NullOrUndefined (String), tasks :: StringList } -> { cluster :: NullOrUndefined (String), tasks :: StringList }) -> DescribeTasksRequest
```

Constructs DescribeTasksRequest's fields from required parameters

#### `DescribeTasksResponse`

``` purescript
newtype DescribeTasksResponse
  = DescribeTasksResponse { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }
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
newDescribeTasksResponse' :: ({ tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) } -> { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }) -> DescribeTasksResponse
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
  = Device { hostPath :: String, containerPath :: NullOrUndefined (String), permissions :: NullOrUndefined (DeviceCgroupPermissions) }
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
newDevice' :: String -> ({ hostPath :: String, containerPath :: NullOrUndefined (String), permissions :: NullOrUndefined (DeviceCgroupPermissions) } -> { hostPath :: String, containerPath :: NullOrUndefined (String), permissions :: NullOrUndefined (DeviceCgroupPermissions) }) -> Device
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
  = DiscoverPollEndpointRequest { containerInstance :: NullOrUndefined (String), cluster :: NullOrUndefined (String) }
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
newDiscoverPollEndpointRequest' :: ({ containerInstance :: NullOrUndefined (String), cluster :: NullOrUndefined (String) } -> { containerInstance :: NullOrUndefined (String), cluster :: NullOrUndefined (String) }) -> DiscoverPollEndpointRequest
```

Constructs DiscoverPollEndpointRequest's fields from required parameters

#### `DiscoverPollEndpointResponse`

``` purescript
newtype DiscoverPollEndpointResponse
  = DiscoverPollEndpointResponse { endpoint :: NullOrUndefined (String), telemetryEndpoint :: NullOrUndefined (String) }
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
newDiscoverPollEndpointResponse' :: ({ endpoint :: NullOrUndefined (String), telemetryEndpoint :: NullOrUndefined (String) } -> { endpoint :: NullOrUndefined (String), telemetryEndpoint :: NullOrUndefined (String) }) -> DiscoverPollEndpointResponse
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
  = Failure { arn :: NullOrUndefined (String), reason :: NullOrUndefined (String) }
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
newFailure' :: ({ arn :: NullOrUndefined (String), reason :: NullOrUndefined (String) } -> { arn :: NullOrUndefined (String), reason :: NullOrUndefined (String) }) -> Failure
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
  = HealthCheck { command :: StringList, interval :: NullOrUndefined (BoxedInteger), timeout :: NullOrUndefined (BoxedInteger), retries :: NullOrUndefined (BoxedInteger), startPeriod :: NullOrUndefined (BoxedInteger) }
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
newHealthCheck' :: StringList -> ({ command :: StringList, interval :: NullOrUndefined (BoxedInteger), timeout :: NullOrUndefined (BoxedInteger), retries :: NullOrUndefined (BoxedInteger), startPeriod :: NullOrUndefined (BoxedInteger) } -> { command :: StringList, interval :: NullOrUndefined (BoxedInteger), timeout :: NullOrUndefined (BoxedInteger), retries :: NullOrUndefined (BoxedInteger), startPeriod :: NullOrUndefined (BoxedInteger) }) -> HealthCheck
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
  = HostVolumeProperties { sourcePath :: NullOrUndefined (String) }
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
newHostVolumeProperties' :: ({ sourcePath :: NullOrUndefined (String) } -> { sourcePath :: NullOrUndefined (String) }) -> HostVolumeProperties
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
  = KernelCapabilities { add :: NullOrUndefined (StringList), drop :: NullOrUndefined (StringList) }
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
newKernelCapabilities' :: ({ add :: NullOrUndefined (StringList), drop :: NullOrUndefined (StringList) } -> { add :: NullOrUndefined (StringList), drop :: NullOrUndefined (StringList) }) -> KernelCapabilities
```

Constructs KernelCapabilities's fields from required parameters

#### `KeyValuePair`

``` purescript
newtype KeyValuePair
  = KeyValuePair { name :: NullOrUndefined (String), value :: NullOrUndefined (String) }
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
newKeyValuePair' :: ({ name :: NullOrUndefined (String), value :: NullOrUndefined (String) } -> { name :: NullOrUndefined (String), value :: NullOrUndefined (String) }) -> KeyValuePair
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
  = LinuxParameters { capabilities :: NullOrUndefined (KernelCapabilities), devices :: NullOrUndefined (DevicesList), initProcessEnabled :: NullOrUndefined (BoxedBoolean) }
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
newLinuxParameters' :: ({ capabilities :: NullOrUndefined (KernelCapabilities), devices :: NullOrUndefined (DevicesList), initProcessEnabled :: NullOrUndefined (BoxedBoolean) } -> { capabilities :: NullOrUndefined (KernelCapabilities), devices :: NullOrUndefined (DevicesList), initProcessEnabled :: NullOrUndefined (BoxedBoolean) }) -> LinuxParameters
```

Constructs LinuxParameters's fields from required parameters

#### `ListAttributesRequest`

``` purescript
newtype ListAttributesRequest
  = ListAttributesRequest { cluster :: NullOrUndefined (String), targetType :: TargetType, attributeName :: NullOrUndefined (String), attributeValue :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }
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
newListAttributesRequest' :: TargetType -> ({ cluster :: NullOrUndefined (String), targetType :: TargetType, attributeName :: NullOrUndefined (String), attributeValue :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) } -> { cluster :: NullOrUndefined (String), targetType :: TargetType, attributeName :: NullOrUndefined (String), attributeValue :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }) -> ListAttributesRequest
```

Constructs ListAttributesRequest's fields from required parameters

#### `ListAttributesResponse`

``` purescript
newtype ListAttributesResponse
  = ListAttributesResponse { attributes :: NullOrUndefined (Attributes), nextToken :: NullOrUndefined (String) }
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
newListAttributesResponse' :: ({ attributes :: NullOrUndefined (Attributes), nextToken :: NullOrUndefined (String) } -> { attributes :: NullOrUndefined (Attributes), nextToken :: NullOrUndefined (String) }) -> ListAttributesResponse
```

Constructs ListAttributesResponse's fields from required parameters

#### `ListClustersRequest`

``` purescript
newtype ListClustersRequest
  = ListClustersRequest { nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }
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
newListClustersRequest' :: ({ nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) } -> { nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }) -> ListClustersRequest
```

Constructs ListClustersRequest's fields from required parameters

#### `ListClustersResponse`

``` purescript
newtype ListClustersResponse
  = ListClustersResponse { clusterArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListClustersResponse' :: ({ clusterArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { clusterArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListClustersResponse
```

Constructs ListClustersResponse's fields from required parameters

#### `ListContainerInstancesRequest`

``` purescript
newtype ListContainerInstancesRequest
  = ListContainerInstancesRequest { cluster :: NullOrUndefined (String), filter :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), status :: NullOrUndefined (ContainerInstanceStatus) }
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
newListContainerInstancesRequest' :: ({ cluster :: NullOrUndefined (String), filter :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), status :: NullOrUndefined (ContainerInstanceStatus) } -> { cluster :: NullOrUndefined (String), filter :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), status :: NullOrUndefined (ContainerInstanceStatus) }) -> ListContainerInstancesRequest
```

Constructs ListContainerInstancesRequest's fields from required parameters

#### `ListContainerInstancesResponse`

``` purescript
newtype ListContainerInstancesResponse
  = ListContainerInstancesResponse { containerInstanceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListContainerInstancesResponse' :: ({ containerInstanceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { containerInstanceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListContainerInstancesResponse
```

Constructs ListContainerInstancesResponse's fields from required parameters

#### `ListServicesRequest`

``` purescript
newtype ListServicesRequest
  = ListServicesRequest { cluster :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), launchType :: NullOrUndefined (LaunchType) }
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
newListServicesRequest' :: ({ cluster :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), launchType :: NullOrUndefined (LaunchType) } -> { cluster :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), launchType :: NullOrUndefined (LaunchType) }) -> ListServicesRequest
```

Constructs ListServicesRequest's fields from required parameters

#### `ListServicesResponse`

``` purescript
newtype ListServicesResponse
  = ListServicesResponse { serviceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListServicesResponse' :: ({ serviceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { serviceArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListServicesResponse
```

Constructs ListServicesResponse's fields from required parameters

#### `ListTaskDefinitionFamiliesRequest`

``` purescript
newtype ListTaskDefinitionFamiliesRequest
  = ListTaskDefinitionFamiliesRequest { familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionFamilyStatus), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }
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
newListTaskDefinitionFamiliesRequest' :: ({ familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionFamilyStatus), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) } -> { familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionFamilyStatus), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }) -> ListTaskDefinitionFamiliesRequest
```

Constructs ListTaskDefinitionFamiliesRequest's fields from required parameters

#### `ListTaskDefinitionFamiliesResponse`

``` purescript
newtype ListTaskDefinitionFamiliesResponse
  = ListTaskDefinitionFamiliesResponse { families :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListTaskDefinitionFamiliesResponse' :: ({ families :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { families :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListTaskDefinitionFamiliesResponse
```

Constructs ListTaskDefinitionFamiliesResponse's fields from required parameters

#### `ListTaskDefinitionsRequest`

``` purescript
newtype ListTaskDefinitionsRequest
  = ListTaskDefinitionsRequest { familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionStatus), sort :: NullOrUndefined (SortOrder), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }
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
newListTaskDefinitionsRequest' :: ({ familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionStatus), sort :: NullOrUndefined (SortOrder), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) } -> { familyPrefix :: NullOrUndefined (String), status :: NullOrUndefined (TaskDefinitionStatus), sort :: NullOrUndefined (SortOrder), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger) }) -> ListTaskDefinitionsRequest
```

Constructs ListTaskDefinitionsRequest's fields from required parameters

#### `ListTaskDefinitionsResponse`

``` purescript
newtype ListTaskDefinitionsResponse
  = ListTaskDefinitionsResponse { taskDefinitionArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListTaskDefinitionsResponse' :: ({ taskDefinitionArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { taskDefinitionArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListTaskDefinitionsResponse
```

Constructs ListTaskDefinitionsResponse's fields from required parameters

#### `ListTasksRequest`

``` purescript
newtype ListTasksRequest
  = ListTasksRequest { cluster :: NullOrUndefined (String), containerInstance :: NullOrUndefined (String), family :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (DesiredStatus), launchType :: NullOrUndefined (LaunchType) }
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
newListTasksRequest' :: ({ cluster :: NullOrUndefined (String), containerInstance :: NullOrUndefined (String), family :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (DesiredStatus), launchType :: NullOrUndefined (LaunchType) } -> { cluster :: NullOrUndefined (String), containerInstance :: NullOrUndefined (String), family :: NullOrUndefined (String), nextToken :: NullOrUndefined (String), maxResults :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (DesiredStatus), launchType :: NullOrUndefined (LaunchType) }) -> ListTasksRequest
```

Constructs ListTasksRequest's fields from required parameters

#### `ListTasksResponse`

``` purescript
newtype ListTasksResponse
  = ListTasksResponse { taskArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }
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
newListTasksResponse' :: ({ taskArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) } -> { taskArns :: NullOrUndefined (StringList), nextToken :: NullOrUndefined (String) }) -> ListTasksResponse
```

Constructs ListTasksResponse's fields from required parameters

#### `LoadBalancer`

``` purescript
newtype LoadBalancer
  = LoadBalancer { targetGroupArn :: NullOrUndefined (String), loadBalancerName :: NullOrUndefined (String), containerName :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger) }
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
newLoadBalancer' :: ({ targetGroupArn :: NullOrUndefined (String), loadBalancerName :: NullOrUndefined (String), containerName :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger) } -> { targetGroupArn :: NullOrUndefined (String), loadBalancerName :: NullOrUndefined (String), containerName :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger) }) -> LoadBalancer
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
  = LogConfiguration { logDriver :: LogDriver, options :: NullOrUndefined (LogConfigurationOptionsMap) }
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
newLogConfiguration' :: LogDriver -> ({ logDriver :: LogDriver, options :: NullOrUndefined (LogConfigurationOptionsMap) } -> { logDriver :: LogDriver, options :: NullOrUndefined (LogConfigurationOptionsMap) }) -> LogConfiguration
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
  = MountPoint { sourceVolume :: NullOrUndefined (String), containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) }
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
newMountPoint' :: ({ sourceVolume :: NullOrUndefined (String), containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) } -> { sourceVolume :: NullOrUndefined (String), containerPath :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) }) -> MountPoint
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
  = NetworkBinding { bindIP :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) }
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
newNetworkBinding' :: ({ bindIP :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) } -> { bindIP :: NullOrUndefined (String), containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) }) -> NetworkBinding
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
  = NetworkConfiguration { awsvpcConfiguration :: NullOrUndefined (AwsVpcConfiguration) }
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
newNetworkConfiguration' :: ({ awsvpcConfiguration :: NullOrUndefined (AwsVpcConfiguration) } -> { awsvpcConfiguration :: NullOrUndefined (AwsVpcConfiguration) }) -> NetworkConfiguration
```

Constructs NetworkConfiguration's fields from required parameters

#### `NetworkInterface`

``` purescript
newtype NetworkInterface
  = NetworkInterface { attachmentId :: NullOrUndefined (String), privateIpv4Address :: NullOrUndefined (String), ipv6Address :: NullOrUndefined (String) }
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
newNetworkInterface' :: ({ attachmentId :: NullOrUndefined (String), privateIpv4Address :: NullOrUndefined (String), ipv6Address :: NullOrUndefined (String) } -> { attachmentId :: NullOrUndefined (String), privateIpv4Address :: NullOrUndefined (String), ipv6Address :: NullOrUndefined (String) }) -> NetworkInterface
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
  = PlacementConstraint { "type" :: NullOrUndefined (PlacementConstraintType), expression :: NullOrUndefined (String) }
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
newPlacementConstraint' :: ({ "type" :: NullOrUndefined (PlacementConstraintType), expression :: NullOrUndefined (String) } -> { "type" :: NullOrUndefined (PlacementConstraintType), expression :: NullOrUndefined (String) }) -> PlacementConstraint
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
  = PlacementStrategy { "type" :: NullOrUndefined (PlacementStrategyType), field :: NullOrUndefined (String) }
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
newPlacementStrategy' :: ({ "type" :: NullOrUndefined (PlacementStrategyType), field :: NullOrUndefined (String) } -> { "type" :: NullOrUndefined (PlacementStrategyType), field :: NullOrUndefined (String) }) -> PlacementStrategy
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
  = PortMapping { containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) }
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
newPortMapping' :: ({ containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) } -> { containerPort :: NullOrUndefined (BoxedInteger), hostPort :: NullOrUndefined (BoxedInteger), protocol :: NullOrUndefined (TransportProtocol) }) -> PortMapping
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
  = PutAttributesRequest { cluster :: NullOrUndefined (String), attributes :: Attributes }
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
newPutAttributesRequest' :: Attributes -> ({ cluster :: NullOrUndefined (String), attributes :: Attributes } -> { cluster :: NullOrUndefined (String), attributes :: Attributes }) -> PutAttributesRequest
```

Constructs PutAttributesRequest's fields from required parameters

#### `PutAttributesResponse`

``` purescript
newtype PutAttributesResponse
  = PutAttributesResponse { attributes :: NullOrUndefined (Attributes) }
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
newPutAttributesResponse' :: ({ attributes :: NullOrUndefined (Attributes) } -> { attributes :: NullOrUndefined (Attributes) }) -> PutAttributesResponse
```

Constructs PutAttributesResponse's fields from required parameters

#### `RegisterContainerInstanceRequest`

``` purescript
newtype RegisterContainerInstanceRequest
  = RegisterContainerInstanceRequest { cluster :: NullOrUndefined (String), instanceIdentityDocument :: NullOrUndefined (String), instanceIdentityDocumentSignature :: NullOrUndefined (String), totalResources :: NullOrUndefined (Resources), versionInfo :: NullOrUndefined (VersionInfo), containerInstanceArn :: NullOrUndefined (String), attributes :: NullOrUndefined (Attributes) }
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
newRegisterContainerInstanceRequest' :: ({ cluster :: NullOrUndefined (String), instanceIdentityDocument :: NullOrUndefined (String), instanceIdentityDocumentSignature :: NullOrUndefined (String), totalResources :: NullOrUndefined (Resources), versionInfo :: NullOrUndefined (VersionInfo), containerInstanceArn :: NullOrUndefined (String), attributes :: NullOrUndefined (Attributes) } -> { cluster :: NullOrUndefined (String), instanceIdentityDocument :: NullOrUndefined (String), instanceIdentityDocumentSignature :: NullOrUndefined (String), totalResources :: NullOrUndefined (Resources), versionInfo :: NullOrUndefined (VersionInfo), containerInstanceArn :: NullOrUndefined (String), attributes :: NullOrUndefined (Attributes) }) -> RegisterContainerInstanceRequest
```

Constructs RegisterContainerInstanceRequest's fields from required parameters

#### `RegisterContainerInstanceResponse`

``` purescript
newtype RegisterContainerInstanceResponse
  = RegisterContainerInstanceResponse { containerInstance :: NullOrUndefined (ContainerInstance) }
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
newRegisterContainerInstanceResponse' :: ({ containerInstance :: NullOrUndefined (ContainerInstance) } -> { containerInstance :: NullOrUndefined (ContainerInstance) }) -> RegisterContainerInstanceResponse
```

Constructs RegisterContainerInstanceResponse's fields from required parameters

#### `RegisterTaskDefinitionRequest`

``` purescript
newtype RegisterTaskDefinitionRequest
  = RegisterTaskDefinitionRequest { family :: String, taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: NullOrUndefined (VolumeList), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) }
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
newRegisterTaskDefinitionRequest' :: ContainerDefinitions -> String -> ({ family :: String, taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: NullOrUndefined (VolumeList), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) } -> { family :: String, taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), containerDefinitions :: ContainerDefinitions, volumes :: NullOrUndefined (VolumeList), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) }) -> RegisterTaskDefinitionRequest
```

Constructs RegisterTaskDefinitionRequest's fields from required parameters

#### `RegisterTaskDefinitionResponse`

``` purescript
newtype RegisterTaskDefinitionResponse
  = RegisterTaskDefinitionResponse { taskDefinition :: NullOrUndefined (TaskDefinition) }
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
newRegisterTaskDefinitionResponse' :: ({ taskDefinition :: NullOrUndefined (TaskDefinition) } -> { taskDefinition :: NullOrUndefined (TaskDefinition) }) -> RegisterTaskDefinitionResponse
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
  = Resource { name :: NullOrUndefined (String), "type" :: NullOrUndefined (String), doubleValue :: NullOrUndefined (Number), longValue :: NullOrUndefined (Number), integerValue :: NullOrUndefined (Int), stringSetValue :: NullOrUndefined (StringList) }
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
newResource' :: ({ name :: NullOrUndefined (String), "type" :: NullOrUndefined (String), doubleValue :: NullOrUndefined (Number), longValue :: NullOrUndefined (Number), integerValue :: NullOrUndefined (Int), stringSetValue :: NullOrUndefined (StringList) } -> { name :: NullOrUndefined (String), "type" :: NullOrUndefined (String), doubleValue :: NullOrUndefined (Number), longValue :: NullOrUndefined (Number), integerValue :: NullOrUndefined (Int), stringSetValue :: NullOrUndefined (StringList) }) -> Resource
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
  = RunTaskRequest { cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), count :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }
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
newRunTaskRequest' :: String -> ({ cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), count :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) } -> { cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), count :: NullOrUndefined (BoxedInteger), startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }) -> RunTaskRequest
```

Constructs RunTaskRequest's fields from required parameters

#### `RunTaskResponse`

``` purescript
newtype RunTaskResponse
  = RunTaskResponse { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }
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
newRunTaskResponse' :: ({ tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) } -> { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }) -> RunTaskResponse
```

Constructs RunTaskResponse's fields from required parameters

#### `ServerException`

``` purescript
newtype ServerException
  = ServerException { message :: NullOrUndefined (String) }
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
newServerException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> ServerException
```

Constructs ServerException's fields from required parameters

#### `Service`

``` purescript
newtype Service
  = Service { serviceArn :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), loadBalancers :: NullOrUndefined (LoadBalancers), status :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), deployments :: NullOrUndefined (Deployments), roleArn :: NullOrUndefined (String), events :: NullOrUndefined (ServiceEvents), createdAt :: NullOrUndefined (Timestamp), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }
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
newService' :: ({ serviceArn :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), loadBalancers :: NullOrUndefined (LoadBalancers), status :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), deployments :: NullOrUndefined (Deployments), roleArn :: NullOrUndefined (String), events :: NullOrUndefined (ServiceEvents), createdAt :: NullOrUndefined (Timestamp), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) } -> { serviceArn :: NullOrUndefined (String), serviceName :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), loadBalancers :: NullOrUndefined (LoadBalancers), status :: NullOrUndefined (String), desiredCount :: NullOrUndefined (Int), runningCount :: NullOrUndefined (Int), pendingCount :: NullOrUndefined (Int), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), deployments :: NullOrUndefined (Deployments), roleArn :: NullOrUndefined (String), events :: NullOrUndefined (ServiceEvents), createdAt :: NullOrUndefined (Timestamp), placementConstraints :: NullOrUndefined (PlacementConstraints), placementStrategy :: NullOrUndefined (PlacementStrategies), networkConfiguration :: NullOrUndefined (NetworkConfiguration), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceEvent`

``` purescript
newtype ServiceEvent
  = ServiceEvent { id :: NullOrUndefined (String), createdAt :: NullOrUndefined (Timestamp), message :: NullOrUndefined (String) }
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
newServiceEvent' :: ({ id :: NullOrUndefined (String), createdAt :: NullOrUndefined (Timestamp), message :: NullOrUndefined (String) } -> { id :: NullOrUndefined (String), createdAt :: NullOrUndefined (Timestamp), message :: NullOrUndefined (String) }) -> ServiceEvent
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
  = StartTaskRequest { cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), containerInstances :: StringList, startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }
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
newStartTaskRequest' :: StringList -> String -> ({ cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), containerInstances :: StringList, startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) } -> { cluster :: NullOrUndefined (String), taskDefinition :: String, overrides :: NullOrUndefined (TaskOverride), containerInstances :: StringList, startedBy :: NullOrUndefined (String), group :: NullOrUndefined (String), networkConfiguration :: NullOrUndefined (NetworkConfiguration) }) -> StartTaskRequest
```

Constructs StartTaskRequest's fields from required parameters

#### `StartTaskResponse`

``` purescript
newtype StartTaskResponse
  = StartTaskResponse { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }
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
newStartTaskResponse' :: ({ tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) } -> { tasks :: NullOrUndefined (Tasks), failures :: NullOrUndefined (Failures) }) -> StartTaskResponse
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
  = StopTaskRequest { cluster :: NullOrUndefined (String), task :: String, reason :: NullOrUndefined (String) }
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
newStopTaskRequest' :: String -> ({ cluster :: NullOrUndefined (String), task :: String, reason :: NullOrUndefined (String) } -> { cluster :: NullOrUndefined (String), task :: String, reason :: NullOrUndefined (String) }) -> StopTaskRequest
```

Constructs StopTaskRequest's fields from required parameters

#### `StopTaskResponse`

``` purescript
newtype StopTaskResponse
  = StopTaskResponse { task :: NullOrUndefined (Task) }
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
newStopTaskResponse' :: ({ task :: NullOrUndefined (Task) } -> { task :: NullOrUndefined (Task) }) -> StopTaskResponse
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
  = SubmitContainerStateChangeRequest { cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), containerName :: NullOrUndefined (String), status :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings) }
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
newSubmitContainerStateChangeRequest' :: ({ cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), containerName :: NullOrUndefined (String), status :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings) } -> { cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), containerName :: NullOrUndefined (String), status :: NullOrUndefined (String), exitCode :: NullOrUndefined (BoxedInteger), reason :: NullOrUndefined (String), networkBindings :: NullOrUndefined (NetworkBindings) }) -> SubmitContainerStateChangeRequest
```

Constructs SubmitContainerStateChangeRequest's fields from required parameters

#### `SubmitContainerStateChangeResponse`

``` purescript
newtype SubmitContainerStateChangeResponse
  = SubmitContainerStateChangeResponse { acknowledgment :: NullOrUndefined (String) }
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
newSubmitContainerStateChangeResponse' :: ({ acknowledgment :: NullOrUndefined (String) } -> { acknowledgment :: NullOrUndefined (String) }) -> SubmitContainerStateChangeResponse
```

Constructs SubmitContainerStateChangeResponse's fields from required parameters

#### `SubmitTaskStateChangeRequest`

``` purescript
newtype SubmitTaskStateChangeRequest
  = SubmitTaskStateChangeRequest { cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), status :: NullOrUndefined (String), reason :: NullOrUndefined (String), containers :: NullOrUndefined (ContainerStateChanges), attachments :: NullOrUndefined (AttachmentStateChanges), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp) }
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
newSubmitTaskStateChangeRequest' :: ({ cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), status :: NullOrUndefined (String), reason :: NullOrUndefined (String), containers :: NullOrUndefined (ContainerStateChanges), attachments :: NullOrUndefined (AttachmentStateChanges), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp) } -> { cluster :: NullOrUndefined (String), task :: NullOrUndefined (String), status :: NullOrUndefined (String), reason :: NullOrUndefined (String), containers :: NullOrUndefined (ContainerStateChanges), attachments :: NullOrUndefined (AttachmentStateChanges), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp) }) -> SubmitTaskStateChangeRequest
```

Constructs SubmitTaskStateChangeRequest's fields from required parameters

#### `SubmitTaskStateChangeResponse`

``` purescript
newtype SubmitTaskStateChangeResponse
  = SubmitTaskStateChangeResponse { acknowledgment :: NullOrUndefined (String) }
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
newSubmitTaskStateChangeResponse' :: ({ acknowledgment :: NullOrUndefined (String) } -> { acknowledgment :: NullOrUndefined (String) }) -> SubmitTaskStateChangeResponse
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
  = Task { taskArn :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), taskDefinitionArn :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), overrides :: NullOrUndefined (TaskOverride), lastStatus :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (String), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String), containers :: NullOrUndefined (Containers), startedBy :: NullOrUndefined (String), version :: NullOrUndefined (Number), stoppedReason :: NullOrUndefined (String), connectivity :: NullOrUndefined (Connectivity), connectivityAt :: NullOrUndefined (Timestamp), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp), createdAt :: NullOrUndefined (Timestamp), startedAt :: NullOrUndefined (Timestamp), stoppingAt :: NullOrUndefined (Timestamp), stoppedAt :: NullOrUndefined (Timestamp), group :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), attachments :: NullOrUndefined (Attachments), healthStatus :: NullOrUndefined (HealthStatus) }
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
newTask' :: ({ taskArn :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), taskDefinitionArn :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), overrides :: NullOrUndefined (TaskOverride), lastStatus :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (String), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String), containers :: NullOrUndefined (Containers), startedBy :: NullOrUndefined (String), version :: NullOrUndefined (Number), stoppedReason :: NullOrUndefined (String), connectivity :: NullOrUndefined (Connectivity), connectivityAt :: NullOrUndefined (Timestamp), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp), createdAt :: NullOrUndefined (Timestamp), startedAt :: NullOrUndefined (Timestamp), stoppingAt :: NullOrUndefined (Timestamp), stoppedAt :: NullOrUndefined (Timestamp), group :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), attachments :: NullOrUndefined (Attachments), healthStatus :: NullOrUndefined (HealthStatus) } -> { taskArn :: NullOrUndefined (String), clusterArn :: NullOrUndefined (String), taskDefinitionArn :: NullOrUndefined (String), containerInstanceArn :: NullOrUndefined (String), overrides :: NullOrUndefined (TaskOverride), lastStatus :: NullOrUndefined (String), desiredStatus :: NullOrUndefined (String), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String), containers :: NullOrUndefined (Containers), startedBy :: NullOrUndefined (String), version :: NullOrUndefined (Number), stoppedReason :: NullOrUndefined (String), connectivity :: NullOrUndefined (Connectivity), connectivityAt :: NullOrUndefined (Timestamp), pullStartedAt :: NullOrUndefined (Timestamp), pullStoppedAt :: NullOrUndefined (Timestamp), executionStoppedAt :: NullOrUndefined (Timestamp), createdAt :: NullOrUndefined (Timestamp), startedAt :: NullOrUndefined (Timestamp), stoppingAt :: NullOrUndefined (Timestamp), stoppedAt :: NullOrUndefined (Timestamp), group :: NullOrUndefined (String), launchType :: NullOrUndefined (LaunchType), platformVersion :: NullOrUndefined (String), attachments :: NullOrUndefined (Attachments), healthStatus :: NullOrUndefined (HealthStatus) }) -> Task
```

Constructs Task's fields from required parameters

#### `TaskDefinition`

``` purescript
newtype TaskDefinition
  = TaskDefinition { taskDefinitionArn :: NullOrUndefined (String), containerDefinitions :: NullOrUndefined (ContainerDefinitions), family :: NullOrUndefined (String), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), revision :: NullOrUndefined (Int), volumes :: NullOrUndefined (VolumeList), status :: NullOrUndefined (TaskDefinitionStatus), requiresAttributes :: NullOrUndefined (RequiresAttributes), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), compatibilities :: NullOrUndefined (CompatibilityList), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) }
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
newTaskDefinition' :: ({ taskDefinitionArn :: NullOrUndefined (String), containerDefinitions :: NullOrUndefined (ContainerDefinitions), family :: NullOrUndefined (String), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), revision :: NullOrUndefined (Int), volumes :: NullOrUndefined (VolumeList), status :: NullOrUndefined (TaskDefinitionStatus), requiresAttributes :: NullOrUndefined (RequiresAttributes), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), compatibilities :: NullOrUndefined (CompatibilityList), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) } -> { taskDefinitionArn :: NullOrUndefined (String), containerDefinitions :: NullOrUndefined (ContainerDefinitions), family :: NullOrUndefined (String), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String), networkMode :: NullOrUndefined (NetworkMode), revision :: NullOrUndefined (Int), volumes :: NullOrUndefined (VolumeList), status :: NullOrUndefined (TaskDefinitionStatus), requiresAttributes :: NullOrUndefined (RequiresAttributes), placementConstraints :: NullOrUndefined (TaskDefinitionPlacementConstraints), compatibilities :: NullOrUndefined (CompatibilityList), requiresCompatibilities :: NullOrUndefined (CompatibilityList), cpu :: NullOrUndefined (String), memory :: NullOrUndefined (String) }) -> TaskDefinition
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
  = TaskDefinitionPlacementConstraint { "type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType), expression :: NullOrUndefined (String) }
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
newTaskDefinitionPlacementConstraint' :: ({ "type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType), expression :: NullOrUndefined (String) } -> { "type" :: NullOrUndefined (TaskDefinitionPlacementConstraintType), expression :: NullOrUndefined (String) }) -> TaskDefinitionPlacementConstraint
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
  = TaskOverride { containerOverrides :: NullOrUndefined (ContainerOverrides), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String) }
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
newTaskOverride' :: ({ containerOverrides :: NullOrUndefined (ContainerOverrides), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String) } -> { containerOverrides :: NullOrUndefined (ContainerOverrides), taskRoleArn :: NullOrUndefined (String), executionRoleArn :: NullOrUndefined (String) }) -> TaskOverride
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
  = UpdateContainerAgentRequest { cluster :: NullOrUndefined (String), containerInstance :: String }
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
newUpdateContainerAgentRequest' :: String -> ({ cluster :: NullOrUndefined (String), containerInstance :: String } -> { cluster :: NullOrUndefined (String), containerInstance :: String }) -> UpdateContainerAgentRequest
```

Constructs UpdateContainerAgentRequest's fields from required parameters

#### `UpdateContainerAgentResponse`

``` purescript
newtype UpdateContainerAgentResponse
  = UpdateContainerAgentResponse { containerInstance :: NullOrUndefined (ContainerInstance) }
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
newUpdateContainerAgentResponse' :: ({ containerInstance :: NullOrUndefined (ContainerInstance) } -> { containerInstance :: NullOrUndefined (ContainerInstance) }) -> UpdateContainerAgentResponse
```

Constructs UpdateContainerAgentResponse's fields from required parameters

#### `UpdateContainerInstancesStateRequest`

``` purescript
newtype UpdateContainerInstancesStateRequest
  = UpdateContainerInstancesStateRequest { cluster :: NullOrUndefined (String), containerInstances :: StringList, status :: ContainerInstanceStatus }
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
newUpdateContainerInstancesStateRequest' :: StringList -> ContainerInstanceStatus -> ({ cluster :: NullOrUndefined (String), containerInstances :: StringList, status :: ContainerInstanceStatus } -> { cluster :: NullOrUndefined (String), containerInstances :: StringList, status :: ContainerInstanceStatus }) -> UpdateContainerInstancesStateRequest
```

Constructs UpdateContainerInstancesStateRequest's fields from required parameters

#### `UpdateContainerInstancesStateResponse`

``` purescript
newtype UpdateContainerInstancesStateResponse
  = UpdateContainerInstancesStateResponse { containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) }
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
newUpdateContainerInstancesStateResponse' :: ({ containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) } -> { containerInstances :: NullOrUndefined (ContainerInstances), failures :: NullOrUndefined (Failures) }) -> UpdateContainerInstancesStateResponse
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
  = UpdateServiceRequest { cluster :: NullOrUndefined (String), service :: String, desiredCount :: NullOrUndefined (BoxedInteger), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), networkConfiguration :: NullOrUndefined (NetworkConfiguration), platformVersion :: NullOrUndefined (String), forceNewDeployment :: NullOrUndefined (Boolean), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }
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
newUpdateServiceRequest' :: String -> ({ cluster :: NullOrUndefined (String), service :: String, desiredCount :: NullOrUndefined (BoxedInteger), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), networkConfiguration :: NullOrUndefined (NetworkConfiguration), platformVersion :: NullOrUndefined (String), forceNewDeployment :: NullOrUndefined (Boolean), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) } -> { cluster :: NullOrUndefined (String), service :: String, desiredCount :: NullOrUndefined (BoxedInteger), taskDefinition :: NullOrUndefined (String), deploymentConfiguration :: NullOrUndefined (DeploymentConfiguration), networkConfiguration :: NullOrUndefined (NetworkConfiguration), platformVersion :: NullOrUndefined (String), forceNewDeployment :: NullOrUndefined (Boolean), healthCheckGracePeriodSeconds :: NullOrUndefined (BoxedInteger) }) -> UpdateServiceRequest
```

Constructs UpdateServiceRequest's fields from required parameters

#### `UpdateServiceResponse`

``` purescript
newtype UpdateServiceResponse
  = UpdateServiceResponse { service :: NullOrUndefined (Service) }
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
newUpdateServiceResponse' :: ({ service :: NullOrUndefined (Service) } -> { service :: NullOrUndefined (Service) }) -> UpdateServiceResponse
```

Constructs UpdateServiceResponse's fields from required parameters

#### `VersionInfo`

``` purescript
newtype VersionInfo
  = VersionInfo { agentVersion :: NullOrUndefined (String), agentHash :: NullOrUndefined (String), dockerVersion :: NullOrUndefined (String) }
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
newVersionInfo' :: ({ agentVersion :: NullOrUndefined (String), agentHash :: NullOrUndefined (String), dockerVersion :: NullOrUndefined (String) } -> { agentVersion :: NullOrUndefined (String), agentHash :: NullOrUndefined (String), dockerVersion :: NullOrUndefined (String) }) -> VersionInfo
```

Constructs VersionInfo's fields from required parameters

#### `Volume`

``` purescript
newtype Volume
  = Volume { name :: NullOrUndefined (String), host :: NullOrUndefined (HostVolumeProperties) }
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
newVolume' :: ({ name :: NullOrUndefined (String), host :: NullOrUndefined (HostVolumeProperties) } -> { name :: NullOrUndefined (String), host :: NullOrUndefined (HostVolumeProperties) }) -> Volume
```

Constructs Volume's fields from required parameters

#### `VolumeFrom`

``` purescript
newtype VolumeFrom
  = VolumeFrom { sourceContainer :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) }
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
newVolumeFrom' :: ({ sourceContainer :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) } -> { sourceContainer :: NullOrUndefined (String), readOnly :: NullOrUndefined (BoxedBoolean) }) -> VolumeFrom
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


