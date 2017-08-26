<?php
require_once '../vendor/autoload.php';

use Symfony\Component\VarDumper\Dumper;

class Hosts
{

    private $_args = [];

    private $_configurations = [];

    /**
     * @var Dumper\CliDumper
     */
    private $_dumper;

    public function __construct($args = [])
    {
        unset($args[0]);
        sort($args);

        $this->_dumper = new Dumper\CliDumper();
        $this->_args = $args;
        $this->_getConfigurations();
        $this->_parseArguments();

        $this->_dumper->dump(
            new \Symfony\Component\VarDumper\Cloner\Data(
                $this->_args
            )
        );
    }

    private function _parseArguments()
    {

    }

    private function _getConfigurations()
    {
        $_file_name = '../Data/configurations.json';

        if (!file_exists($_file_name)) {
            print_r("Configurations file are dismissed. Trying to download");
        }

        $this->_configurations = json_decode(
            file_get_contents(
                $_file_name
            ), 1
        );
    }

}

new Hosts($argv);