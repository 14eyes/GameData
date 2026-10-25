require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger5 = class("Q13007Trigger5", GadgetActorProxy)
Q13007Trigger5.defaultAlias = "Q13007Trigger5"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13007"):RequestInteraction(npcs.Npc12713Data.alias)
    self:DestroySelf()
end

function Q13007Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger5
