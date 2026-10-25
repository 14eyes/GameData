require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7182017Trigger = class("Q7182017Trigger", GadgetActorProxy)
Q7182017Trigger.defaultAlias = "Q7182017Trigger"
local Q71820ClientConfig = require("Quest/Client/Q71820ClientConfig")

local mainID = Q71820ClientConfig.MainID
local actorAlias = Q71820ClientConfig.ActorAlias
local subIDs = Q71820ClientConfig.SubIDs
local npcs = Q71820ClientConfig.Npcs
local gadgets = Q71820ClientConfig.Gadgets
local datas = Q71820ClientConfig.Datas

function Q7182017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7182017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7182017Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7182017)
    self:DestroySelf()
end

function Q7182017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7182017Trigger
