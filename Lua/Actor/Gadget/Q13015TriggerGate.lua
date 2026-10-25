require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13015TriggerGate = class("Q13015TriggerGate", GadgetActorProxy)
Q13015TriggerGate.defaultAlias = "Q13015TriggerGate"
local Q13015ClientConfig = require("Quest/Client/Q13015ClientConfig")

local subIDs = Q13015ClientConfig.SubIDs
local npcs = Q13015ClientConfig.Npcs
local datas = Q13015ClientConfig.Datas

function Q13015TriggerGate:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13015TriggerGate:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13015TriggerGate:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13015"):RequestInteraction(npcs.Npc4096Data.alias)
    self:DestroySelf()
end

function Q13015TriggerGate:TriggerOut()
    print("TriggerOut")
end

return Q13015TriggerGate
