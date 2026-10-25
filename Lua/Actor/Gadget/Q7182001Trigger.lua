require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7182001Trigger = class("Q7182001Trigger", GadgetActorProxy)
Q7182001Trigger.defaultAlias = "Q7182001Trigger"
local Q71820ClientConfig = require("Quest/Client/Q71820ClientConfig")

local mainID = Q71820ClientConfig.MainID
local actorAlias = Q71820ClientConfig.ActorAlias
local subIDs = Q71820ClientConfig.SubIDs
local npcs = Q71820ClientConfig.Npcs
local gadgets = Q71820ClientConfig.Gadgets
local datas = Q71820ClientConfig.Datas

function Q7182001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7182001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7182001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7182001)
    self:DestroySelf()
end

function Q7182001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7182001Trigger
