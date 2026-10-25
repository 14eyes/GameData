require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13014TriggerDreamB = class("Q13014TriggerDreamB", GadgetActorProxy)
Q13014TriggerDreamB.defaultAlias = "Q13014TriggerDreamB"
local Q13014ClientConfig = require("Quest/Client/Q13014ClientConfig")

local subIDs = Q13014ClientConfig.SubIDs
local npcs = Q13014ClientConfig.Npcs
local datas = Q13014ClientConfig.Datas

function Q13014TriggerDreamB:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13014TriggerDreamB:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13014TriggerDreamB:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13014"):RequestInteraction(npcs.Npc12840Data.alias)
    self:DestroySelf()
end

function Q13014TriggerDreamB:TriggerOut()
    print("TriggerOut")
end

return Q13014TriggerDreamB
