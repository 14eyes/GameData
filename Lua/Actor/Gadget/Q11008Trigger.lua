require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11008Trigger = class("Q11008Trigger", GadgetActorProxy)
Q11008Trigger.defaultAlias = "Q11008Trigger"
local Q11008ClientConfig = require("Quest/Client/Q11008ClientConfig")

local subIDs = Q11008ClientConfig.SubIDs
local npcs = Q11008ClientConfig.Npcs
local gadgets = Q11008ClientConfig.Gadgets
local datas = Q11008ClientConfig.Datas

function Q11008Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11008Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11008Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11008"):FinishQuestID(false, 1100816)
    self:DestroySelf()
end

function Q11008Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11008Trigger
