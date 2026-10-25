require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11124Trigger = class("Q11124Trigger", GadgetActorProxy)
Q11124Trigger.defaultAlias = "Q11124Trigger"
local Q11124ClientConfig = require("Quest/Client/Q11124ClientConfig")

local mainID = Q11124ClientConfig.MainID
local actorAlias = Q11124ClientConfig.ActorAlias
local subIDs = Q11124ClientConfig.SubIDs
local npcs = Q11124ClientConfig.Npcs
local datas = Q11124ClientConfig.Datas

function Q11124Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11124Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11124Trigger:TriggerIn()
    print("TriggerIn")
end

function Q11124Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1112401)
    actorMgr:DestroyEntityActor(datas.Q11124Trigger_.alias, 3, false)
end

return Q11124Trigger
