# Assignment Repository

This repository contains various scripts organized by difficulty levels - basic, intermediate, and advanced. Below you'll find instructions on how to set up and run the scripts.

## Repository Structure
```
root
├── advanced/
├── basic/
├── intermediate/
├── logs1/
└── README.md
```

## Setup Instructions

1. Clone the repository
```bash
git clone https://github.com/Track2k/shell-scripting.git
```

2. Set up execution permissions
   - For individual scripts:
     ```bash
     chmod +x <script-name>.sh
     ```
   - For all scripts in a directory:
     ```bash
     chmod -R +x /path/to/directory
     ```

3. Configure logs directory
```bash
cp -r logs1 $HOME/
```

## Usage

The scripts in each directory require specific input files that are provided within the script directory. Make sure to:
- Use the input files from the same directory as the script
- Check the script comments for any specific input file requirements
- Verify that the input files have the correct permissions


## Notes

- Always run scripts from their respective directories
- Check script echo comments for specific requirements or dependencies
- Make sure input files are in the correct format as expected by the scripts

## Troubleshooting

If you encounter permission issues:
1. Verify that all necessary files have correct permissions
2. Ensure logs1 directory is properly copied to $HOME
3. Check if the script has execution permissions