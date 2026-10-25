require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200202Trigger = class("Q200202Trigger", GadgetActorProxy)
Q200202Trigger.defaultAlias = "Q200202Trigger"
local Q2002ClientConfig = require("Quest/Client/Q2002ClientConfig")

local mainID = Q2002ClientConfig.MainID
local actorAlias = Q2002ClientConfig.ActorAlias
local subIDs = Q2002ClientConfig.SubIDs
local npcs = Q2002ClientConfig.Npcs
local gadgets = Q2002ClientConfig.Gadgets
local datas = Q2002ClientConfig.Datas

function Q200202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200202Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc1031Data.alias)
    self:DestroySelf()
end

function Q200202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200202Trigger
