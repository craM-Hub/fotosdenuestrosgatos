<?php

namespace App\Controller;

use App\Entity\Photo;
use App\Form\PhotoType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\String\Slugger\SluggerInterface;

class PhotoController extends AbstractController
{
    /**
     * @Route("/photo", name="compartir_foto")
     */
    public function nuevo(ManagerRegistry $doctrine, Request $request, SluggerInterface $slugger)
    {
        $photo = new Photo();

        $formulario = $this->createForm(PhotoType::class, $photo);

        $formulario->handleRequest($request);
        if ($formulario->isSubmitted() && $formulario->isValid()) {
            $photoFile = $formulario->get('fileName')->getData();
            $originalFilename = pathinfo($photoFile->getClientOriginalName(), PATHINFO_FILENAME);
            $safeFilename = $slugger->slug($originalFilename);
            $newFilename = $safeFilename . '-' . uniqid() . '.' . $photoFile->guessExtension();

            // Move the file to the directory where brochures are stored
            try {
                $photoFile->move(
                    $this->getParameter('photos_directory'),
                    $newFilename
                );
            } catch (FileException $e) {
                // ... handle exception if something happens during file upload
            }
            $photo->setFileName($newFilename);

            /*   $file = $foto->getFileName();
            $fileName = md5(uniqid() . '.' . $file->guessExtension());
            $file->move($this->getParameter('photos_directory'), $fileName);
            $foto->setFileName($fileName);
 */
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