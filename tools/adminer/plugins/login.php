<?php
class CustomLogin {
	/** @access protected */
	var $servers;
	
	/** 
	 * Set supported servers
	 * @param array $servers
	 * Follow steps from config.md
	 */
	function __construct($servers) {
		$this->servers = $servers;
	}

	function login($login, $password) {
		return true;
	}

	function loginForm(){
		$drivers = [
            "server" => "MySQL",
            "sqlite" => "SQLite 3",
            "sqlite2" => "SQLite 2",
            "pgsql" => "PostgreSQL",
            "oracle" => "Oracle",
            "mssql" => "MS SQL",
            "mongo" => "MongoDB",
            "elastic" => "Elasticsearch",
        ];
		?>

		<form action="" method="post" hidden>
		</form>

		<form id="loginForm" action="" method="post" >
			<table cellspacing='0' class='layout'>
				<tr>
					<th><?php echo lang('System') ?></th>
					<td><?php echo html_select("auth[driver]", $drivers, DRIVER, "loginDriver(this);") ?></td>
				</tr>
				<tr>
					<th><?php echo lang('Server') ?></th>
					<td><input name="auth[server]" value="<?php echo h(SERVER)=="" ? "localhost" : h(SERVER) ?>" title="hostname[:port]" placeholder="localhost" autocapitalize="off"></td>
				</tr>
				<tr>
					<th><?php echo lang('Username') ?></th>
					<td><input name="auth[username]" id="username" value="<?php echo h($_GET["username"]) ?>" autocomplete="username" autocapitalize="off"><?php echo script	("focus(qs('#username')); qs('#username').form['auth[driver]'].onchange();") ?></td>
				</tr>
				<tr>
					<th><?php echo lang('Password') ?></th>
					<td><input type="password" name="auth[password]" autocomplete="current-password"></td>
				</tr>
				<tr>
					<th><?php echo lang('Database') ?></th>
					<td><input name="auth[db]" value="<?php echo h($_GET["db"]) ?>" autocapitalize="off"></td>
				</tr>
			</table>
			<section style="display:flex;align-items:center;gap:8px">
				<p><input type='submit' value='<?php echo lang('Login') ?>'></p>
				<?php echo checkbox("auth[permanent]", 1, $_COOKIE["adminer_permanent"], lang('Permanent login')) ?>
			</section>
		</form>

		<br/>

		<h3><?php echo lang('Server') ?></h3>

		<table cellspacing='0' class='layout'>
			<thead>
				<tr>
					<th><?php echo lang('Name') ?></th>
					<th><?php echo lang('Server') ?></th>
					<th><?php echo lang('Username') ?></th>
					<th><?php echo lang('Database') ?></th>
					<th></th>
				</tr>
			</thead>

			<tbody>
			<?php
			foreach($this->servers as $name => $server):
				$driver = $server['driver'];
				$host = $server['host'];
				$username = $server['username'];
				$pass = $server['pass'];
				$database = $server['db'];
				?>
				<tr style="text-align:center;">
					<td><?php echo $name ?></td>
					<td><?php echo "($drivers[$driver]) " . $host ?></td>
					<td><?php echo $username ?></td>
					<td><?php echo $database == "" ? "-":$databas  ?></td>
					<td>
						<form action="" method="post">
							<input type="hidden" name="auth[driver]" value="<?php echo $driver; ?>">
							<input type="hidden" name="auth[server]" value="<?php echo $host; ?>">
							<input type="hidden" name="auth[username]" value="<?php echo $username; ?>">
							<input type="hidden" name="auth[password]" value="<?php echo $pass; ?>">
							<input type='hidden' name="auth[db]" value="<?php echo $database; ?>"/>
							<input type='hidden' name="auth[permanent]" value="1"/>
							<input type="submit" value="<?php echo lang('Connect'); ?>" style="margin:0;"/>
						</form>
					</td>
				</tr>
			<?php
			endforeach;
			?>
			</tbody>
		</table>

		<script <?php echo nonce(); ?> >
			const form = qs('#loginForm')
			form.addEventListener('submit', function(event) {
				const serverName = qs('input[name="auth[server]"]');
				const name = serverName.value;
				if (name.includes('localhost')) {
					serverName.value = name.replace('localhost', 'host.docker.internal');
				}

				return true;
			})
		</script>

		<?php
		return true;
	}

	function loginFormField($name, $heading, $value) {
		return $heading . $value;
	}
	
}

return new CustomLogin(include './config/servers.php');

?>
