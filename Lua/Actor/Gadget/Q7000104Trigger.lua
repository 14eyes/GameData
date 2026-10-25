require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7000104Trigger = class("Q7000104Trigger", GadgetActorProxy)
Q7000104Trigger.defaultAlias = "Q7000104Trigger"
local Q70001ClientConfig = require("Quest/Client/Q70001ClientConfig")

local mainID = Q70001ClientConfig.MainID
local actorAlias = Q70001ClientConfig.ActorAlias
local subIDs = Q70001ClientConfig.SubIDs
local npcs = Q70001ClientConfig.Npcs
local datas = Q70001ClientConfig.Datas

function Q7000104Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7000104Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7000104Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:FinishQuestID(false, 7000104)
    actor:NarratorOnlyTaskByData(datas.NarratorTable1, nil, "StoryCut")
    self:DestroySelf()
end

function Q7000104Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7000104Trigger
