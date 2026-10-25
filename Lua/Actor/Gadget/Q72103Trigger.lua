require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72103Trigger = class("Q72103Trigger", GadgetActorProxy)
Q72103Trigger.defaultAlias = "Q72103Trigger"
local Q72103ClientConfig = require("Quest/Client/Q72103ClientConfig")

local mainID = Q72103ClientConfig.MainID
local actorAlias = Q72103ClientConfig.ActorAlias
local subIDs = Q72103ClientConfig.SubIDs
local npcs = Q72103ClientConfig.Npcs
local datas = Q72103ClientConfig.Datas

function Q72103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72103Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7210336)
    self:DestroySelf()
end

function Q72103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72103Trigger
