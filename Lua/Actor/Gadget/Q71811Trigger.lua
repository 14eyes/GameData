require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71811Trigger = class("Q71811Trigger", GadgetActorProxy)
Q71811Trigger.defaultAlias = "Q71811Trigger"
local Q71811ClientConfig = require("Quest/Client/Q71811ClientConfig")

local mainID = Q71811ClientConfig.MainID
local actorAlias = Q71811ClientConfig.ActorAlias
local subIDs = Q71811ClientConfig.SubIDs
local gadgets = Q71811ClientConfig.Gadgets
local datas = Q71811ClientConfig.Datas

function Q71811Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71811Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71811Trigger:TriggerIn()
    print("TriggerIn")
end

function Q71811Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 7181103)
    actorMgr:DestroyEntityActor(datas.Q71811Trigger_.alias, 3, false)
end

return Q71811Trigger
