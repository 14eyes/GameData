require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021301Trigger = class("Q4021301Trigger", GadgetActorProxy)
Q4021301Trigger.defaultAlias = "Q4021301Trigger"
local Q40213ClientConfig = require("Quest/Client/Q40213ClientConfig")

local this
local subIDs = Q40213ClientConfig.SubIDs
local datas = Q40213ClientConfig.Datas
local npcs = Q40213ClientConfig.Npcs

function Q4021301Trigger:OnPostDataPrepare()
    print("Q4021301Trigger - OnPostDataPrepare")
    this = self
end

function Q4021301Trigger:OnPostComponentPrepare()
    print("Q4021301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40213)
end

function Q4021301Trigger:TriggerIn()
    print("Q4021301Trigger - TriggerIn")
    actorMgr:GetActor("40213"):CreateQuestOrphanNpc(quest, 15597, 0, true, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:GetActor("40213"):CreateQuestOrphanNpc(quest, 15598, 1, true, 0.5, datas.QuestOrphanNpcPlaceList)
    this:DestroySelf()
end

function Q4021301Trigger:PreTriggerIn()
    print("Q4021301Trigger - PreTriggerIn")
end

function Q4021301Trigger:LightUpTriggerIn()
    print("Q4021301Trigger - LightUpTriggerIn")
end

function Q4021301Trigger:TriggerOut()
    print("Q4021301Trigger - TriggerOut")
end

return Q4021301Trigger
