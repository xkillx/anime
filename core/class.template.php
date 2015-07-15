<?php
/**
* File 		: class.template.php
* Author 	: Angga 
* Email 	: <anggagewor@gmail.com> <angga.purnama@mcs.co.id>
* License 	: GPLV2
*/
class template {
    /**
     * Data stored by TPL
     * @var array
     */
    private $_data = array();   
    
    /**
     * Data used by the view (overwrite the $_data)
     * @var array
     */
    private $_dataView = array();
        
    /** 
     * Renders a view
     * @param string $fileName the view filename
     * @param array|bool if needed, you can overwrite the data stored with a new data array used by the renderer
     * @return string the view rendered 
     */                  
    public function render( $fileName, $data = false ) 
    {
        if($data) {
            $this->_dataView = $data;
        }
        if(defined("ERP_TPL_PATH")) {
            $fileName = ERP_TPL_PATH.$fileName;
        }
        $rendered = "";
        if(file_exists($fileName)) {
            ob_start();
            require($fileName);   
            $rendered = ob_get_contents(); 
            ob_end_clean();         
        }
        $this->_dataView = array();
        return $rendered;             
    }
    
    /** 
     * Renders a view for each element of array
     * @param string $fileName the view filename
     * @param array the array of elements that will be used by the view
     * @return string the views rendered
     */      
    
    public function renderAr ($fileName, $dataAr) { 
        $rendered = "";
        if(count($dataAr && is_array($dataAr))) {
            foreach($dataAr AS $data) {
                $rendered.= $this->render($fileName, $data);
            }
        }
        return $rendered;
    
    }
    
    /**
     * magic method set
     */          
    public function __set($key, $value) 
    {
        $this->_data[$key] = $value;
    }
     
    /**
     * magic method get
     */    
    public function __get($key) 
    {
        if(isset($this->_dataView[$key])) {  
            return $this->_dataView[$key];
        }
        else if(isset($this->_data[$key])) {
            return $this->_data[$key];
        }
        else {
            return false;
        }
    }
}
