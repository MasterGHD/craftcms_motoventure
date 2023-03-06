<?php

namespace modules\modulo;

use craft\events\RegisterTemplateRootsEvent;
use craft\web\View;
use yii\base\Event;
use yii\base\Module;

class ModuloModule extends Module
{
	/**
	 * @var ModuloModule
	 */
	public static $instance;
	
	/**
	 * @inheritdoc
	 */
	public function __construct($id, $parent = null, array $config = [])
	{
		// Set this as the global instance of this module class
		static::setInstance($this);
		
		parent::__construct($id, $parent, $config);
	}
	
	/**
	 * @inheritdoc
	 */
	public function init()
	{
		parent::init();
		
		Event::on(
			View::class,
			View::EVENT_REGISTER_SITE_TEMPLATE_ROOTS,
			function(RegisterTemplateRootsEvent $event) {
				$event->roots[$this->id] = $this->getBasePath() . DIRECTORY_SEPARATOR . 'templates';
			}
		);
	}
	
}