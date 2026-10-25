require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2008Trigger = class("Q2008Trigger", GadgetActorProxy)
Q2008Trigger.defaultAlias = "Q2008Trigger"
local Q2008ClientConfig = require("Quest/Client/Q2008ClientConfig")

local mainID = Q2008ClientConfig.MainID
local actorAlias = Q2008ClientConfig.ActorAlias
local subIDs = Q2008ClientConfig.SubIDs
local npcs = Q2008ClientConfig.Npcs
local gadgets = Q2008ClientConfig.Gadgets
local datas = Q2008ClientConfig.Datas

function Q2008Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2008Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2008Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200808)
    self:DestroySelf()
end

function Q2008Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2008Trigger
