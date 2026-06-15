use zed_extension_api as zed;

struct LispBMExtension {}

fn get_command_for_language_server(
    language_server_id: &zed::LanguageServerId,
    _worktree: &zed::Worktree,
) -> zed::Result<String> {
    Ok("/home/cortex/Projects/Personal/lispbm-lsp/target/debug/lispbm-lsp".to_string())
}

impl zed::Extension for LispBMExtension {
    fn new() -> Self
    where
        Self: Sized,
    {
        LispBMExtension {}
    }
    fn language_server_command(
        &mut self,
        language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        Ok(zed::Command {
            command: get_command_for_language_server(language_server_id, worktree)?,
            args: vec![],
            env: vec![],
        })
    }
}

zed::register_extension!(LispBMExtension);
