require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2302107Trigger = class("Q2302107Trigger", GadgetActorProxy)
Q2302107Trigger.defaultAlias = "Q2302107Trigger"
local Q23021ClientConfig = require("Quest/Client/Q23021ClientConfig")

local subIDs = Q23021ClientConfig.SubIDs
local npcs = Q23021ClientConfig.Npcs
local datas = Q23021ClientConfig.Datas

function Q2302107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2302107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2302107Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23021"):NarratorOnlyTask(datas.NarratorTable02, nil, "")
    actorUtils.FinishQuestID(false, 2302107)
    self:DestroySelf()
end

function Q2302107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2302107Trigger
