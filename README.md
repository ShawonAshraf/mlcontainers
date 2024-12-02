# mlcontainers

A collection of devcontainer configurations I usually use for my deep learning / machine learning projects.

## usage

> [!IMPORTANT]
> For GPU passthrough to work in some configurations, you'll need to install
> the `nvidia-container-toolkit` first. Please refer to the official [docs](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html).

Install the `devcontainer-cli` via `npm`

```bash
npm install -g @devcontainers/cli
```

Then run the configuration you want by

```bash
devcontainer up --workspace-folder <path-to-configuration>
```

If you only wish to build a devcontainer to run it later,

```bash
devcontainer build --workspace-folder <path-to-configuration>
```

> [!IMPORTANT]
> These configurations are for Nvidia GPUs and x86_64 based systems.
> Besides, GPU passthrough isn't there for macOS/Asahi Linux running Apple Silicon yet.
 