<?php

namespace App\Controller;

use App\Entity\Foto;
use App\Form\PhotoType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PhotoController extends AbstractController
{
    /**
     * @Route("/photo", name="compartir_foto")
     */
    public function nuevo(ManagerRegistry $doctrine, Request $request)
    {
        $foto = new Foto();

        $formulario = $this->createForm(PhotoType::class, $foto);

        $formulario->handleRequest($request);
        if ($formulario->isSubmitted() && $formulario->isValid()) {
            $file = $foto->getFileName();
            $fileName = md5(uniqid() . '.' . $file->guessExtension());
            $file->move($this->getParameter('photos directory'), $fileName);
            $foto->setFileName($fileName);

            /*             $entityManager = $doctrine->getManager();
            $entityManager->persist($fileName);
            $entityManager->flush(); */

            return new Response("¡Foto subida correctamente!");
        }

        return $this->render('photo.html.twig', [
            'formulario' => $formulario->createView()
        ]);
    }
}