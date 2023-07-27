# My Dotfile 

This is my personal collection of Dotfile configuration files, which I use to automate the configuration of my development environment. With these configuration files, I can quickly set up and restore my preferred development tools and environment.

## Usage Instructions

1. Ensure that the necessary development tools and software are correctly installed before using these configuration files.
2. Clone this repository to a suitable location on your local machine:

   ```bash
   git clone https://github.com/ShinyNito/dotfiles.git
   ```
   

3. Copy or symlink the .zshrc configuration file to your home directory:

   ```bash
   ln -s ~/dotfiles/.zshrc ~/.zshrc
   ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
   ```
   

4. Launch zsh. The .zshrc configuration file already includes the settings and activation of [Zi](https://github.com/z-shell/zi) plugin manager, so the plugins will be automatically downloaded and installed.

5. Customize the configuration as desired, or add additional configuration files according to your needs.

## Configuration File List

- .zshrc: The configuration file for zsh shell, including the settings and activation of [Zi](https://github.com/z-shell/zi) plugins, as well as other custom configurations.
- .p10k.zsh: Configuration file for the Powerlevel10k theme, used for customizing the appearance and prompt of the terminal.

## FAQ

### Q: I made changes to the configuration files, but my changes are not taking effect. What should I do?

A: Ensure that you have correctly copied or symlinked the configuration files and reload the corresponding configurations. You can try restarting your terminal application.

### Q: How can I add and enable more plugins?

A: In the .zshrc configuration file, you can use the [Zi](https://github.com/z-shell/zi) light or [Zi](https://github.com/z-shell/zi) ice commands to add and enable more plugins. Refer to the official [Zi](https://github.com/z-shell/zi) documentation for more information.

### Q: How can I modify the Powerlevel10k theme settings?

A: Edit the .p10k.zsh configuration file to customize the theme settings to your preference. Save the file and reload zsh or restart your terminal application.

### Q: How can I add additional custom configurations?

A: You can add the desired custom configurations in the .zshrc configuration file or create new configuration files and symlink them to your home directory before using them.

### Q: How can I update the Dotfile configurations?

A: If you have cloned the Dotfile repository from GitHub, you can use the git pull command to fetch the latest configuration updates.

## Additional Notes

- These configuration files are intended for Linux and macOS systems, and some configuration specifics may vary on other systems.
- Please exercise caution when modifying these configuration files to avoid unnecessary issues.
- Feel free to explore and use these configuration files as needed, and customize them based on your requirements.
