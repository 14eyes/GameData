require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141108Trigger = class("Q4141108Trigger", GadgetActorProxy)
Q4141108Trigger.defaultAlias = "Q4141108Trigger"
local Q41411ClientConfig = require("Quest/Client/Q41411ClientConfig")

local mainID = Q41411ClientConfig.MainID
local actorAlias = Q41411ClientConfig.ActorAlias
local subIDs = Q41411ClientConfig.SubIDs
local npcs = Q41411ClientConfig.Npcs
local datas = Q41411ClientConfig.Datas

function Q4141108Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141108Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141108Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.BarbaraData.alias)
    self:DestroySelf()
end

function Q4141108Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141108Trigger
