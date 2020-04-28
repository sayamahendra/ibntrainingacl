<?php
App::uses('AppController', 'Controller');
/**
 * Karyawans Controller
 *
 * @property Karyawan $Karyawan
 * @property PaginatorComponent $Paginator
 */
class KaryawansController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Karyawan->recursive = 0;
		$this->set('karyawans', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Karyawan->exists($id)) {
			throw new NotFoundException(__('Invalid karyawan'));
		}
		$options = array('conditions' => array('Karyawan.' . $this->Karyawan->primaryKey => $id));
		$this->set('karyawan', $this->Karyawan->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Karyawan->create();
			if ($this->Karyawan->save($this->request->data)) {
				$this->Flash->success(__('The karyawan has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The karyawan could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Karyawan->exists($id)) {
			throw new NotFoundException(__('Invalid karyawan'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Karyawan->save($this->request->data)) {
				$this->Flash->success(__('The karyawan has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The karyawan could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Karyawan.' . $this->Karyawan->primaryKey => $id));
			$this->request->data = $this->Karyawan->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->Karyawan->exists($id)) {
			throw new NotFoundException(__('Invalid karyawan'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Karyawan->delete($id)) {
			$this->Flash->success(__('The karyawan has been deleted.'));
		} else {
			$this->Flash->error(__('The karyawan could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
