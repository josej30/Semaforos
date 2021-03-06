


/*
 * THIS SOURCE CODE IS SUPPLIED  ``AS IS'' WITHOUT WARRANTY OF ANY KIND, 
 * AND ITS AUTHOR AND THE JOURNAL OF ARTIFICIAL INTELLIGENCE RESEARCH 
 * (JAIR) AND JAIR'S PUBLISHERS AND DISTRIBUTORS, DISCLAIM ANY AND ALL 
 * WARRANTIES, INCLUDING BUT NOT LIMITED TO ANY IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, AND
 * ANY WARRANTIES OR NON INFRINGEMENT.  THE USER ASSUMES ALL LIABILITY AND
 * RESPONSIBILITY FOR USE OF THIS SOURCE CODE, AND NEITHER THE AUTHOR NOR
 * JAIR, NOR JAIR'S PUBLISHERS AND DISTRIBUTORS, WILL BE LIABLE FOR 
 * DAMAGES OF ANY KIND RESULTING FROM ITS USE.  Without limiting the 
 * generality of the foregoing, neither the author, nor JAIR, nor JAIR's
 * publishers and distributors, warrant that the Source Code will be 
 * error-free, will operate without interruption, or will meet the needs 
 * of the user.
 */









/*********************************************************************
 * File: RPG.h
 * Description: headers for fully fledged numeric RPG.
 *
 *
 * Author: Joerg Hoffmann 2006
 *
 *********************************************************************/ 








#ifndef _RPG_H
#define _RPG_H



RPGlayer *RPG_initialize( RPGlayer *RPG );
RPGlayer *RPG_extend( RPGlayer *t );
Bool RPG_satisfiesgoal(RPGlayer *t);
void RPG_print( void );
void RPG_PV_statistics( RPGlayer *t );
void RPG_AE_statistics( RPGlayer *t );



Bool RPG_a_applicable(RPGlayer *t, Action *a);
Bool RPG_e_applicable(RPGlayer *t, ActionEffect *e);
Bool RPG_P_contains(RPGlayer *t, int id);



void RPG_get_constraint_valuetuples(RPGlayer *t, int id);
void RPG_get_psi_valuetuples(RPGlayer *t, int id);
void RPG_insert_effect(RPGlayer *t,
		       int con,
		       int lhs,
		       NumericEffectType type,
		       ExpNode *rhs);



void RPG_get_connectivity( RPGlayer *t );
void RPG_get_connectivity_a_exp( RPGlayer *t, RPGaction *a, ExpNode *exp );
void RPG_get_connectivity_e_exp( RPGlayer *t, RPGeffect *e, ExpNode *exp );



#endif /* _RPG_H */
