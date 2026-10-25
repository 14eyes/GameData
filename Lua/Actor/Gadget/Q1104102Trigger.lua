require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104102Trigger = class("Q1104102Trigger", GadgetActorProxy)
Q1104102Trigger.defaultAlias = "Q1104102Trigger"
local Q11041ClientConfig = require("Quest/Client/Q11041ClientConfig")

local mainID = Q11041ClientConfig.MainID
local actorAlias = Q11041ClientConfig.ActorAlias
local subIDs = Q11041ClientConfig.SubIDs
local npcs = Q11041ClientConfig.Npcs
local gadgets = Q11041ClientConfig.Gadgets
local datas = Q11041ClientConfig.Datas

function Q1104102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1104102)
    self:DestroySelf()
end

function Q1104102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104102Trigger
