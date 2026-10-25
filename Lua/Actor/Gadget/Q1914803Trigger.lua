require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914803Trigger = class("Q1914803Trigger", GadgetActorProxy)
Q1914803Trigger.defaultAlias = "Q1914803Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914803Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914803Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914803Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19148").FinishQuestID(false, 1914803)
end

function Q1914803Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914803Trigger
