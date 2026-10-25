require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13008Trigger4 = class("Q13008Trigger4", GadgetActorProxy)
Q13008Trigger4.defaultAlias = "Q13008Trigger4"
local Q13008ClientConfig = require("Quest/Client/Q13008ClientConfig")

local subIDs = Q13008ClientConfig.SubIDs
local npcs = Q13008ClientConfig.Npcs
local datas = Q13008ClientConfig.Datas

function Q13008Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13008Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13008Trigger4:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13008")
    actor:CreateQuestNpcById(1300802, npcs.Npc1054Data.id, 0)
    actor:CreateQuestNpcById(1300802, npcs.Npc12713Data.id, 0)
    self:DestroySelf()
end

function Q13008Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q13008Trigger4
