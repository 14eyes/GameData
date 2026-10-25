require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11122Trigger_Search3 = class("Q11122Trigger_Search3", GadgetActorProxy)
Q11122Trigger_Search3.defaultAlias = "Q11122Trigger_Search3"
local Q11122ClientConfig = require("Quest/Client/Q11122ClientConfig")

local mainID = Q11122ClientConfig.MainID
local actorAlias = Q11122ClientConfig.ActorAlias
local subIDs = Q11122ClientConfig.SubIDs
local npcs = Q11122ClientConfig.Npcs
local gadgets = Q11122ClientConfig.Gadgets
local datas = Q11122ClientConfig.Datas

function Q11122Trigger_Search3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11122Trigger_Search3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11122Trigger_Search3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1112205)
    actorMgr:DestroyEntityActor(datas.Q11122Trigger_Search3_.alias, 3, false)
end

function Q11122Trigger_Search3:TriggerOut()
    print("TriggerOut")
end

return Q11122Trigger_Search3
