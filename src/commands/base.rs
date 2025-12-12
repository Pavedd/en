use crate::commands::new::{NewCommands, SubNewCommands};
use crate::functions::pkgs;
use clap::{Subcommand};

#[derive(Subcommand, Debug)]
pub enum BaseCommands {
    Home {
        #[command(subcommand)]
        commands: SubBaseCommands
    }, 

    NixOS {
        #[command(subcommand)]
        commands: SubBaseCommands
    },

    Update,

    New {
        #[command(subcommand)]
        commands: NewCommands
    }, 



}

#[derive(Subcommand, Debug)]
pub enum SubBaseCommands {
    New {
        #[command(subcommand)]
        commands: SubNewCommands
    }, 

    Pkgs,

    Update
}

impl SubBaseCommands {
    pub fn eval (self, command_type: bool) {

        match self {
            SubBaseCommands::New { commands } => commands.eval(command_type),
            SubBaseCommands::Pkgs => 
                pkgs::pkgs(
                    command_type
                ).unwrap(),

            SubBaseCommands::Update => {}
        }

    }

}

