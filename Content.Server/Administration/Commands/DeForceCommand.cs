using System.Linq;
using Content.Server.Administration;
using Content.Shared.Administration;
using Robust.Server.Player;
using Robust.Shared.Console;

namespace Content.Server.Administration.Commands;

[AdminCommand(AdminFlags.Permissions)]
public sealed class DeForceCommand : IConsoleCommand
{
    public string Command => "deforce";
    public string Description => "deforce";
    public string Help => "deforce <ckey>";
    public void Execute(IConsoleShell shell, string argStr, string[] args)
    {
        if (args.Length != 1 || string.IsNullOrEmpty(args[0]))
        {
            shell.WriteLine("Wrong number of arguments");
            return;
        }

        var playerManager = IoCManager.Resolve<IPlayerManager>();
        var players = playerManager.Sessions.ToList();

        var player = players.Find(x => x.Name == args[0]);

        if (player == null)
        {
            shell.WriteLine("Player not found");
            return;
        }

        var consoleHost = IoCManager.Resolve<IConsoleHost>();
        consoleHost.RemoteExecuteCommand(player, "deadmin");
        shell.WriteLine("Message sent");
    }

    public CompletionResult GetCompletion(IConsoleShell shell, string[] args)
    {
        if (args.Length == 1)
        {
            var playerMgr = IoCManager.Resolve<IPlayerManager>();
            var options = playerMgr.Sessions.Select(c => c.Name).OrderBy(c => c).ToArray();
            return CompletionResult.FromHintOptions(options, "ckey");
        }

        return CompletionResult.Empty;
    }
}
