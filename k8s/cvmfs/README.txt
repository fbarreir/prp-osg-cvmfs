# Important: Make sure the frontend-squid service has been created

# check what the Squid IP is and adjust daemonset/cvmfs-nodeplugin.yaml
./show_squid.sh

# create the cvmfs namespace
kubectl create -f  namespace/

# the daemonset will need service account
kubectl create -f  accounts/

# create the CVMFS supporting processes in default cvmfs namespace
kubectl create -f pv-root/
kubectl create -f daemonset/

# Create the PersistentStorageClaims
kubectl create -f pv-atlas/

# Just if you want to test: create a job that sleeps forever, so you can log into the container and see cvmfs works
kubectl create -f test/test-job-cvmfs.yaml
