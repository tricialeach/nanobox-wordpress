<?php
  $context = Timber::get_context();
  $post = new TimberPost();
  $context['page'] = $post;
  
  Timber::render( array(
    'views/pages/page-' . $post->post_name . '.twig',
    'views/pages/page.twig'
  ), $context );
?>