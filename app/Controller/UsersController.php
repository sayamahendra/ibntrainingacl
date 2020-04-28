<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 * @property PaginatorComponent $Paginator
 */
class UsersController extends AppController {
	public function beforeFilter() {
    parent::beforeFilter();
    // $this->Auth->allow('initDB');
    $this->Auth->allow('index', 'view');
	}
	public function initDB(){
		$group = $this->User->Group;
		//Allow admins to everything
		$group->id = 1;
		$this->Acl->allow($group,'controllers');
		//Allow managers to posts and widget
		$group->id = 2;
		$this->Acl->deny($group,'controllers');
		$this->Acl->allow($group,'controllers/Posts');
		$this->Acl->allow($group,'controllers/Widgets');
		//Allow managers to only add and edit on posts and widgets
		$group->id = 3;
		$this->Acl->deny($group,'controllers');
		$this->Acl->allow($group,'controllers/Posts/add');
		$this->Acl->allow($group,'controllers/Posts/edit');
		$this->Acl->allow($group,'controllers/Widgets/add');
		$this->Acl->allow($group,'controllers/Widgets/edit');
		//allow basic users to logout
		$this->Acl->allow($group,'controllers/users/logout');
		//we add an exit to avoid ugly missing views error message
		echo "all done";exit;
	}
	public function login() {
		if ($this->Session->read('Auth.User')) {
        $this->Session->setFlash('You are logged in!');
        return $this->redirect('/');
    }
		if ($this->request->is('post')) {
			if ($this->Auth->login()) {
				return $this->redirect($this->Auth->redirectUrl());
			}
			$this->Session->setFlash(__('Your username or password was incorrect.'));
		}
	}

	public function logout() {
		//Leave empty for now.
		$this->Session->setFlash('Good-Bye');
		$this->redirect($this->Auth->logout());
	}
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
		$this->User->recursive = 0;
		$this->set('users', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Acl->allow($aroAlias, $acoAlias);
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
		$this->set('user', $this->User->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		$this->Acl->allow($aroAlias, $acoAlias);
		if ($this->request->is('post')) {
			$this->User->create();
			if ($this->User->save($this->request->data)) {
				$this->Flash->success(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The user could not be saved. Please, try again.'));
			}
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->Acl->allow($aroAlias, $acoAlias);
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->User->save($this->request->data)) {
				$this->Flash->success(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
			$this->request->data = $this->User->find('first', $options);
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Acl->allow($aroAlias, $acoAlias);
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->User->delete($id)) {
			$this->Flash->success(__('The user has been deleted.'));
		} else {
			$this->Flash->error(__('The user could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
