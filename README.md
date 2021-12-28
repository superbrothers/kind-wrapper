# kind-wrapper

If you want to easily create a multi node cluster without using a config file with `kind` command:

---

By using this command instead of kind, the following options are added to `kind create cluster` command

- `--control-plane`: the number of control-plane nodes
- `--worker`: the number of worker nodes
- `--feature-gates`: enable or disable feature gates (e.g. `--feature-gates=JobReadyPods=true`

## How to use

```
$ git clone git://github.com/superbrothers/kind-wrapper.git
$ alias kind="$(pwd)/kind-wrapper/kind-wrapper"
```

If you want to create a cluster which has 3 control-plane nodes and 3 worker nodes:
```
$ kind create cluster --control-plane=3 --worker=3
```

If you want to enable `JobReadyPods` feature gate:
```
$ kind create cluster --feature-gates=JobReadyPods=true
```
