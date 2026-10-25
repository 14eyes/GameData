require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4001420Trigger = class("Q4001420Trigger", GadgetActorProxy)
Q4001420Trigger.defaultAlias = "Q4001420Trigger"
local Q40014ClientConfig = require("Quest/Client/Q40014ClientConfig")

local mainID = Q40014ClientConfig.MainID
local actorAlias = Q40014ClientConfig.ActorAlias
local subIDs = Q40014ClientConfig.SubIDs
local npcs = Q40014ClientConfig.Npcs
local gadgets = Q40014ClientConfig.Gadgets
local datas = Q40014ClientConfig.Datas

function Q4001420Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4001420Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4001420Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001420)
    self:DestroySelf()
end

function Q4001420Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4001420Trigger
