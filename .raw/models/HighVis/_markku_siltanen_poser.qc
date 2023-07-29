
$ambientboost
$mostlyopaque

$ModelName jessev92/characters/highvis/mark/poser
$model "Markku Siltanen" mark/mark_face {
	$include "mark/standardflex_xsi_07.qci"
}

$include mark_common.qci
$include optimization_mark.qci

$include "humans\male\ragdoll_flexible.qci"
$include "humans\male\hitbox.qci"
$include "humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"

$surfaceprop flesh

$includemodel m_anm.mdl
$includemodel humans/male_anim.mdl
$includemodel humans/male_postures.mdl
$includemodel humans/male_gestures.mdl
$includemodel humans/male_ss.mdl
$includemodel humans/male_shared.mdl
$includemodel combine_soldier_anims.mdl