require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103503Trigger = class("Q7103503Trigger", GadgetActorProxy)
Q7103503Trigger.defaultAlias = "Q7103503Trigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71035"):FinishQuestID(false, 7103503)
    self:DestroySelf()
end

function Q7103503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7103503Trigger
