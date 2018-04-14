FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � Applescript written by Bill Tubbs
This script uses the built-in speech synthesiser on Mac OS X 
to speak the current time in an approximate fashion. E.g.
"It's half past eleven" 
TODO: It says "It's just gone quarter to zero" at 11:51
     � 	 	�   A p p l e s c r i p t   w r i t t e n   b y   B i l l   T u b b s 
 T h i s   s c r i p t   u s e s   t h e   b u i l t - i n   s p e e c h   s y n t h e s i s e r   o n   M a c   O S   X   
 t o   s p e a k   t h e   c u r r e n t   t i m e   i n   a n   a p p r o x i m a t e   f a s h i o n .   E . g . 
 " I t ' s   h a l f   p a s t   e l e v e n "   
 T O D O :   I t   s a y s   " I t ' s   j u s t   g o n e   q u a r t e r   t o   z e r o "   a t   1 1 : 5 1 
   
  
 l     ��������  ��  ��        l     ����  r         I    ������
�� .sysogtvlvlst   ��� null��  ��    o      ���� 0 thevol theVol��  ��        l    ����  r        H       l    ����  n        1   	 ��
�� 
mute  o    	���� 0 thevol theVol��  ��    o      ���� 0 	readaloud 	readAloud��  ��     ��  l   ����  Z     ����  o    ���� 0 	readaloud 	readAloud  Q         k    � ! !  " # " r     $ % $ I   ������
�� .misccurdldt    ��� null��  ��   % o      ���� 0 thedate theDate #  & ' & r    # ( ) ( n    ! * + * 1    !��
�� 
time + o    ���� 0 thedate theDate ) o      ���� $0 thetimeinseconds theTimeinSeconds '  , - , r   $ ) . / . _   $ ' 0 1 0 o   $ %���� $0 thetimeinseconds theTimeinSeconds 1 m   % &���� < / o      ���� $0 thetimeinminutes theTimeinMinutes -  2 3 2 r   * / 4 5 4 `   * - 6 7 6 o   * +���� $0 thetimeinminutes theTimeinMinutes 7 m   + ,���� < 5 o      ���� 0 
theminutes 
theMinutes 3  8 9 8 r   0 7 : ; : `   0 5 < = < l  0 3 >���� > _   0 3 ? @ ? o   0 1���� $0 thetimeinminutes theTimeinMinutes @ m   1 2���� <��  ��   = m   3 4����  ; o      ���� 0 thehour theHour 9  A B A r   8 ? C D C _   8 = E F E l  8 ; G���� G [   8 ; H I H o   8 9���� 0 
theminutes 
theMinutes I m   9 : J J @      ��  ��   F m   ; <����  D o      ���� &0 thenearestquarter theNearestQuarter B  K L K r   @ I M N M l  @ E O���� O \   @ E P Q P o   @ A���� 0 
theminutes 
theMinutes Q ]   A D R S R m   A B����  S o   B C���� &0 thenearestquarter theNearestQuarter��  ��   N o      ����  0 theminutespast theMinutesPast L  T U T l  J J��������  ��  ��   U  V W V Z   J v X Y Z [ X ?  J O \ ] \ o   J M����  0 theminutespast theMinutesPast ] m   M N����  Y r   R Y ^ _ ^ m   R U ` ` � a a  j u s t   g o n e   _ o      ���� $0 theapproximation theApproximation Z  b c b A  \ c d e d o   \ _����  0 theminutespast theMinutesPast e m   _ b������ c  f�� f r   f m g h g m   f i i i � j j  n e a r l y   h o      ���� $0 theapproximation theApproximation��   [ r   p v k l k J   p r����   l o      ���� $0 theapproximation theApproximation W  m n m l  w w��������  ��  ��   n  o p o Z   w � q r s�� q =  w ~ t u t l  w | v���� v `   w | w x w o   w x���� &0 thenearestquarter theNearestQuarter x m   x {���� ��  ��   u m   | }����   r r   � � y z y b   � � { | { l  � � }���� } [   � � ~  ~ o   � ����� 0 thehour theHour  l  � � ����� � _   � � � � � o   � ����� &0 thenearestquarter theNearestQuarter � m   � ����� ��  ��  ��  ��   | m   � � � � � � �  o ' c l o c k z o      ���� 0 thetime theTime s  � � � =  � � � � � o   � ����� &0 thenearestquarter theNearestQuarter � m   � �����  �  � � � r   � � � � � b   � � � � � m   � � � � � � �  q u a r t e r   p a s t   � o   � ����� 0 thehour theHour � o      ���� 0 thetime theTime �  � � � =  � � � � � o   � ����� &0 thenearestquarter theNearestQuarter � m   � �����  �  � � � r   � � � � � b   � � � � � m   � � � � � � �  h a l f   p a s t   � o   � ����� 0 thehour theHour � o      ���� 0 thetime theTime �  � � � =  � � � � � o   � ����� &0 thenearestquarter theNearestQuarter � m   � �����  �  ��� � r   � � � � � b   � � � � � m   � � � � � � �  q u a r t e r   t o   � l  � � ����� � `   � � � � � l  � � ����� � [   � � � � � o   � ����� 0 thehour theHour � m   � ����� ��  ��   � m   � ����� ��  ��   � o      ���� 0 thetime theTime��  ��   p  � � � l  � ���������  ��  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 I t ' s   � o   � ����� $0 theapproximation theApproximation � o   � ����� 0 thetime theTime � o      ���� *0 thecompletesentence theCompleteSentence �  � � � l  � ��� � ���   � ' !Use the following dialog to debug    � � � � B U s e   t h e   f o l l o w i n g   d i a l o g   t o   d e b u g �  � � � l  � ��� � ���   � Y Sdisplay dialog theHour & "h " & theMinutesPast & "m " & theNearestQuarter as string    � � � � � d i s p l a y   d i a l o g   t h e H o u r   &   " h   "   &   t h e M i n u t e s P a s t   &   " m   "   &   t h e N e a r e s t Q u a r t e r   a s   s t r i n g �  � � � I  � ��� ���
�� .sysottosnull���     TEXT � o   � ����� *0 thecompletesentence theCompleteSentence��   �  ��� � l  � ���������  ��  ��  ��    R      �� � �
�� .ascrerr ****      � **** � l      ����� � o      ���� 0 error_message  ��  ��   � �� ���
�� 
errn � l      ����� � o      ���� 0 error_number  ��  ��  ��     I  ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r :   � l  � � ���� � o   � ��~�~ 0 error_number  ��  �   � m   � � � � � � �  .   � l  � � ��}�| � o   � ��{�{ 0 error_message  �}  �|   � �z � �
�z 
btns � J   � � �  ��y � m   � � � � � �  C a n c e l�y   � �x ��w
�x 
dflt � m  �v�v �w  ��  ��  ��  ��  ��       �u � ��u   � �t
�t .aevtoappnull  �   � **** � �s ��r�q � ��p
�s .aevtoappnull  �   � **** � k     � �   � �   � �  �o�o  �r  �q   � �n�m�n 0 error_message  �m 0 error_number   � &�l�k�j�i�h�g�f�e�d�c�b�a�` J�_�^�] `�\�[ i�Z ��Y � � � ��X�W�V � � ��U ��T�S
�l .sysogtvlvlst   ��� null�k 0 thevol theVol
�j 
mute�i 0 	readaloud 	readAloud
�h .misccurdldt    ��� null�g 0 thedate theDate
�f 
time�e $0 thetimeinseconds theTimeinSeconds�d <�c $0 thetimeinminutes theTimeinMinutes�b 0 
theminutes 
theMinutes�a �` 0 thehour theHour�_ �^ &0 thenearestquarter theNearestQuarter�]  0 theminutespast theMinutesPast�\ $0 theapproximation theApproximation�[���Z �Y 0 thetime theTime�X *0 thecompletesentence theCompleteSentence
�W .sysottosnull���     TEXT�V 0 error_message   � �R�Q�P
�R 
errn�Q 0 error_number  �P  
�U 
btns
�T 
dflt
�S .sysodlogaskr        TEXT�p*j  E�O��,E�O� � �*j E�O��,E�O��"E�O��#E�O��"�#E�O���"E�O��� E` O_ l a E` Y _ a  a E` Y jvE` O�a #j  ��a "a %E` Y =�k  a �%E` Y +�l  a �%E` Y �m  a �k�#%E` Y hOa _ %_ %E` O_ j OPW $X  a  �%a !%�%a "a #kva $ka  %Y hascr  ��ޭ