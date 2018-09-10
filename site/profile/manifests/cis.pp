#Puppet profile to apply cis benchmarks
#for demo purposes
class profile::cis {
$exec_controls = {
  'rule_1_1_1_1'  => true,
  'rule_1_1_1_2'  => true,
  'rule_1_1_1_3'  => true,
  'rule_1_1_1_4'  => true,
  'rule_1_1_1_5'  => true,
  'rule_1_1_1_6'  => true,
  'rule_1_1_1_7'  => true,
  'rule_1_1_1_8'  => true,
  'rule_1_1_2'    => true,
  'rule_1_1_6'    => true,
  'rule_1_1_11'   => true,
  'rule_1_1_13'   => true,
  'rule_1_1_15'   => true,
  'rule_1_1_18'   => true,
  'rule_1_1_21'   => true,
  'rule_1_1_22'   => true,
  'rule_1_2_2'    => true,
  'rule_1_2_3'    => true,
  'rule_1_2_4'    => true,
  'rule_1_3_1'    => true,
  'rule_1_4_1'    => true,
  'rule_1_4_3'    => true,
  'rule_1_5_1'    => true,
  'rule_1_5_2'    => true, #unrequired on x86_64
  'rule_1_5_3'    => true,
  'rule_1_5_4'    => true,
  'rule_1_6_1'    => true,
  'rule_1_6_1_5'  => true,
  'rule_1_6_1_6'  => true,
  'rule_1_6_2'    => true,
  'rule_1_7_1'    => true,
  'rule_1_7_2'    => true,
  'rule_1_8'      => false, #fail invoked yum update do not use
  'rule_2_1'      => true,
  'rule_2_2_1'    => false, #needs to know time server and time management package if used
  'rule_2_2_2'    => false,
  'rule_2_2_3'    => false,
  'rule_2_2_4'    => true,
  'rule_2_2_5'    => true,
  'rule_2_2_6'    => true,
  'rule_2_2_7'    => true,
  'rule_2_2_8'    => true,
  'rule_2_2_9'    => true,
  'rule_2_2_10'   => true,
  'rule_2_2_11'   => true,
  'rule_2_2_12'   => true,
  'rule_2_2_13'   => true,
  'rule_2_2_14'   => true,
  'rule_2_2_15'   => true,
  'rule_2_2_16'   => true,
  'rule_2_2_17'   => true,
  'rule_2_2_18'   => true,
  'rule_2_2_19'   => true,
  'rule_2_2_20'   => true,
  'rule_2_2_21'   => true,
  'rule_2_3_1'    => true,
  'rule_3_1_1'    => true,
  'rule_3_1_2'    => true,
  'rule_3_2_1'    => true,
  'rule_3_2_2'    => true,
  'rule_3_2_3'    => true,
  'rule_3_2_4'    => true,
  'rule_3_2_5'    => true,
  'rule_3_2_6'    => true,
  'rule_3_2_7'    => true,
  'rule_3_2_8'    => true,
  'rule_3_3_1'    => true,
  'rule_3_3_2'    => true,
  'rule_3_3_3'    => true,
  'rule_3_4_1'    => true,
  'rule_3_4_2'    => true,
  'rule_3_5'      => true,
  'rule_3_6'      => true,
  'rule_3_7'      => false,
  'rule_4_1'      => true,
  'rule_4_1_12'   => false,
  'rule_4_1_13'   => true,
  'rule_4_1_3'    => true,
  'rule_4_1_4'    => true,
  'rule_4_2_1'    => true,
  'rule_4_2_2'    => true,
  'rule_4_2_3'    => true,
  'rule_4_3'      => true,
  'rule_5_1'      => true,
  'rule_5_2'      => true,
  'rule_5_3'      => true,
  'rule_5_4_1'    => true,
  'rule_5_4_2'    => true,
  'rule_5_4_3'    => true,
  'rule_5_4_4'    => true,
  'rule_5_5'      => true,
  'rule_5_6'      => true,
  'rule_6_1_1'    => false, #pck_integrity check heavy load
  'rule_6_1_2'    => true,
  'rule_6_1_10'   => true,
  'rule_6_1_11'   => true,
  'rule_6_1_12'   => true,
  'rule_6_1_13'   => true,
  'rule_6_1_14'   => true,
  'rule_6_2_1'    => true,
  'rule_6_2_2'    => true,
  'rule_6_2_5'    => true,
  'rule_6_2_6'    => true,
  'rule_6_2_7'    => true,
  'rule_6_2_8'    => true,
  'rule_6_2_9'    => true,
  'rule_6_2_10'   => true,
  'rule_6_2_11'   => true,
  'rule_6_2_12'   => true,
  'rule_6_2_14'   => true,
  'rule_6_2_15'   => true,
  'rule_6_2_16'   => true,
  'rule_6_2_17'   => true,
  'rule_6_2_18'   => true,
  'rule_6_2_19'   => true,
}
class{ '::cis_benchmarks':
  cis_version   => 'v_2_1_1',
  exec_controls => $exec_controls,
}
}
