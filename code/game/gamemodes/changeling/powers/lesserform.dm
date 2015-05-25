/obj/effect/proc_holder/changeling/lesserform
	name = "Lesser form"
	desc = "We debase ourselves and become lesser. We become a monkey."
	chemical_cost = 5
	dna_cost = 1
	genetic_damage = 3
	req_human = 1

//Transform into a monkey.
/obj/effect/proc_holder/changeling/lesserform/sting_action(var/mob/living/carbon/human/user)
	var/datum/changeling/changeling = user.mind.changeling
	if(!user)
		return 0
	if(user.has_brain_worms())
		user << "<span class='warning'>We cannot perform this ability at the present time!</span>"
		return
	user << "<span class='warning'>Our genes cry out!</span>"

	var/mob/living/carbon/human/H = user

	if(!istype(H) || !H.species.primitive_form)
		src << "<span class='warning'>We cannot perform this ability in this form!</span>"
		return

	H.visible_message("<span class='warning'>[H] transforms!</span>")
	changeling.geneticdamage = 30
	H << "<span class='warning'>Our genes cry out!</span>"
	var/list/implants = list() //Try to preserve implants.
	for(var/obj/item/weapon/implant/W in H)
		implants += W
	H.monkeyize()
	feedback_add_details("changeling_powers","LF")
	return 1