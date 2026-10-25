require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7100852Trigger = class("Q7100852Trigger", GadgetActorProxy)
Q7100852Trigger.defaultAlias = "Q7100852Trigger"
local Q71008ClientConfig = require("Quest/Client/Q71008ClientConfig")

local subIDs = Q71008ClientConfig.SubIDs
local npcs = Q71008ClientConfig.Npcs
local datas = Q71008ClientConfig.Datas

function Q7100852Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7100852Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7100852Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7100852Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("71008"):FinishQuestID(true, 7100852)
    self:DestroySelf()
end

return Q7100852Trigger
