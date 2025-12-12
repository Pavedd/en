use clap::{Parser};
use en::commands::base::BaseCommands;
use en::functions::update;

#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Cli {
    #[command(subcommand)]
    commands: BaseCommands
}

 






fn main() {
    let cli = Cli::parse();
    match cli.commands {
            BaseCommands::NixOS { commands } => {
                commands.eval(true);
            },
            BaseCommands::Home { commands } => {
                commands.eval(false);
            },
 
            BaseCommands::Update => update::update().expect("update failed"), 

            BaseCommands::New { commands } => commands.eval(),
        }
    }
