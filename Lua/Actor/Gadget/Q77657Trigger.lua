require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77657Trigger = class("Q77657Trigger", GadgetActorProxy)
Q77657Trigger.defaultAlias = "Q77657Trigger"
local Q77657ClientConfig = require("Quest/Client/Q77657ClientConfig")

local this
local subIDs = Q77657ClientConfig.SubIDs
local datas = Q77657ClientConfig.Datas
local npcs = Q77657ClientConfig.Npcs
local points = Q77657ClientConfig.Points

function Q77657Trigger:OnPostDataPrepare()
    print("Q77657Trigger - OnPostDataPrepare")
    this = self
end

function Q77657Trigger:OnPostComponentPrepare()
    print("Q77657Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(22, 30, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77657)
end

function Q77657Trigger:TriggerIn()
    print("Q77657Trigger - TriggerIn")
    actorMgr:GetActor("77657"):RequestInteraction(npcs.Npc7417.alias, "", true)
    this:DestroySelf()
end

function Q77657Trigger:PreTriggerIn()
    print("Q77657Trigger - PreTriggerIn")
end

function Q77657Trigger:LightUpTriggerIn()
    print("Q77657Trigger - LightUpTriggerIn")
end

function Q77657Trigger:TriggerOut()
    print("Q77657Trigger - TriggerOut")
end

return Q77657Trigger
