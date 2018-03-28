
module AWS.ECS.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ECS as ECS
import AWS.ECS.Types as ECSTypes


-- | <p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code> cluster when you launch your first container instance. However, you can create your own cluster with a unique name with the <code>CreateCluster</code> action.</p> <note> <p>When you call the <a>CreateCluster</a> API operation, Amazon ECS attempts to create the service-linked role for your account so that required resources in other AWS services can be managed on your behalf. However, if the IAM user that makes the call does not have permissions to create the service-linked role, it is not created. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>
createCluster :: forall eff. ECS.Service -> ECSTypes.CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.CreateClusterResponse
createCluster (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCluster"


-- | <p>Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below <code>desiredCount</code>, Amazon ECS spawns another copy of the task in the specified cluster. To update an existing service, see <a>UpdateService</a>.</p> <p>In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind a load balancer. The load balancer distributes traffic across the tasks that are associated with the service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service Load Balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can optionally specify a deployment configuration for your service. During a deployment, the service scheduler uses the <code>minimumHealthyPercent</code> and <code>maximumPercent</code> parameters to determine the deployment strategy. The deployment is triggered by changing the task definition or the desired count of a service with an <a>UpdateService</a> operation.</p> <p>The <code>minimumHealthyPercent</code> represents a lower limit on the number of your service's tasks that must remain in the <code>RUNNING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded up to the nearest integer). This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a <code>desiredCount</code> of four tasks and a <code>minimumHealthyPercent</code> of 50%, the scheduler can stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that <i>do not</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that <i>do</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer. The default value for <code>minimumHealthyPercent</code> is 50% in the console and 100% for the AWS CLI, the AWS SDKs, and the APIs.</p> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of your service's tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded down to the nearest integer). This parameter enables you to define the deployment batch size. For example, if your service has a <code>desiredCount</code> of four tasks and a <code>maximumPercent</code> value of 200%, the scheduler can start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for <code>maximumPercent</code> is 200%.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy) with the <code>placementStrategy</code> parameter):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul>
createService :: forall eff. ECS.Service -> ECSTypes.CreateServiceRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.CreateServiceResponse
createService (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createService"


-- | <p>Deletes one or more custom attributes from an Amazon ECS resource.</p>
deleteAttributes :: forall eff. ECS.Service -> ECSTypes.DeleteAttributesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DeleteAttributesResponse
deleteAttributes (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteAttributes"


-- | <p>Deletes the specified cluster. You must deregister all container instances from this cluster before you may delete it. You can list the container instances in a cluster with <a>ListContainerInstances</a> and deregister them with <a>DeregisterContainerInstance</a>.</p>
deleteCluster :: forall eff. ECS.Service -> ECSTypes.DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DeleteClusterResponse
deleteCluster (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCluster"


-- | <p>Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see <a>UpdateService</a>.</p> <note> <p>When you delete a service, if there are still running tasks that require cleanup, the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the service is no longer visible in the console or in <a>ListServices</a> API operations. After the tasks have stopped, then the service status moves from <code>DRAINING</code> to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or <code>INACTIVE</code> status can still be viewed with <a>DescribeServices</a> API operations. However, in the future, <code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record keeping, and <a>DescribeServices</a> API operations on those services return a <code>ServiceNotFoundException</code> error.</p> </note>
deleteService :: forall eff. ECS.Service -> ECSTypes.DeleteServiceRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DeleteServiceResponse
deleteService (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteService"


-- | <p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is no longer available to run tasks.</p> <p>If you intend to use the container instance for some other purpose after deregistration, you should stop all of the tasks running on the container instance before deregistration. That prevents any orphaned tasks from consuming resources.</p> <p>Deregistering a container instance removes the instance from a cluster, but it does not terminate the EC2 instance; if you are finished using the instance, be sure to terminate it in the Amazon EC2 console to stop billing.</p> <note> <p>If you terminate a running container instance, Amazon ECS automatically deregisters the instance from your cluster (stopped container instances or instances with disconnected agents are not automatically deregistered when terminated).</p> </note>
deregisterContainerInstance :: forall eff. ECS.Service -> ECSTypes.DeregisterContainerInstanceRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DeregisterContainerInstanceResponse
deregisterContainerInstance (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterContainerInstance"


-- | <p>Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that reference an <code>INACTIVE</code> task definition continue to run without disruption. Existing services that reference an <code>INACTIVE</code> task definition can still scale up or down by modifying the service's desired count.</p> <p>You cannot use an <code>INACTIVE</code> task definition to run new tasks or create new services, and you cannot update an existing service to reference an <code>INACTIVE</code> task definition (although there may be up to a 10-minute window following deregistration where these restrictions have not yet taken effect).</p> <note> <p>At this time, <code>INACTIVE</code> task definitions remain discoverable in your account indefinitely; however, this behavior is subject to change in the future, so you should not rely on <code>INACTIVE</code> task definitions persisting beyond the lifecycle of any associated tasks and services.</p> </note>
deregisterTaskDefinition :: forall eff. ECS.Service -> ECSTypes.DeregisterTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DeregisterTaskDefinitionResponse
deregisterTaskDefinition (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterTaskDefinition"


-- | <p>Describes one or more of your clusters.</p>
describeClusters :: forall eff. ECS.Service -> ECSTypes.DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DescribeClustersResponse
describeClusters (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeClusters"


-- | <p>Describes Amazon Elastic Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.</p>
describeContainerInstances :: forall eff. ECS.Service -> ECSTypes.DescribeContainerInstancesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DescribeContainerInstancesResponse
describeContainerInstances (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeContainerInstances"


-- | <p>Describes the specified services running in your cluster.</p>
describeServices :: forall eff. ECS.Service -> ECSTypes.DescribeServicesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DescribeServicesResponse
describeServices (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeServices"


-- | <p>Describes a task definition. You can specify a <code>family</code> and <code>revision</code> to find information about a specific task definition, or you can simply specify the family to find the latest <code>ACTIVE</code> revision in that family.</p> <note> <p>You can only describe <code>INACTIVE</code> task definitions while an active task or service references them.</p> </note>
describeTaskDefinition :: forall eff. ECS.Service -> ECSTypes.DescribeTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DescribeTaskDefinitionResponse
describeTaskDefinition (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTaskDefinition"


-- | <p>Describes a specified task or tasks.</p>
describeTasks :: forall eff. ECS.Service -> ECSTypes.DescribeTasksRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DescribeTasksResponse
describeTasks (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTasks"


-- | <note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Returns an endpoint for the Amazon ECS agent to poll for updates.</p>
discoverPollEndpoint :: forall eff. ECS.Service -> ECSTypes.DiscoverPollEndpointRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.DiscoverPollEndpointResponse
discoverPollEndpoint (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "discoverPollEndpoint"


-- | <p>Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, <code>ListAttributes</code> returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (<code>ecs.os-type=linux</code>). </p>
listAttributes :: forall eff. ECS.Service -> ECSTypes.ListAttributesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListAttributesResponse
listAttributes (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttributes"


-- | <p>Returns a list of existing clusters.</p>
listClusters :: forall eff. ECS.Service -> ECSTypes.ListClustersRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListClustersResponse
listClusters (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listClusters"


-- | <p>Returns a list of container instances in a specified cluster. You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements inside the <code>filter</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
listContainerInstances :: forall eff. ECS.Service -> ECSTypes.ListContainerInstancesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListContainerInstancesResponse
listContainerInstances (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listContainerInstances"


-- | <p>Lists the services that are running in a specified cluster.</p>
listServices :: forall eff. ECS.Service -> ECSTypes.ListServicesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListServicesResponse
listServices (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listServices"


-- | <p>Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any <code>ACTIVE</code> task definition revisions).</p> <p>You can filter out task definition families that do not contain any <code>ACTIVE</code> task definition revisions by setting the <code>status</code> parameter to <code>ACTIVE</code>. You can also filter the results with the <code>familyPrefix</code> parameter.</p>
listTaskDefinitionFamilies :: forall eff. ECS.Service -> ECSTypes.ListTaskDefinitionFamiliesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListTaskDefinitionFamiliesResponse
listTaskDefinitionFamilies (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTaskDefinitionFamilies"


-- | <p>Returns a list of task definitions that are registered to your account. You can filter the results by family name with the <code>familyPrefix</code> parameter or by status with the <code>status</code> parameter.</p>
listTaskDefinitions :: forall eff. ECS.Service -> ECSTypes.ListTaskDefinitionsRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListTaskDefinitionsResponse
listTaskDefinitions (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTaskDefinitions"


-- | <p>Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the <code>family</code>, <code>containerInstance</code>, and <code>desiredStatus</code> parameters.</p> <p>Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour. </p>
listTasks :: forall eff. ECS.Service -> ECSTypes.ListTasksRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.ListTasksResponse
listTasks (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTasks"


-- | <p>Create or update an attribute on an Amazon ECS resource. If the attribute does not exist, it is created. If the attribute exists, its value is replaced with the specified value. To delete an attribute, use <a>DeleteAttributes</a>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
putAttributes :: forall eff. ECS.Service -> ECSTypes.PutAttributesRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.PutAttributesResponse
putAttributes (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putAttributes"


-- | <note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.</p>
registerContainerInstance :: forall eff. ECS.Service -> ECSTypes.RegisterContainerInstanceRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.RegisterContainerInstanceResponse
registerContainerInstance (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerContainerInstance"


-- | <p>Registers a new task definition from the supplied <code>family</code> and <code>containerDefinitions</code>. Optionally, you can add data volumes to your containers with the <code>volumes</code> parameter. For more information about task definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify an IAM role for your task with the <code>taskRoleArn</code> parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify a Docker networking mode for the containers in your task definition with the <code>networkMode</code> parameter. The available network modes correspond to those described in <a href="https://docs.docker.com/engine/reference/run/#/network-settings">Network settings</a> in the Docker run reference. If you specify the <code>awsvpc</code> network mode, the task is allocated an Elastic Network Interface, and you must specify a <a>NetworkConfiguration</a> when you create a service or run a task with the task definition. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
registerTaskDefinition :: forall eff. ECS.Service -> ECSTypes.RegisterTaskDefinitionRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.RegisterTaskDefinitionResponse
registerTaskDefinition (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerTaskDefinition"


-- | <p>Starts a new task using the specified task definition.</p> <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>Alternatively, you can use <a>StartTask</a> to use your own scheduler or place tasks manually on specific container instances.</p> <p>The Amazon ECS API follows an eventual consistency model, due to the distributed nature of the system supporting the API. This means that the result of an API command you run that affects your Amazon ECS resources might not be immediately visible to all subsequent commands you run. You should keep this in mind when you carry out an API command that immediately follows a previous API command.</p> <p>To manage eventual consistency, you can do the following:</p> <ul> <li> <p>Confirm the state of the resource before you run a command to modify it. Run the DescribeTasks command using an exponential backoff algorithm to ensure that you allow enough time for the previous command to propagate through the system. To do this, run the DescribeTasks command repeatedly, starting with a couple of seconds of wait time, and increasing gradually up to five minutes of wait time.</p> </li> <li> <p>Add wait time between subsequent commands, even if the DescribeTasks command returns an accurate response. Apply an exponential backoff algorithm starting with a couple of seconds of wait time, and increase gradually up to about five minutes of wait time.</p> </li> </ul>
runTask :: forall eff. ECS.Service -> ECSTypes.RunTaskRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.RunTaskResponse
runTask (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "runTask"


-- | <p>Starts a new task from the specified task definition on the specified container instance or instances.</p> <p>Alternatively, you can use <a>RunTask</a> to place tasks for you. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
startTask :: forall eff. ECS.Service -> ECSTypes.StartTaskRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.StartTaskResponse
startTask (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startTask"


-- | <p>Stops a running task.</p> <p>When <a>StopTask</a> is called on a task, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a default 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <note> <p>The default 30-second timeout can be configured on the Amazon ECS container agent with the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>
stopTask :: forall eff. ECS.Service -> ECSTypes.StopTaskRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.StopTaskResponse
stopTask (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopTask"


-- | <note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a container changed states.</p>
submitContainerStateChange :: forall eff. ECS.Service -> ECSTypes.SubmitContainerStateChangeRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.SubmitContainerStateChangeResponse
submitContainerStateChange (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "submitContainerStateChange"


-- | <note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a task changed states.</p>
submitTaskStateChange :: forall eff. ECS.Service -> ECSTypes.SubmitTaskStateChangeRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.SubmitTaskStateChangeResponse
submitTaskStateChange (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "submitTaskStateChange"


-- | <p>Updates the Amazon ECS container agent on a specified container instance. Updating the Amazon ECS container agent does not interrupt running tasks or services on the container instance. The process for updating the agent differs depending on whether your container instance was launched with the Amazon ECS-optimized AMI or another operating system.</p> <p> <code>UpdateContainerAgent</code> requires the Amazon ECS-optimized AMI or Amazon Linux with the <code>ecs-init</code> service installed and running. For help updating the Amazon ECS container agent on other operating systems, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
updateContainerAgent :: forall eff. ECS.Service -> ECSTypes.UpdateContainerAgentRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.UpdateContainerAgentResponse
updateContainerAgent (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateContainerAgent"


-- | <p>Modifies the status of an Amazon ECS container instance.</p> <p>You can change the status of a container instance to <code>DRAINING</code> to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size. </p> <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the <code>PENDING</code> state are stopped immediately.</p> <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are stopped and replaced according to the service's deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You can change the deployment configuration of your service using <a>UpdateService</a>.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during task replacement. For example, <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if <code>desiredCount</code> of four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained (provided that the cluster resources required to do this are available). If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.</p> </li> </ul> <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service are not affected; you must wait for them to finish or stop them manually.</p> <p>A container instance has completed draining when it has no more <code>RUNNING</code> tasks. You can verify this using <a>ListTasks</a>.</p> <p>When you set a container instance to <code>ACTIVE</code>, the Amazon ECS scheduler can begin scheduling tasks on the instance again.</p>
updateContainerInstancesState :: forall eff. ECS.Service -> ECSTypes.UpdateContainerInstancesStateRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.UpdateContainerInstancesStateResponse
updateContainerInstancesState (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateContainerInstancesState"


-- | <p>Modifies the desired count, deployment configuration, network configuration, or task definition used in a service.</p> <p>You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new <code>desiredCount</code> parameter.</p> <p>You can use <a>UpdateService</a> to modify your task definition and deploy a new version of your service.</p> <p>You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>, to determine the deployment strategy.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during a deployment. For example, if <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if <code>desiredCount</code> is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).</p> </li> </ul> <p>When <a>UpdateService</a> stops a task during a deployment, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul> <p>When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic: </p> <ul> <li> <p>Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.</p> </li> <li> <p>Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.</p> </li> </ul>
updateService :: forall eff. ECS.Service -> ECSTypes.UpdateServiceRequest -> Aff (exception :: EXCEPTION | eff) ECSTypes.UpdateServiceResponse
updateService (ECS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateService"
