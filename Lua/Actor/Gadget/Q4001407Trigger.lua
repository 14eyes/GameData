require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001407Trigger = class("Q4001407Trigger", GadgetActorProxy)
Q4001407Trigger.defaultAlias = "Q4001407Trigger"
local Q40014ClientConfig = require("Quest/Client/Q40014ClientConfig")

local mainID = Q40014ClientConfig.MainID
local actorAlias = Q40014ClientConfig.ActorAlias
local subIDs = Q40014ClientConfig.SubIDs
local npcs = Q40014ClientConfig.Npcs
local gadgets = Q40014ClientConfig.Gadgets
local datas = Q40014ClientConfig.Datas

function Q4001407Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001407Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001407Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001407)
    self:DestroySelf()
end

function Q4001407Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001407Trigger
