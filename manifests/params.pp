class psad::params {
  $package = 'psad'

  $psad_default_autodl = {
    '127.0.0.1' => {
      'level' => 0,
      'protocol' => 'tcp/1024'
    },
    '127.0.0.4' => {
      'level' => 2
    }

  }

  $psad_default_options = {
    'email_addresses'            => 'root@localhost',
    'hostname'                   => $fqdn,
    'home_net'                   => 'any',
    'external_net'               => 'any',
    'fw_search_all'              => 'Y',
    'fw_msg_search'              => 'DROP',
    'syslog_daemon'              => 'syslogd',
    'ifcfgtype'                  => 'ifconfig',
    'danger_level1'              => '5',
    'danger_level2'              => '15',
    'danger_level3'              => '150',
    'danger_level4'              => '1500',
    'danger_level5'              => '10000',
    'check_interval'             => '5',
    'snort_sid_str'              => 'SID',
    'port_range_scan_threshold'  => '1',
    'protocol_scan_threshold'    => '5',
    'enable_persistence'         => 'Y',
    'scan_timeout'               => '3600',
    'persistence_ctr_threshold'  => '5',
    'max_scan_ip_pairs'          => '0',
    'show_all_signatures'        => 'N',
    'alerting_methods'           => 'ALL',
    'enable_syslog_file'         => 'Y',
    'ipt_write_fwdata'           => 'Y',
    'ipt_syslog_file'            => '/var/log/messages',
    'enable_sig_msg_syslog'      => 'Y',
    'sig_msg_syslog_threshold'   => '10',
    'sig_sid_syslog_threshold'   => '10',
    'max_hops'                   => '20',
    'ignore_kernel_timestamp'    => 'Y',
    'ignore_conntrack_bug_pkts'  => 'Y',
    'ignore_ports'               => 'NONE',
    'ignore_protocols'           => 'NONE',
    'ignore_interfaces'          => 'NONE',
    'ignore_log_prefixes'        => 'NONE',
    'min_danger_level'           => '1',
    'email_alert_danger_level'   => '1',
    'enable_ipv6_detection'      => 'Y',
    'enable_intf_local_nets'     => 'Y',
    'enable_mac_addr_reporting'  => 'N',
    'enable_fw_logging_check'    => 'Y',
    'email_limit'                => '0',
    'enable_email_limit_per_dst' => 'N',
    'email_limit_status_msg'     => 'Y',
    'email_throttle'             => '0',
    'alert_all'                  => 'Y',
    'import_old_scans'           => 'N',
    'syslog_identity'            => 'psad',
    'syslog_facility'            => 'LOG_LOCAL7',
    'syslog_priority'            => 'LOG_INFO',
    'top_ports_log_threshold'    => '500',
    'status_ports_threshold'     => '20',
    'top_sigs_log_threshold'     => '500',
    'status_sigs_threshold'      => '50',
    'top_ip_log_threshold'       => '500',
    'status_ip_threshold'        => '25',
    'top_scans_ctr_threshold'    => '1',
    'enable_dshield_alerts'      => 'N',
    'dshield_alert_email'        => 'reports@dshield.org',
    'dshield_alert_interval'     => '6',
    'dshield_user_id'            => '0',
    'dshield_user_email'         => 'NONE',
    'dshield_dl_threshold'       => '0',
    'http_servers'               => '$HOME_NET',
    'smtp_servers'               => '$HOME_NET',
    'dns_servers'                => '$HOME_NET',
    'sql_servers'                => '$HOME_NET',
    'telnet_servers'             => '$HOME_NET',
    'aim_servers'                => ['64.12.24.0/24', '64.12.25.0/24', '64.12.26.14/24', '64.12.28.0/24', '64.12.29.0/24', '64.12.161.0/24', '64.12.163.0/24', '205.188.5.0/24', '205.188.9.0/24'],
    'http_ports'                 => '80',
    'shellcode_ports'            => '!80',
    'oracle_ports'               => '1521',
    'enable_snort_sig_strict'    => 'Y',
    'enable_auto_ids'            => 'N',
    'auto_ids_danger_level'      => '5',
    'auto_block_timeout'         => '3600',
    'auto_block_dl1_timeout'     => '$AUTO_BLOCK_TIMEOUT',
    'auto_block_dl2_timeout'     => '$AUTO_BLOCK_TIMEOUT',
    'auto_block_dl3_timeout'     => '$AUTO_BLOCK_TIMEOUT',
    'auto_block_dl4_timeout'     => '$AUTO_BLOCK_TIMEOUT',
    'auto_block_dl5_timeout'     => '0',
    'enable_auto_ids_regex'      => 'N',
    'auto_block_regex'           => 'ESTAB',
    'enable_renew_block_emails'  => 'N',
    'enable_auto_ids_emails'     => 'Y',
    'iptables_block_method'      => 'Y',
    'ipt_auto_chain1'            => 'DROP, src, filter, INPUT, 1, PSAD_BLOCK_INPUT, 1',
    'ipt_auto_chain2'            => 'DROP, dst, filter, OUTPUT, 1, PSAD_BLOCK_OUTPUT, 1',
    'ipt_auto_chain3'            => 'DROP, both, filter, FORWARD, 1, PSAD_BLOCK_FORWARD, 1',
    'flush_ipt_at_init'          => 'Y',
    'iptables_prereq_check'      => '1',
    'tcpwrappers_block_method'   => 'N',
    'whois_timeout'              => '60',
    'whois_lookup_threshold'     => '20',
    'enable_whois_force_ascii'   => 'N',
    'enable_whois_force_src_ip'  => 'N',
    'dns_lookup_threshold'       => '20',
    'enable_ext_script_exec'     => 'N',
    'external_script'            => '/bin/true',
    'exec_ext_script_per_alert'  => 'N',
    'disk_check_interval'        => '300',
    'disk_max_percentage'        => '95',
    'disk_max_rm_retries'        => '10',
    'enable_scan_archive'        => 'N',
    'truncate_fwdata'            => 'Y',
    'min_archive_danger_level'   => '1',
    'mail_alert_prefix'          => '[psad-alert]',
    'mail_status_prefix'         => '[psad-status]',
    'mail_error_prefix'          => '[psad-error]',
    'mail_fatal_prefix'          => '[psad-fatal]',
    'sig_update_url'             => 'http://www.cipherdyne.org/psad/signatures',
    'psadwatchd_check_interval'  => '5',
    'psadwatchd_max_retries'     => '10',
    'install_root'               => '/',
    'psad_dir'                   => '$INSTALL_ROOT/var/log/psad',
    'psad_run_dir'               => '$INSTALL_ROOT/var/run/psad',
    'psad_fifo_dir'              => '$INSTALL_ROOT/var/lib/psad',
    'psad_libs_dir'              => '$INSTALL_ROOT/usr/lib/psad',
    'psad_conf_dir'              => '$INSTALL_ROOT/etc/psad',
    'psad_err_dir'               => '$PSAD_DIR/errs',
    'conf_archive_dir'           => '$PSAD_CONF_DIR/archive',
    'scan_data_archive_dir'      => '$PSAD_DIR/scan_archive',
    'analysis_mode_dir'          => '$PSAD_DIR/ipt_analysis',
    'snort_rules_dir'            => '$PSAD_CONF_DIR/snort_rules',
    'fwsnort_rules_dir'          => '/etc/fwsnort/snort_rules',
    'fw_data_file'               => '$PSAD_DIR/fwdata',
    'ulog_data_file'             => '$PSAD_DIR/ulogd.log',
    'fw_check_file'              => '$PSAD_DIR/fw_check',
    'dshield_email_file'         => '$PSAD_DIR/dshield.email',
    'sigs_file'                  => '$PSAD_CONF_DIR/signatures',
    'protocols_file'             => '$PSAD_CONF_DIR/protocols',
    'icmp_types_file'            => '$PSAD_CONF_DIR/icmp_types',
    'icmp6_types_file'           => '$PSAD_CONF_DIR/icmp6_types',
    'auto_dl_file'               => '$PSAD_CONF_DIR/auto_dl',
    'snort_rule_dl_file'         => '$PSAD_CONF_DIR/snort_rule_dl',
    'posf_file'                  => '$PSAD_CONF_DIR/posf',
    'p0f_file'                   => '$PSAD_CONF_DIR/pf.os',
    'ip_opts_file'               => '$PSAD_CONF_DIR/ip_options',
    'psad_fifo_file'             => '$PSAD_FIFO_DIR/psadfifo',
    'etc_hosts_deny_file'        => '/etc/hosts.deny',
    'etc_syslog_conf'            => '/etc/syslog.conf',
    'etc_rsyslog_conf'           => '/etc/rsyslog.conf',
    'etc_syslogng_conf'          => '/etc/syslog-ng/syslog-ng.conf',
    'etc_metalog_conf'           => '/etc/metalog/metalog.conf',
    'status_output_file'         => '$PSAD_DIR/status.out',
    'analysis_output_file'       => '$PSAD_DIR/analysis.out',
    'install_log_file'           => '$PSAD_DIR/install.log',
    'psad_pid_file'              => '$PSAD_RUN_DIR/psad.pid',
    'psad_cmdline_file'          => '$PSAD_RUN_DIR/psad.cmd',
    'kmsgsd_pid_file'            => '$PSAD_RUN_DIR/kmsgsd.pid',
    'psadwatchd_pid_file'        => '$PSAD_RUN_DIR/psadwatchd.pid',
    'auto_block_ipt_file'        => '$PSAD_DIR/auto_blocked_iptables',
    'auto_block_tcpwr_file'      => '$PSAD_DIR/auto_blocked_tcpwr',
    'auto_ipt_sock'              => '$PSAD_RUN_DIR/auto_ipt.sock',
    'fw_error_log'               => '$PSAD_ERR_DIR/fwerrorlog',
    'print_scan_hash'            => '$PSAD_DIR/scan_hash',
    'proc_forward_file'          => '/proc/sys/net/ipv4/ip_forward',
    'packet_counter_file'        => '$PSAD_DIR/packet_ctr',
    'top_scanned_ports_file'     => '$PSAD_DIR/top_ports',
    'top_sigs_file'              => '$PSAD_DIR/top_sigs',
    'top_attackers_file'         => '$PSAD_DIR/top_attackers',
    'dshield_counter_file'       => '$PSAD_DIR/dshield_ctr',
    'ipt_prefix_counter_file'    => '$PSAD_DIR/ipt_prefix_ctr',
    'ipt_output_file'            => '$PSAD_DIR/psad.iptout',
    'ipt_error_file'             => '$PSAD_DIR/psad.ipterr',
  }

  $psad_default_commands = {
    'iptablesCmd'                => '/sbin/iptables',
    'ip6tablesCmd'               => '/sbin/ip6tables',
    'shCmd'                      => '/bin/sh',
    'wgetCmd'                    => '/usr/bin/wget',
    'gzipCmd'                    => '/bin/gzip',
    'mknodCmd'                   => '/bin/mknod',
    'psCmd'                      => '/bin/ps',
    'mailCmd'                    => '/bin/mail',
    'sendmailCmd'                => '/usr/sbin/sendmail',
    'ifconfigCmd'                => '/sbin/ifconfig',
    'ipCmd'                      => '/sbin/ip',
    'killallCmd'                 => '/usr/bin/killall',
    'netstatCmd'                 => '/bin/netstat',
    'unameCmd'                   => '/bin/uname',
    'whoisCmd'                   => '$INSTALL_ROOT/usr/bin/whois_psad',
    'dfCmd'                      => '/bin/df',
    'fwcheck_psadCmd'            => '$INSTALL_ROOT/usr/sbin/fwcheck_psad',
    'psadwatchdCmd'              => '$INSTALL_ROOT/usr/sbin/psadwatchd',
    'kmsgsdCmd'                  => '$INSTALL_ROOT/usr/sbin/kmsgsd',
    'psadCmd'                    => '$INSTALL_ROOT/usr/sbin/psad',
  }

  $psad_lowercase_options = ['iptablescmd', 'ip6tablescmd', 'shcmd', 'wgetcmd', 'gzipcmd', 'mknodcmd', 'pscmd', 'mailcmd', 'sendmailcmd', 'ifconfigcmd', 'ipcmd', 'killallcmd', 'netstatcmd', 'unamecmd', 'whoiscmd', 'dfcmd', 'fwcheck_psadcmd', 'psadwatchdcmd', 'kmsgsdcmd', 'psadcmd']



}