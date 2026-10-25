require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2013HSFailTrigger = class("Q2013HSFailTrigger", GadgetActorProxy)
Q2013HSFailTrigger.defaultAlias = "Q2013HSFailTrigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q2013HSFailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2013HSFailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2013HSFailTrigger:TriggerIn()
    print("TriggerIn")
end

function Q2013HSFailTrigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(true, 201309)
    self:DestroySelf()
end

return Q2013HSFailTrigger
