require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200401Trigger = class("Q200401Trigger", GadgetActorProxy)
Q200401Trigger.defaultAlias = "Q200401Trigger"
local Q2004ClientConfig = require("Quest/Client/Q2004ClientConfig")

local mainID = Q2004ClientConfig.MainID
local actorAlias = Q2004ClientConfig.ActorAlias
local subIDs = Q2004ClientConfig.SubIDs
local npcs = Q2004ClientConfig.Npcs
local gadgets = Q2004ClientConfig.Gadgets
local datas = Q2004ClientConfig.Datas

function Q200401Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200401Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200401Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc3129Data.alias)
    self:DestroySelf()
end

function Q200401Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200401Trigger
