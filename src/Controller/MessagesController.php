<?php

namespace App\Controller;

use App\Form\MessagesType;
use App\Entity\Messages;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MessagesController extends AbstractController
{
    /**
     * @Route("/messages", name="messages")
     */
    public function nuevo(ManagerRegistry $doctrine, Request $request)
    {
        $message = new Messages();
        $messagesForm = $this->createForm(MessagesType::class, $message);

        $messagesForm->handleRequest($request);
        if ($messagesForm->isSubmitted() && $messagesForm->isValid()) {
            $this->addFlash('success', '¡Mensaje enviado correctamente!');
            $message = $messagesForm->getData();

            $entityManager = $doctrine->getManager();
            $entityManager->persist($message);
            try {
                $entityManager->flush();
            } catch (\Exception $e) {
                return new Response("Error de conexión");
            }
        }

        // reseteamos formulario
        unset($message);
        unset($messagesForm);
        $message = new Messages();
        $messagesForm = $this->createForm(MessagesType::class, $message);

        return $this->render('messages.html.twig', [
            'messagesForm' => $messagesForm->createView()
        ]);
    }
}