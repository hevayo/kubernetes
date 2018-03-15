package ballerinax.kubernetes;

@Description {value:"Kubernetes deployment configuration"}
@Field {value:"name: Name of the deployment"}
@Field {value:"labels: Labels for deployment"}
@Field {value:"replicas: Number of replicas"}
@Field {value:"enableLiveness: Enable or disable enableLiveness probe"}
@Field {value:"livenessPort: Port to check the enableLiveness"}
@Field {value:"initialDelaySeconds: Initial delay in seconds before performing the first probe"}
@Field {value:"periodSeconds: Liveness probe interval"}
@Field {value:"imagePullPolicy: Docker image pull policy"}
@Field {value:"namespace: Kubernetes namespace"}
@Field {value:"image: Docker image with tag"}
@Field {value:"envVars: Environment varialbes for container"}
@Field {value:"buildImage: Docker image to be build or not"}
@Field {value:"username: Username for docker registry"}
@Field {value:"password: Password for docker registry"}
@Field {value:"baseImage: Base image for docker image building"}
@Field {value:"push: Push to remote registry"}
public struct DeploymentConfiguration {
    string name;
    string labels;
    int replicas;
    string enableLiveness;
    int livenessPort;
    int initialDelaySeconds;
    int periodSeconds;
    string imagePullPolicy;
    string namespace;
    string image;
    string env;
    boolean buildImage;
    string username;
    string password;
    string baseImage;
    boolean push;
}

@Description {value:"Deployment annotation for Kubernetes"}
public annotation <service> deployment DeploymentConfiguration;

@Description {value:"Kubernetes service configuration"}
@Field {value:"labels: Labels for service"}
@Field {value:"serviceType: Service type of the service"}
public struct ServiceConfiguration {
    string name;
    string labels;
    string serviceType;
}

@Description {value:"Service annotation for Kubernetes"}
public annotation <endpoint> svc ServiceConfiguration;

@Description {value:"Kubernetes ingress configuration"}
@Field {value:"name: Name of the ingress"}
@Field {value:"labels: Labels for ingress"}
@Field {value:"hostname: Host name of the ingress"}
@Field {value:"path: Resource path"}
@Field {value:"targetPath: Target path for url rewrite"}
@Field {value:"ingressClass: Ingress class"}
@Field {value:"enableTLS: Enable ingress TLS"}
public struct IngressConfiguration {
    string name;
    string labels;
    string hostname;
    string path;
    string targetPath;
    string ingressClass;
    boolean enableTLS;
}
@Description {value:"Ingress annotation for Kubernetes"}
public annotation <service> ingress IngressConfiguration;

@Description {value:"Kubernetes Horizontal Pod Autoscaler configuration"}
@Field {value:"name: Name of the Autoscaler"}
@Field {value:"labels: Labels for Autoscaler"}
@Field {value:"minReplicas: Minimum number of replicas"}
@Field {value:"maxReplicas: Maximum number of replicas"}
@Field {value:"cpuPercentage: CPU percentage to start scaling"}
public struct PodAutoscalerConfig {
    string name;
    string labels;
    int minReplicas;
    int maxReplicas;
    int cpuPercentage;
}

@Description {value:"Pod Autoscaler annotation for Kubernetes"}
public annotation <service> hpa PodAutoscalerConfig;