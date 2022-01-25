<?php

namespace App\Utils;

use Imagine\Gd\Imagine;
use Imagine\Image\Box;
use Imagine\Image\Point;

class ImageOptimizer
{
    private const MAX_WIDTH = 500;
    private const MAX_HEIGHT = 500;
    private const PHOTO_ROUTE = '../public/assets/photos/';

    private $imagine;

    public function __construct()
    {
        $this->imagine = new Imagine();
    }

    public function resize(string $filename): void
    {
        list($iwidth, $iheight) = getimagesize(self::PHOTO_ROUTE.$filename);
        $ratio = $iwidth / $iheight;
        $width = self::MAX_WIDTH;
        $height = self::MAX_HEIGHT;
        if ($width / $height > $ratio) {
            $width = $height * $ratio;
        } else {
            $height = $width / $ratio;
        }
        $this->imagine->open(self::PHOTO_ROUTE.$filename)
                ->crop(new Point(0, 0), new Box(self::MAX_WIDTH, self::MAX_HEIGHT))
                ->save(self::PHOTO_ROUTE.$filename);
    }
}
