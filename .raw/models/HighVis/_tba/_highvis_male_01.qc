
$mostlyopaque

$ModelName jessev92/characters/highvis/oc/male_01_ply

$model "Head" "male_01/male_01_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.300000 -3.790003 66.383006 "eyeball_r" 1 4 "iris_unused" 0.59
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.300000 -3.790003 66.383006 "eyeball_l" 1 -4 "iris_unused" 0.59

	flexfile "male_01/male_01.vta" 
	{
		defaultflex frame 0
		flex "jaw_drop" frame 1
	}

	flexcontroller phoneme range 0 1 jaw_drop
	flexcontroller phoneme range 0 1 blank

	localvar blank
	%jaw_drop = jaw_drop
	%blank = blank
}

$model "Body" common/body_highvis

$model "Hands" common/hands_black

$bodygroup "Hard Hat" 
{
	studio common/hardhat_proxy
	studio common/hardhat_fcn
	studio common/hardhat
	blank
}

$bodygroup "Pouches" 
{
	studio common/body_pouches
	blank
}

// $pushd "..\..\..\common"
$include "Humans\Male\ragdoll.qci"
$include "Humans\Male\hitbox.qci"
$include "Humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"
// $popd

$include "optimization_ocrp.qci"

$SurfaceProp "flesh"

$CDMaterials models/jessev92/characters/highvis
$CDMaterials models/jessev92/characters/oc
$CDMaterials models/weapons/c_arms_citizen

$IncludeModel "m_anm.mdl"
