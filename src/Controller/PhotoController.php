<?php

namespace App\Controller;

use App\Utils\ImageOptimizer;
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

    private $imageOptimizer;

    /**
     * @Route("/", name="inicio")
     */
    public function listaFotos(ManagerRegistry $doctrine)
    {
        $repositorio = $doctrine->getRepository(Photo::class);
        $photos = $repositorio->findAll();

        return $this->render('inicio.html.twig', [
            'photos' => $photos
        ]);
    }

    /**
     * @Route("/photolist", name="lista_fotos")
     */
    public function listarFotos(ManagerRegistry $doctrine)
    {
        $repositorio = $doctrine->getRepository(Photo::class);
        $photos = $repositorio->findAll();

        return $this->render('photolist.html.twig', [
            'photos' => $photos
        ]);
    }

    /**
     * @Route("/photo", name="photo")
     */
    public function nuevo(ManagerRegistry $doctrine, Request $request, SluggerInterface $slugger, ImageOptimizer $imageOptimizer)
    {
        $photo = new Photo();
        $formulario = $this->createForm(PhotoType::class, $photo);

        $formulario->handleRequest($request);
        if ($formulario->isSubmitted() && $formulario->isValid()) {
            $photoFile = $formulario->get('fileName')->getData();
            $originalFilename = pathinfo($photoFile->getClientOriginalName(), PATHINFO_FILENAME);
            $safeFilename = $slugger->slug($originalFilename);
            $newFilename = $safeFilename . '-' . uniqid() . '.' . $photoFile->guessExtension();
            $photo = $formulario->getData();
            $photo->setFileName($newFilename);

            $entityManager = $doctrine->getManager();
            $entityManager->persist($photo);

            // movemos las fotos a la carpeta de assets/photos
            try {
                $photoFile->move(
                    $this->getParameter('photos_directory'),
                    $newFilename
                );
            } catch (FileException $e) {
                return new Response("Error subiendo imagen");
            }
            try {
                $entityManager->flush();
            } catch (\Exception $e) {
                return new Response("Error de conexión");
            }
        }

        // reseteamos formulario
        unset($photo);
        unset($formulario);
        $photo = new Photo();
        $formulario = $this->createForm(PhotoType::class, $photo);

        return $this->render('photo.html.twig', [
            'formulario' => $formulario->createView()
        ]);
    }
}
