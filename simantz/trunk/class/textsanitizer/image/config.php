<?php
/*
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

/**
 * TextSanitizer extension
 *
 * @copyright       The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license         http://www.fsf.org/copyleft/gpl.html GNU public license
 * @package         class
 * @subpackage      textsanitizer
 * @since           2.3.0
 * @author          Taiwen Jiang <phppp@users.sourceforge.net>
 * @version         $Id: config.php 3575 2009-09-05 19:35:11Z trabis $
 */
defined('XOOPS_ROOT_PATH') or die('Restricted access');

return $config = array(
    // Click to open an image in a new window
    'clickable' => 1,
    // Resize the iamge
    'resize' => 1,
    // Maximum width of an image displayed on page, otherwise it will be resized
    'max_width' => 300);

?>