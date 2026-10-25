require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger4 = class("Q13007Trigger4", GadgetActorProxy)
Q13007Trigger4.defaultAlias = "Q13007Trigger4"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger4:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("13007")
    actor:CreateSpeechBubbleTask(npcs.Npc12713Data.id, 130079928, 3, true, 8, 9)
    actor:GetQuestNpcActor(npcs.Npc12713Data.alias):NarratorOnlyTaskByData(datas.Narrator_1300707, nil, 13007)
    self:DestroySelf()
end

function Q13007Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger4
