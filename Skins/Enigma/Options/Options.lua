f u n c t i o n   I n i t i a l i z e ( )  
 	 - -   S E T   L A B E L S   F O R   C U R R E N T   T A B  
 	 f o r   N a m e   i n   S E L F : G e t O p t i o n ( ' L a b e l s Q u e u e ' ) : g m a t c h ( ' [ ^ % | ] + ' )   d o  
 	 	 l o c a l   p o s   =   T a b l e P o s i t i o n ( O p t i o n s [ N a m e ] . L o o p ,   S K I N : G e t V a r i a b l e ( N a m e ) )  
 	 	 S K I N : B a n g ( ' ! S e t O p t i o n ' ,   N a m e   . .   ' T e x t ' ,   ' T e x t ' ,   O p t i o n s [ N a m e ] . L a b e l s [ p o s ] )  
 	 e n d  
 e n d  
  
 f u n c t i o n   W r i t e ( K e y ,   V a l u e ,   W a i t ,   S k i p P a r s e )  
 	 - -   I F   N O   V A L U E   I S   G I V E N ,   A D V A N C E   B Y   L O O P  
 	 i f   n o t   V a l u e   t h e n  
 	 	 l o c a l   p o s   =   T a b l e P o s i t i o n ( O p t i o n s [ K e y ] . L o o p ,   S K I N : G e t V a r i a b l e ( K e y ) )  
 	 	 V a l u e   =   O p t i o n s [ K e y ] . L o o p [ ( p o s   %   # O p t i o n s [ K e y ] . L o o p )   +   1 ]  
 	 e n d  
  
 	 - -   W R I T E  
 	 S K I N : B a n g ( ' ! W r i t e K e y V a l u e ' ,   ' V a r i a b l e s ' ,   K e y ,  
 	 	 ( O p t i o n s [ K e y ] . P a r s e   a n d   n o t   S k i p P a r s e )   a n d   O p t i o n s [ K e y ] . P a r s e ( K e y ,   V a l u e )   o r   V a l u e ,  
 	 	 O p t i o n s [ K e y ] . F i l e   a n d   S K I N : G e t V a r i a b l e ( ' S t y l e S e t t i n g s ' )   o r   S K I N : G e t V a r i a b l e ( ' E n i g m a S e t t i n g s ' )  
 	 )  
  
 	 - -   W A I T   O R   R E F R E S H  
 	 i f   n o t   W a i t   t h e n  
 	 	 - -   i f   O p t i o n s [ K e y ] . C o n f i g s   t h e n  
 	 	 - -   	 - -   B e c a u s e   E n i g m a   i s   f u l l y   p o r t a b l e ,   t h e   r o o t   c o n f i g   n a m e   i s   n o t   k n o w n .  
 	 	 - -   	 l o c a l   R o o t C o n f i g   =   S K I N : G e t V a r i a b l e ( ' C U R R E N T C O N F I G ' ) : m a t c h ( ' ( . - \ \ ) ' )  
 	 	 - -   	 f o r   _ ,   C o n f i g   i n   i p a i r s ( O p t i o n s [ K e y ] . C o n f i g s )   d o  
 	 	 - -   	 	 S K I N : B a n g ( ' ! R e f r e s h ' ,   R o o t C o n f i g   . .   C o n f i g )  
 	 	 - -   	 e n d  
 	 	 - -     S K I N : B a n g ( ' ! R e f r e s h ' )  
 	 	 - -   e l s e  
 	 	 - -   	 S K I N : B a n g ( ' ! R e f r e s h   * ' )  
 	 	 - -   e n d  
 	 	 S K I N : B a n g ( ' ! R e f r e s h   * ' )  
 	 e n d  
 e n d  
  
 f u n c t i o n   T a b l e P o s i t i o n ( t b l ,   k e y )  
 	 f o r   i ,   v   i n   i p a i r s ( t b l )   d o  
 	 	 i f   v   = =   k e y   t h e n  
 	 	 	 r e t u r n   i  
 	 	 e n d  
 	 e n d  
 e n d  
  
 f u n c t i o n   D e f a u l t ( K e y ,   C o n f i r m )  
 	 i f   n o t   C o n f i r m   t h e n  
 	 	 - -   P R O M P T   C O N F I R M A T I O N  
 	 	 S K I N : B a n g ( ' ! S e t V a r i a b l e ' ,   ' S e l e c t e d D e f a u l t ' ,   K e y )  
 	 	 S K I N : B a n g ( ' ! U p d a t e M e t e r G r o u p ' ,   ' D e f a u l t ' )  
 	 	 S K I N : B a n g ( ' ! S h o w M e t e r G r o u p ' ,   ' D e f a u l t ' )  
 	 	 S K I N : B a n g ( ' ! R e d r a w ' )  
 	 e l s e  
 	 	 - -   R E S E T   D E P E N D E N T S  
 	 	 f o r   _ ,   D e p e n d e n t K e y   i n   i p a i r s ( O p t i o n s [ K e y ] . D e p e n d e n t s   o r   { } )   d o  
 	 	 	 W r i t e ( D e p e n d e n t K e y ,   S K I N : G e t V a r i a b l e ( ' D e f a u l t '   . .   D e p e n d e n t K e y ) ,   t r u e ,   t r u e )  
 	 	 e n d  
  
 	 	 - -   R E S E T   S E L F  
 	 	 W r i t e ( K e y ,   S K I N : G e t V a r i a b l e ( ' D e f a u l t '   . .   K e y ) ,   f a l s e ,   t r u e )  
 	 e n d  
 e n d  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - -   O P T I O N - S P E C I F I C   P A R S I N G   F U N C T I O N S  
  
 f u n c t i o n   P a r s e P r o t o c o l ( _ ,   V a l u e )  
 	 r e t u r n   V a l u e : m a t c h ( ' : / / ' )   a n d   V a l u e   o r   ' h t t p : / / '   . .   V a l u e  
 e n d  
  
 f u n c t i o n   P a r s e G m a i l ( _ ,   V a l u e )  
 	 l o c a l   i d ,   d o m a i n   =   V a l u e : m a t c h ( ' ^ ( [ ^ @ ] + ) @ ? ( . * ) ' )  
 	 i f   d o m a i n   = =   ' '   t h e n   d o m a i n   =   ' g m a i l . c o m '   e n d   - -   N o   d o m a i n   w a s   g i v e n .  
 	 i f   d o m a i n   = =   ' g m a i l . c o m '   t h e n  
 	 	 W r i t e ( ' G m a i l U r l ' ,   ' h t t p s : / / # * G m a i l U s e r n a m e * # : # * G m a i l P a s s w o r d * # @ g m a i l . g o o g l e . c o m / g m a i l / f e e d / a t o m ' ,   t r u e )  
 	 e l s e  
 	 	 W r i t e ( ' G m a i l U r l ' ,   ' h t t p s : / / # * G m a i l U s e r n a m e * # % 4 0 # * G m a i l D o m a i n * # : # * G m a i l P a s s w o r d * # @ m a i l . g o o g l e . c o m / a / # * G m a i l D o m a i n * # / f e e d / a t o m / ' ,   t r u e )  
 	 e n d  
 	 W r i t e ( ' G m a i l D o m a i n ' ,   d o m a i n ,   t r u e )  
 	 r e t u r n   i d  
 e n d  
  
 f u n c t i o n   P a r s e G c a l ( _ ,   V a l u e )  
 	 r e t u r n   P a r s e P r o t o c o l ( _ ,   V a l u e ) : g s u b ( ' / b a s i c ' ,   ' / f u l l ' )  
 e n d  
  
 f u n c t i o n   P a r s e A p p P a t h ( K e y ,   V a l u e )  
 	 W r i t e ( O p t i o n s [ K e y ] . D e p e n d e n t s [ 1 ] ,   V a l u e : m a t c h ( ' % . e x e $ ' )   a n d   V a l u e : m a t c h ( ' ( [ ^ / \ \ ] + ) $ ' )   o r   ' R a i n m e t e r . e x e ' ,   t r u e )  
 	 r e t u r n   V a l u e  
 e n d  
  
 f u n c t i o n   u r l E n c o d e ( s t r )  
 	 l o c a l   e n c o d e   =   f u n c t i o n ( i n p u t )  
 	 	 r e t u r n   s t r i n g . f o r m a t ( " % % % 0 2 X " ,   i n p u t : b y t e ( ) )  
 	 e n d  
 	  
 	 i f   s t r   t h e n  
 	 	 r e t u r n   ( s t r : g s u b ( " \ n " ,   " \ r \ n " ) : g s u b ( " ( [ ^ % w   ] ) " ,   e n c o d e ) : g s u b ( "   " ,   " + " ) )  
 	 e n d  
 	 r e t u r n   s t r  
   e n d  
    
   f u n c t i o n   P a r s e P a s s w o r d ( _ ,   V a l u e )  
   	 r e t u r n   u r l E n c o d e ( V a l u e )  
   e n d  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - -   M A S T E R   T A B L E  
 - -   T h e   O p t i o n s   t a b l e   d e f i n e s   v a l u e   l o o p s ,   d i s p l a y   l a b e l s ,   t a r g e t   c o n f i g s ,   e t c .   f o r   a l l   E n i g m a   o p t i o n s .  
  
 O p t i o n s   =   {  
 	 - -   G E N E R A L  
 	 N o t e 1 P a t h   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 1 '   } , } ,  
 	 N o t e 2 P a t h   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 2 '   } , } ,  
 	 N o t e 3 P a t h   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 3 '   } , } ,  
 	 N o t e H e i g h t   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 1 ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 2 ' ,   ' S i d e b a r \ \ N o t e s \ \ N o t e s 3 '   } , } ,  
 	 D r i v e 1   =   { C o n f i g s   =   {   ' S i d e b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m \ \ D r i v e \ \ D r i v e 1 '   } , } ,  
 	 D r i v e 2   =   { C o n f i g s   =   {   ' S i d e b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m \ \ D r i v e \ \ D r i v e 2 '   } , } ,  
 	 D r i v e 3   =   { C o n f i g s   =   {   ' S i d e b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m ' ,   ' T a s k b a r \ \ S y s t e m \ \ D r i v e \ \ D r i v e 3 '   } , } ,  
 	 N e t w o r k M a x D o w n l o a d   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N e t w o r k ' ,   ' T a s k b a r \ \ N e t w o r k ' ,   ' T a s k b a r \ \ N e t w o r k \ \ D o w n l o a d '   } , } ,  
 	 N e t w o r k M a x U p l o a d   =   { C o n f i g s   =   {   ' S i d e b a r \ \ N e t w o r k ' ,   ' T a s k b a r \ \ N e t w o r k ' ,   ' T a s k b a r \ \ N e t w o r k \ \ U p l o a d '   } , } ,  
 	 S y s t e m G r a p h T y p e   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ N e t w o r k ' ,   ' S i d e b a r \ \ S y s t e m '   } ,  
 	 	 L o o p         =   {   ' F l o a t i n g ' ,   ' P e r c e n t '   }  
 	 } ,  
 	 C a l e n d a r E v e n t F i l e   =   { C o n f i g s   =   {   ' S i d e b a r \ \ C a l e n d a r '   } , } ,  
 	 C a l e n d a r S h o w E v e n t s   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ C a l e n d a r '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' N o ' ,   ' Y e s '   }  
 	 } ,  
 	 C a l e n d a r E x t r a D a y s   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ C a l e n d a r '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' N o ' ,   ' Y e s '   }  
 	 } ,  
 	 C a l e n d a r L e a d i n g Z e r o e s   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ C a l e n d a r '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' N o ' ,   ' Y e s '   }  
 	 } ,  
 	 C a l e n d a r M o n d a y s   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ C a l e n d a r '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' S u n d a y ' ,   ' M o n d a y '   }  
 	 } ,  
 	 G a l l e r y P a t h   =   { C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y '   } , } ,  
 	 G a l l e r y S u b f o l d e r s   =   {    
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' N o ' ,   ' Y e s '   }  
 	 } ,  
 	 G a l l e r y R a t i o   =   { C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y '   } , } ,  
 	 G a l l e r y P o s i t i o n   =   {    
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y '   } ,  
 	 	 L o o p         =   {   ' C e n t e r ' ,   ' T i l e ' ,   ' S t r e t c h ' ,   ' F i t ' ,   ' F i l l '   }  
 	 } ,  
 	 V o l u m e I n c r e m e n t   =   { C o n f i g s   =   {   ' S i d e b a r \ \ V o l u m e ' ,   ' T a s k b a r \ \ V o l u m e '   } , } ,  
 	 T r i p t y c h I n t e r v a l   =   { C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y ' ,   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ R e a d e r ' ,   ' S i d e b a r \ \ R e a d e r \ \ G c a l ' ,   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 T r i p t y c h D i s a b l e d   =   {    
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ G a l l e r y ' ,   ' S i d e b a r \ \ N o t e s ' ,   ' S i d e b a r \ \ R e a d e r ' ,   ' S i d e b a r \ \ R e a d e r \ \ G c a l ' ,   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' Y e s ' ,   ' N o '   }  
 	 } ,  
 	 P r o c e s s I n t e r v a l   =   { C o n f i g s   =   {   ' S i d e b a r \ \ P r o c e s s '   } , } ,  
 	 - -   M U S I C  
 	 M u s i c P l a y e r T y p e   =   { C o n f i g s   =   {   ' S i d e b a r \ \ M u s i c ' ,   ' T a s k b a r \ \ M u s i c '   } , } ,  
 	 M u s i c P l a y e r   =   { } ,  
 	 - - F E E D S  
 	 F e e d 1   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r ' ,   ' S i d e b a r \ \ R e a d e r \ \ R e a d e r 1 '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 F e e d 2   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r ' ,   ' S i d e b a r \ \ R e a d e r \ \ R e a d e r 2 '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 F e e d 3   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r ' ,   ' S i d e b a r \ \ R e a d e r \ \ R e a d e r 3 '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 G m a i l U s e r n a m e   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G m a i l ' ,   ' T a s k b a r \ \ R e a d e r \ \ G m a i l '   } ,  
 	 	 P a r s e       =   P a r s e G m a i l ,  
 	 	 D e p e n d e n t s   =   { ' G m a i l P a s s w o r d ' ,   ' G m a i l U r l ' ,   ' G m a i l D o m a i n ' }  
 	 } ,  
 	 G m a i l P a s s w o r d   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G m a i l ' ,   ' T a s k b a r \ \ R e a d e r \ \ G m a i l '   } ,  
 	 	 P a r s e   =   P a r s e P a s s w o r d ,  
 	 } ,  
 	 G m a i l U r l   =   { } ,  
 	 G m a i l D o m a i n   =   { } ,  
 	 F a c e b o o k F e e d   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ F a c e b o o k ' ,   ' T a s k b a r \ \ R e a d e r \ \ F a c e b o o k '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 G o o g l e C a l e n d a r 1   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G c a l ' ,   ' T a s k b a r \ \ R e a d e r \ \ G c a l '   } ,  
 	 	 P a r s e       =   P a r s e G c a l  
 	 } ,  
 	 G o o g l e C a l e n d a r 2   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G c a l '   } ,  
 	 	 P a r s e       =   P a r s e G c a l  
 	 } ,  
 	 G o o g l e C a l e n d a r 3   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G c a l '   } ,  
 	 	 P a r s e       =   P a r s e G c a l  
 	 } ,  
 	 G o o g l e C a l e n d a r W r i t e E v e n t s   =   {  
 	 	 C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ G c a l ' ,   ' T a s k b a r \ \ R e a d e r \ \ G c a l '   } ,  
 	 	 L o o p         =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s     =   {   ' N o ' ,   ' Y e s '   }  
 	 } ,  
 	 R T M u s e r n a m e   =   { C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k ' ,   ' T a s k b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 R T M p a s s w o r d   =   { C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k ' ,   ' T a s k b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 R T M l i s t 1   =   { C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k ' ,   ' T a s k b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 R T M l i s t 2   =   { C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 R T M l i s t 3   =   { C o n f i g s   =   {   ' S i d e b a r \ \ R e a d e r \ \ R e m e m b e r T h e M i l k '   } , } ,  
 	 - -   W O R L D  
 	 W e a t h e r C o d e   =   {  
 	 	 D e p e n d e n t s   =   {   ' W e a t h e r C o d e N a m e ' ,   ' W e a t h e r C o d e L a t ' ,   ' W e a t h e r C o d e L o n '   } ,  
 	 	 C o n f i g s         =   {  
 	 	 	 ' S i d e b a r \ \ C l o c k ' ,  
 	 	 	 ' S i d e b a r \ \ W e a t h e r ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ L o c a t i o n ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ S u n r i s e ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ S u n s e t ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ W e a t h e r T o d a y ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ W e a t h e r T o m o r r o w ' ,  
 	 	 	 ' T a s k b a r \ \ _ E x t r a s \ \ C l o c k + L o c a t i o n ' ,  
 	 	 	 ' T a s k b a r \ \ _ E x t r a s \ \ T r a y C l o c k '  
 	 	 }  
 	 } ,  
 	 W e a t h e r C o d e N a m e   =   { } ,  
 	 W e a t h e r C o d e L a t   =   { } ,  
 	 W e a t h e r C o d e L o n   =   { } ,  
 	 U n i t   =   {    
 	 	 C o n f i g s   =   {  
 	 	 	 ' S i d e b a r \ \ C l o c k ' ,  
 	 	 	 ' S i d e b a r \ \ W e a t h e r ' ,  
 	 	 	 ' S i d e b a r \ \ W o r l d \ \ W o r l d 1 ' ,  
 	 	 	 ' S i d e b a r \ \ W o r l d \ \ W o r l d 2 ' ,  
 	 	 	 ' S i d e b a r \ \ W o r l d \ \ W o r l d 3 ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ L o c a t i o n ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ S u n r i s e ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ S u n s e t ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ W e a t h e r T o d a y ' ,  
 	 	 	 ' T a s k b a r \ \ W e a t h e r \ \ W e a t h e r T o m o r r o w ' ,  
 	 	 	 ' T a s k b a r \ \ W o r l d \ \ W o r l d 1 ' ,  
 	 	 	 ' T a s k b a r \ \ W o r l d \ \ W o r l d 2 ' ,  
 	 	 	 ' T a s k b a r \ \ W o r l d \ \ W o r l d 3 ' ,  
 	 	 	 ' T a s k b a r \ \ _ E x t r a s \ \ C l o c k + L o c a t i o n ' ,  
 	 	 	 ' T a s k b a r \ \ _ E x t r a s \ \ T r a y C l o c k '  
 	 	 } ,  
 	 	 L o o p         =   {   ' c ' ,   ' f '   } ,  
 	 	 L a b e l s     =   {   ' C e l s i u s ' ,   ' F a h r e n h e i t '   }  
 	 } ,  
 	 W o r l d 1 W e a t h e r C o d e   =   {  
 	 	 D e p e n d e n t s   =   {   ' W o r l d 1 W e a t h e r C o d e N a m e ' ,   ' W o r l d 1 W e a t h e r C o d e L a t ' ,   ' W o r l d 1 W e a t h e r C o d e L o n '   } ,  
 	 	 C o n f i g s         =   {   ' S i d e b a r \ \ W o r l d \ \ W o r l d 1 ' ,   ' T a s k b a r \ \ W o r l d \ \ W o r l d 1 '   }  
 	 } ,  
 	 W o r l d 1 W e a t h e r C o d e N a m e   =   { } ,  
 	 W o r l d 1 W e a t h e r C o d e L a t   =   { } ,  
 	 W o r l d 1 W e a t h e r C o d e L o n   =   { } ,  
 	 W o r l d 2 W e a t h e r C o d e   =   {  
 	 	 D e p e n d e n t s   =   {   ' W o r l d 2 W e a t h e r C o d e N a m e ' ,   ' W o r l d 2 W e a t h e r C o d e L a t ' ,   ' W o r l d 2 W e a t h e r C o d e L o n '   } ,  
 	 	 C o n f i g s         =   {   ' S i d e b a r \ \ W o r l d \ \ W o r l d 2 ' ,   ' T a s k b a r \ \ W o r l d \ \ W o r l d 2 '   }  
 	 } ,  
 	 W o r l d 2 W e a t h e r C o d e N a m e   =   { } ,  
 	 W o r l d 2 W e a t h e r C o d e L a t   =   { } ,  
 	 W o r l d 2 W e a t h e r C o d e L o n   =   { } ,  
 	 W o r l d 3 W e a t h e r C o d e   =   {  
 	 	 D e p e n d e n t s   =   {   ' W o r l d 3 W e a t h e r C o d e N a m e ' ,   ' W o r l d 3 W e a t h e r C o d e L a t ' ,   ' W o r l d 3 W e a t h e r C o d e L o n '   } ,  
 	 	 C o n f i g s         =   { }  
 	 } ,  
 	 W o r l d 3 W e a t h e r C o d e N a m e   =   { } ,  
 	 W o r l d 3 W e a t h e r C o d e L a t   =   { } ,  
 	 W o r l d 3 W e a t h e r C o d e L o n   =   { } ,  
 	 - -   A P P S  
 	 A p p 1   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 1 '   } , } ,  
 	 A p p 1 P a t h   =   {  
 	 	 D e p e n d e n t s   =   {   ' A p p 1 P a t h H a n d l e '   } ,  
 	 	 C o n f i g s         =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 1 '   } ,  
 	 	 P a r s e             =   P a r s e A p p P a t h  
 	 } ,  
 	 A p p 1 P a t h H a n d l e   =   { } ,  
 	 A p p 1 L a b e l   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 1 '   } , } ,  
 	 A p p 1 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 1 '   } , } ,  
 	 A p p 2   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 2 '   } , } ,  
 	 A p p 2 P a t h   =   {  
 	 	 D e p e n d e n t s   =   {   ' A p p 2 P a t h H a n d l e '   } ,  
 	 	 C o n f i g s         =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 2 '   } ,  
 	 	 P a r s e             =   P a r s e A p p P a t h  
 	 } ,  
 	 A p p 2 P a t h H a n d l e   =   { } ,  
 	 A p p 2 L a b e l   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 2 '   } , } ,  
 	 A p p 2 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 2 '   } , } ,  
 	 A p p 3   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 3 '   } , } ,  
 	 A p p 3 P a t h   =   {  
 	 	 D e p e n d e n t s   =   {   ' A p p 3 P a t h H a n d l e '   } ,  
 	 	 C o n f i g s         =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 3 '   } ,  
 	 	 P a r s e             =   P a r s e A p p P a t h  
 	 } ,  
 	 A p p 3 P a t h H a n d l e   =   { } ,  
 	 A p p 3 L a b e l   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 3 '   } , } ,  
 	 A p p 3 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 3 '   } , } ,  
 	 A p p 4   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 4 '   } , } ,  
 	 A p p 4 P a t h   =   {  
 	 	 D e p e n d e n t s   =   {   ' A p p 4 P a t h H a n d l e '   } ,  
 	 	 C o n f i g s         =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 4 '   } ,  
 	 	 P a r s e             =   P a r s e A p p P a t h  
 	 } ,  
 	 A p p 4 P a t h H a n d l e   =   { } ,  
 	 A p p 4 L a b e l   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 4 '   } , } ,  
 	 A p p 4 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 4 '   } , } ,  
 	 A p p 5   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 5 '   } , } ,  
 	 A p p 5 P a t h   =   {  
 	 	 D e p e n d e n t s   =   {   ' A p p 5 P a t h H a n d l e '   } ,  
 	 	 C o n f i g s         =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 5 '   } ,  
 	 	 P a r s e             =   P a r s e A p p P a t h  
 	 } ,  
 	 A p p 5 P a t h H a n d l e   =   { } ,  
 	 A p p 5 L a b e l   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 5 '   } , } ,  
 	 A p p 5 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ L a u n c h e r \ \ L a u n c h e r 5 '   } , } ,  
 	 - -   S E A R C H  
 	 S e a r c h 1   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 1 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 1 C o m m a n d   =   {  
 	 	 C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 1 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 S e a r c h 1 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 1 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 2   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 2 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 2 C o m m a n d   =   {  
 	 	 C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 2 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 S e a r c h 2 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 2 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 3   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 3 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 3 C o m m a n d   =   {  
 	 	 C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 3 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 S e a r c h 3 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 3 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 4   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 4 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 4 C o m m a n d   =   {  
 	 	 C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 4 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 S e a r c h 4 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 4 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 5   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 5 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 S e a r c h 5 C o m m a n d   =   {  
 	 	 C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 5 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } ,  
 	 	 P a r s e       =   P a r s e P r o t o c o l  
 	 } ,  
 	 S e a r c h 5 I c o n   =   { C o n f i g s   =   {   ' T a s k b a r \ \ S e a r c h \ \ S e a r c h 5 ' ,   ' T a s k b a r \ \ S e a r c h \ \ R u n '   } , } ,  
 	 - -   F O R M A T  
 	 S t y l e s h e e t   =   { } ,  
 	 C o l o r 1   =   { F i l e   =   t r u e } ,  
 	 C o l o r L i n k   =   { F i l e   =   t r u e } ,  
 	 C o l o r B o r d e r   =   { F i l e   =   t r u e } ,  
 	 C o l o r E v e n t   =   { F i l e   =   t r u e } ,  
 	 C o l o r P a n e l   =   { F i l e   =   t r u e } ,  
 	 C o l o r F i l t e r   =   { F i l e   =   t r u e } ,  
 	 C o l o r T r a n s p a r e n t   =   { F i l e   =   t r u e } ,  
 	 C o l o r I m a g e   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 L o o p   =   {   ' W ' ,   ' B '   } ,  
 	 	 L a b e l s   =   {   ' W ' ,   ' B '   }  
 	 } ,  
 	 S i z e 1   =   { F i l e   =   t r u e } ,  
 	 S i z e 4   =   { F i l e   =   t r u e } ,  
 	 S i z e 3   =   { F i l e   =   t r u e } ,  
 	 S i z e 2   =   { F i l e   =   t r u e } ,  
 	 F o n t   =   { F i l e   =   t r u e } ,  
 	 S k i n B a c k g r o u n d A l p h a     =   { F i l e   =   t r u e } ,  
 	 H i d e B o r d e r s T o p   =   {  
 	 	 F i l e   =   t r u e ,    
 	 	 L o o p   =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s   =   {   ' Y e s ' ,   ' N o '   }  
 	 } ,  
 	 H i d e B o r d e r s B o t t o m   =   {  
 	 	 F i l e   =   t r u e ,    
 	 	 L o o p   =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s   =   {   ' Y e s ' ,   ' N o '   }  
 	 } ,  
 	 - - L A Y O U T  
 	 S i d e b a r W i d t h   =   { F i l e   =   t r u e } ,  
 	 S i d e b a r S p a c i n g F i x e d   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' S i d e b a r ' ,   ' S i d e b a r \ \ S i d e b a r 2 '   } ,    
 	 	 L o o p   =   {   ' 0 ' ,   ' 1 ' ,   ' 2 '   } ,  
 	 	 L a b e l s   =   {   ' N o ' ,   ' Y e s ' ,   ' D o u b l e '   }  
 	 } ,  
 	 S i d e b a r A l p h a   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' S i d e b a r ' ,   ' S i d e b a r \ \ S i d e b a r 2 '   }  
 	 } ,  
 	 S i d e b a r I m a g e   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' S i d e b a r ' ,   ' S i d e b a r \ \ S i d e b a r 2 '   }  
 	 } ,  
 	 S e c o n d S i d e b a r I m a g e   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' S i d e b a r ' ,   ' S i d e b a r \ \ S i d e b a r 2 '   }  
 	 } ,  
 	 T a s k b a r H e i g h t   =   { F i l e   =   t r u e } ,  
 	 T a s k b a r S p a c i n g F i x e d   =   {  
 	 	 F i l e   =   t r u e ,    
 	 	 C o n f i g s   =   {   ' T a s k b a r ' ,   ' T a s k b a r \ \ T a s k b a r 2 '   } ,  
 	 	 L o o p   =   {   ' 0 ' ,   ' 1 ' ,   ' 2 '   } ,  
 	 	 L a b e l s   =   {   ' N o ' ,   ' Y e s ' ,   ' D o u b l e '   }  
 	 } ,  
 	 T a s k b a r A l p h a   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' T a s k b a r ' ,   ' T a s k b a r \ \ T a s k b a r 2 '   } ,  
 	 } ,  
 	 T a s k b a r I m a g e   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' T a s k b a r ' ,   ' T a s k b a r \ \ T a s k b a r 2 '   } ,  
 	 } ,  
 	 S e c o n d T a s k b a r I m a g e   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' T a s k b a r ' ,   ' T a s k b a r \ \ T a s k b a r 2 '   } ,  
 	 } ,  
 	 T a s k b a r M a x S k i n W i d t h     =   { F i l e   =   t r u e } ,  
 	 T a s k b a r M i n S k i n W i d t h     =   { F i l e   =   t r u e } ,  
 	 T a s k b a r H i d e T r i p t y c h   =   {  
 	 	 F i l e   =   t r u e ,  
 	 	 C o n f i g s   =   {   ' T a s k b a r ' ,   ' T a s k b a r \ \ T a s k b a r 2 '   } ,  
 	 	 L o o p   =   {   ' 0 ' ,   ' 1 '   } ,  
 	 	 L a b e l s   =   {   ' Y e s ' ,   ' N o '   }  
 	 }  
 } 