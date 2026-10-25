require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72125Trigger = class("Q72125Trigger", GadgetActorProxy)
Q72125Trigger.defaultAlias = "Q72125Trigger"
local Q72125ClientConfig = require("Quest/Client/Q72125ClientConfig")

local mainID = Q72125ClientConfig.MainID
local actorAlias = Q72125ClientConfig.ActorAlias
local subIDs = Q72125ClientConfig.SubIDs
local npcs = Q72125ClientConfig.Npcs
local datas = Q72125ClientConfig.Datas

function Q72125Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72125Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72125Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7212503)
    self:DestroySelf()
end

function Q72125Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72125Trigger
