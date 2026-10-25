require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4134106Trigger = class("Q4134106Trigger", GadgetActorProxy)
Q4134106Trigger.defaultAlias = "Q4134106Trigger"
local Q41341ClientConfig = require("Quest/Client/Q41341ClientConfig")

local mainID = Q41341ClientConfig.MainID
local actorAlias = Q41341ClientConfig.ActorAlias
local subIDs = Q41341ClientConfig.SubIDs
local npcs = Q41341ClientConfig.Npcs
local gadgets = Q41341ClientConfig.Gadgets
local datas = Q41341ClientConfig.Datas

function Q4134106Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4134106Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4134106Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4134106)
    actorMgr:DestroyEntityActor(datas.Q4134106Trigger_.alias, 3, false)
end

function Q4134106Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4134106Trigger
