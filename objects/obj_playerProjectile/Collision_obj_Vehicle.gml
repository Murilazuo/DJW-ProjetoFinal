/// @description Insert description here
// You can write your code in this editor
part_particles_create(obj_ParticleManager.particleSystem,x,y,obj_ParticleManager.sparkParticle,1);

PlaySound(choose(snd_metalHit1,snd_metalHit2,snd_metalHit3),SndType.FX,1,0)

instance_destroy();