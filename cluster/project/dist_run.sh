cd ~/mxnet/example/image-classification
cp -r ../../python/mxnet .
cp -r ../../lib/libmxnet.so mxnet

export PS_VERBOSE=2

python ../../tools/launch.py \
   -n 2 \
   -H ~/project/hosts \
   --sync-dst-dir /tmp/mxnet \
   python train_mnist.py \
     --network mlp \
     --num-epochs 2 \
     --num-examples 1000 \
     --kv-store dist_sync

