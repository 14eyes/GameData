require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223908Trigger = class("Q7223908Trigger", GadgetActorProxy)
Q7223908Trigger.defaultAlias = "Q7223908Trigger"
local Q72239ClientConfig = require("Quest/Client/Q72239ClientConfig")

local subIDs = Q72239ClientConfig.SubIDs
local npcs = Q72239ClientConfig.Npcs
local datas = Q72239ClientConfig.Datas

function Q7223908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23.52897, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223908Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72239")
    actor:NarratorOnlyTask(datas.NarratorTable_7223908, nil, "")
    actor:FinishQuestID(false, 7223908)
    self:DestroySelf()
end

function Q7223908Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7223908Trigger
