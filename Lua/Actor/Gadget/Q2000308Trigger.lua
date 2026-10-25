require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2000308Trigger = class("Q2000308Trigger", GadgetActorProxy)
Q2000308Trigger.defaultAlias = "Q2000308Trigger"
local Q20003ClientConfig = require("Quest/Client/Q20003ClientConfig")

local subIDs = Q20003ClientConfig.SubIDs
local npcs = Q20003ClientConfig.Npcs
local datas = Q20003ClientConfig.Datas

function Q2000308Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2000308Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2000308Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("20003")
    actor:NarratorOnlyTask(datas.NarratorData200039904, nil, "StoryInMainPage")
    actor:FinishQuestID(false, 2000308)
    self:DestroySelf()
end

function Q2000308Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2000308Trigger
