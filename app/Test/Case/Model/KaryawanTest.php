<?php
App::uses('Karyawan', 'Model');

/**
 * Karyawan Test Case
 */
class KaryawanTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.karyawan'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Karyawan = ClassRegistry::init('Karyawan');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Karyawan);

		parent::tearDown();
	}

}
