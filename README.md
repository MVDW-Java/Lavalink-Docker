# Lavalink Docker Image Creator Tool

This tool is designed to help automate the generation of configuration files and build a Docker image for my local Lavalink instance

## Prerequisites

Before using this tool, ensure you have the following installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- A valid `settings.env` file with required environment variables.
- Template files for Docker and Lavalink configuration (`template/Dockerfile` and `template/lavalink_config.yml`).

## Project Structure

```
.
├── build.sh                  # Main script to generate files and build the Docker image.
├── settings.env              # Environment variables file.
├── template/                 # Directory containing template files.
│   ├── Dockerfile            # Template for Dockerfile.
│   ├── lavalink_config.yml   # Template for Lavalink configuration.
├── out/                      # Generated output files will be placed here.
└── README.md                 # This documentation file.
```

## Usage

The script provides options to generate template files and build a Docker image.

### Commands

- **Generate Configuration Files**  
  This command generates the Dockerfile and Lavalink configuration file based on the templates located in the `template` directory.

  ```sh
  ./build.sh generate
  ```

  Output files are saved to the `out/` directory.

- **Build Docker Image**  
  After generating the files, you can build the Docker image using the following command:

  ```sh
  ./build.sh build
  ```

  This will create a Docker image tagged as `lavalink` using the contents of the `out/` directory.

- **Display Help**  
  To display help and usage information, you can run:

  ```sh
  ./build.sh help
  ```

## Example Workflow

1. **Setup Environment Variables**: Ensure that you have a `settings.env` file with the necessary environment variables for `envsubst` to process the templates.

2. **Generate Template Files**: Run the generate command to create the necessary files:

   ```sh
   ./build.sh generate
   ```

   The Dockerfile and Lavalink config file will be placed in the `out/` directory.

3. **Build the Docker Image**: After generating the files, build the Docker image:

   ```sh
   ./build.sh build
   ```

   The Docker image will be built with the tag `lavalink`.

## Customizing the Templates

You can modify the template files in the `template/` directory:

- **`Dockerfile`**: Template for the Dockerfile.
- **`lavalink_config.yml`**: Template for the Lavalink configuration.

These templates use environment variables from the `settings.env` file, allowing for easy customization.
