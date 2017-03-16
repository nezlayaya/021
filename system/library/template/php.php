<?php
namespace Template;
final class PHP {
	private $adaptor;

  	public function __construct($adaptor) {
	    $class = 'Template\\' . $adaptor;
		
		if (class_exists($class)) {
			$this->adaptor = new $class();
		} else {
			throw new \Exception('Error: Could not load template adaptor ' . $adaptor . '!');
		}
	}

	public function set($key, $value) {
		$this->adaptor->set($key, $value);
	}

	public function render($template, $registry) {
		$this->adaptor->set('registry', $registry);
		return $this->adaptor->render($template);
	}
}