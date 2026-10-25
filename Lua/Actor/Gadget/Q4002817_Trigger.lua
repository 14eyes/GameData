require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002817_Trigger = class("Q4002817_Trigger", GadgetActorProxy)
Q4002817_Trigger.defaultAlias = "Q4002817_Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q4002817_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002817_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002817_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):FinishQuestID(false, 4002817)
    self:DestroySelf()
end

function Q4002817_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002817_Trigger
