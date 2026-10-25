require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11114Trigger = class("Q11114Trigger", GadgetActorProxy)
Q11114Trigger.defaultAlias = "Q11114Trigger"
local Q11114ClientConfig = require("Quest/Client/Q11114ClientConfig")

local mainID = Q11114ClientConfig.MainID
local actorAlias = Q11114ClientConfig.ActorAlias
local subIDs = Q11114ClientConfig.SubIDs
local npcs = Q11114ClientConfig.Npcs
local datas = Q11114ClientConfig.Datas

function Q11114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11114Trigger:TriggerIn()
    print("TriggerIn")
end

function Q11114Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1111401)
end

return Q11114Trigger
