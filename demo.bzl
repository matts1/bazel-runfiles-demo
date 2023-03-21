def _inject_workspace_name_impl(ctx):
  print("WORKSPACE NAME IS ", ctx.workspace_name)
  f = ctx.actions.declare_file("INJECTED_WORKSPACE_NAME")
  ctx.actions.write(f, ctx.workspace_name)
  return [DefaultInfo(files = depset([f]))]

inject_workspace_name = rule(
  implementation = _inject_workspace_name_impl
)
