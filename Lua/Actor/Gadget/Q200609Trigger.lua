require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200609Trigger = class("Q200609Trigger", GadgetActorProxy)
Q200609Trigger.defaultAlias = "Q200609Trigger"
local Q2006ClientConfig = require("Quest/Client/Q2006ClientConfig")

local mainID = Q2006ClientConfig.MainID
local actorAlias = Q2006ClientConfig.ActorAlias
local subIDs = Q2006ClientConfig.SubIDs
local npcs = Q2006ClientConfig.Npcs
local datas = Q2006ClientConfig.Datas

function Q200609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200609Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200609)
    self:DestroySelf()
end

function Q200609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200609Trigger
