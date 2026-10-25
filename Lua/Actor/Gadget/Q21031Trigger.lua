require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21031Trigger = class("Q21031Trigger", GadgetActorProxy)
Q21031Trigger.defaultAlias = "Q21031Trigger"
local Q21031ClientConfig = require("Quest/Client/Q21031ClientConfig")

local subIDs = Q21031ClientConfig.SubIDs
local npcs = Q21031ClientConfig.Npcs
local gadgets = Q21031ClientConfig.Gadgets
local datas = Q21031ClientConfig.Datas

function Q21031Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q21031Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, sceneData:GetDummyPoint(3, "Q2103102"), self.TriggerIn, self.TriggerOut)
end

function Q21031Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("21031")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId)
    actor:FinishQuestID(false, 2103102)
    self:DestroySelf()
end

function Q21031Trigger:TriggerOut()
    print("TriggerOut")
end

return Q21031Trigger
