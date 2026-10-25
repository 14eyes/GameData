require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13014TriggerDreamAPre = class("Q13014TriggerDreamAPre", GadgetActorProxy)
Q13014TriggerDreamAPre.defaultAlias = "Q13014TriggerDreamAPre"
local Q13014ClientConfig = require("Quest/Client/Q13014ClientConfig")

local subIDs = Q13014ClientConfig.SubIDs
local npcs = Q13014ClientConfig.Npcs
local datas = Q13014ClientConfig.Datas

function Q13014TriggerDreamAPre:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13014TriggerDreamAPre:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13014TriggerDreamAPre:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13014"):RequestInteraction(npcs.Npc12843Data.alias)
    self:DestroySelf()
end

function Q13014TriggerDreamAPre:TriggerOut()
    print("TriggerOut")
end

return Q13014TriggerDreamAPre
