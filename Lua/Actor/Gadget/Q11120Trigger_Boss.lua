require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11120Trigger_Boss = class("Q11120Trigger_Boss", GadgetActorProxy)
Q11120Trigger_Boss.defaultAlias = "Q11120Trigger_Boss"
local Q11120ClientConfig = require("Quest/Client/Q11120ClientConfig")

local mainID = Q11120ClientConfig.MainID
local actorAlias = Q11120ClientConfig.ActorAlias
local subIDs = Q11120ClientConfig.SubIDs
local npcs = Q11120ClientConfig.Npcs
local datas = Q11120ClientConfig.Datas

function Q11120Trigger_Boss:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11120Trigger_Boss:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11120Trigger_Boss:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1112005)
    actorMgr:DestroyEntityActor(datas.Q11120Trigger_Boss_.alias, 3, false)
end

function Q11120Trigger_Boss:TriggerOut()
    print("TriggerOut")
end

return Q11120Trigger_Boss
