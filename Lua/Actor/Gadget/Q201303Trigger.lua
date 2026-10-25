require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201303Trigger = class("Q201303Trigger", GadgetActorProxy)
Q201303Trigger.defaultAlias = "Q201303Trigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201303Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201303Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201303Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 201303)
    self:DestroySelf()
end

function Q201303Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201303Trigger
