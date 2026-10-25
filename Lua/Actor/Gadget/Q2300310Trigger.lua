require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300310Trigger = class("Q2300310Trigger", GadgetActorProxy)
Q2300310Trigger.defaultAlias = "Q2300310Trigger"
local Q23003ClientConfig = require("Quest/Client/Q23003ClientConfig")

local subIDs = Q23003ClientConfig.SubIDs
local npcs = Q23003ClientConfig.Npcs
local datas = Q23003ClientConfig.Datas

function Q2300310Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300310Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300310Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("23003")
    if actor:GetSubQuestState(2300306) == 2 then
        actor:NarratorOnlyTask(datas.NarratorTable230039907, nil, "")
        actorUtils.FinishQuestID(false, 2300310)
        self:DestroySelf()
    end
end

function Q2300310Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300310Trigger
