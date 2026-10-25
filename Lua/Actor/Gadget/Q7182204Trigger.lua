require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7182204Trigger = class("Q7182204Trigger", GadgetActorProxy)
Q7182204Trigger.defaultAlias = "Q7182204Trigger"
local Q71822ClientConfig = require("Quest/Client/Q71822ClientConfig")

local mainID = Q71822ClientConfig.MainID
local actorAlias = Q71822ClientConfig.ActorAlias
local subIDs = Q71822ClientConfig.SubIDs
local npcs = Q71822ClientConfig.Npcs
local gadgets = Q71822ClientConfig.Gadgets
local datas = Q71822ClientConfig.Datas

function Q7182204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7182204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7182204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7182204)
    actorMgr:DestroyEntityActor(datas.Q7182204Trigger_.alias, 3, false)
end

function Q7182204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7182204Trigger
