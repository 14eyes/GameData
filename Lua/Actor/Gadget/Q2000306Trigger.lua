require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2000306Trigger = class("Q2000306Trigger", GadgetActorProxy)
Q2000306Trigger.defaultAlias = "Q2000306Trigger"
local Q20003ClientConfig = require("Quest/Client/Q20003ClientConfig")

local subIDs = Q20003ClientConfig.SubIDs
local npcs = Q20003ClientConfig.Npcs
local datas = Q20003ClientConfig.Datas

function Q2000306Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2000306Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2000306Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("20003")
    actor:NarratorOnlyTask(datas.NarratorData200039903, nil, "StoryInMainPage")
    actor:FinishQuestID(false, 2000306)
    self:DestroySelf()
end

function Q2000306Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2000306Trigger
