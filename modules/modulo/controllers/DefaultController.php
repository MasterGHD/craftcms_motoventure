<?php

namespace modules\modulo\controllers;

use Craft;
use craft\web\Controller;

class DefaultController extends Controller
{
	protected array|bool|int $allowAnonymous = ['ab'];
	
	public function actionAb(): string {
		return Craft::$app->getView()->renderTemplate('modulo/index', [
			'var123456' => "i'm here!",
		]);
	}
}