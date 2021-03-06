<?php
/**
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * Xoops Editor usage guide
 *
 * @copyright       The XOOPS Project http://sourceforge.net/projects/xoops/
 * @license         http://www.fsf.org/copyleft/gpl.html GNU public license
 * @package         kernel
 * @subpackage      core
 * @since           2.0.0
 * @author          Kazumi Ono <onokazu@xoops.org>
 * @author          John Neill <catzwolf@xoops.org>
 * @version         $Id: downloader.php 3558 2009-09-03 01:55:38Z trabis $
 */
defined('XOOPS_ROOT_PATH') or die('Restricted access');

/**
 * Sends non HTML files through a http socket
 *
 * @package kernel
 * @subpackage core
 * @author Kazumi Ono <onokazu@xoops.org>
 * @author John Neill <catzwolf@xoops.org>
 * @copyright copyright (c) 2000-2003 XOOPS.org
 */
class XoopsDownloader
{
    /**
     * *#@+
     * file information
     */
    var $mimetype;
    var $ext;
    var $archiver;
    /**
     * *#@-
     */

    /**
     * Constructor
     */
    function XoopsDownloader()
    {
        // EMPTY
    }

    /**
     * Send the HTTP header
     *
     * @param string $filename
     * @access private
     */
    function _header($filename)
    {
        if (function_exists('mb_http_output')) {
            mb_http_output('pass');
        }
        header('Content-Type: ' . $this->mimetype);
        if (preg_match("/MSIE ([0-9]\.[0-9]{1,2})/", $_SERVER['HTTP_USER_AGENT'])) {
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Expires: 0');
            header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
            header('Pragma: public');
        } else {
            header('Content-Disposition: attachment; filename="' . $filename . '"');
            header('Expires: 0');
            header('Pragma: no-cache');
        }
    }

    /**
     * XoopsDownloader::addFile()
     *
     * @param string $filepath
     * @param string $newfilename
     */
    function addFile($filepath, $newfilename = null)
    {
        // EMPTY
    }

    /**
     * XoopsDownloader::addBinaryFile()
     *
     * @param string $filepath
     * @param string $newfilename
     */
    function addBinaryFile($filepath, $newfilename = null)
    {
        // EMPTY
    }

    /**
     * XoopsDownloader::addFileData()
     *
     * @param mixed $data
     * @param string $filename
     * @param integer $time
     */
    function addFileData(&$data, $filename, $time = 0)
    {
        // EMPTY
    }

    /**
     * XoopsDownloader::addBinaryFileData()
     *
     * @param mixed $data
     * @param string $filename
     * @param integer $time
     */
    function addBinaryFileData(&$data, $filename, $time = 0)
    {
        // EMPTY
    }

    /**
     * XoopsDownloader::download()
     *
     * @param string $name
     * @param boolean $gzip
     */
    function download($name, $gzip = true)
    {
        // EMPTY
    }
}

?>