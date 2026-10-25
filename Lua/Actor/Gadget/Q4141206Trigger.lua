require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141206Trigger = class("Q4141206Trigger", GadgetActorProxy)
Q4141206Trigger.defaultAlias = "Q4141206Trigger"
local Q41412ClientConfig = require("Quest/Client/Q41412ClientConfig")

local mainID = Q41412ClientConfig.MainID
local actorAlias = Q41412ClientConfig.ActorAlias
local subIDs = Q41412ClientConfig.SubIDs
local npcs = Q41412ClientConfig.Npcs
local datas = Q41412ClientConfig.Datas

function Q4141206Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141206Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141206Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.BarbaraData.alias)
    self:DestroySelf()
end

function Q4141206Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141206Trigger
