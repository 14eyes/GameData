require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7182301Trigger = class("Q7182301Trigger", GadgetActorProxy)
Q7182301Trigger.defaultAlias = "Q7182301Trigger"
local Q71823ClientConfig = require("Quest/Client/Q71823ClientConfig")

local mainID = Q71823ClientConfig.MainID
local actorAlias = Q71823ClientConfig.ActorAlias
local subIDs = Q71823ClientConfig.SubIDs
local npcs = Q71823ClientConfig.Npcs
local gadgets = Q71823ClientConfig.Gadgets
local datas = Q71823ClientConfig.Datas

function Q7182301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7182301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7182301Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7182301)
    self:DestroySelf()
end

function Q7182301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7182301Trigger
