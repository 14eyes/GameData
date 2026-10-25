require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600140Trigger = class("Q600140Trigger", GadgetActorProxy)
Q600140Trigger.defaultAlias = "Q600140Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600140Trigger:OnPostDataPrepare()
    print("Q600140Trigger - OnPostDataPrepare")
    this = self
end

function Q600140Trigger:OnPostComponentPrepare()
    print("Q600140Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13.34722, 12.57012, 10.496311, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600140Trigger:TriggerIn()
    print("Q600140Trigger - TriggerIn")
    actorMgr:GetActor("6001"):RequestInteraction(npcs.Npc15414.alias, "", true)
    this:DestroySelf()
end

function Q600140Trigger:PreTriggerIn()
    print("Q600140Trigger - PreTriggerIn")
end

function Q600140Trigger:LightUpTriggerIn()
    print("Q600140Trigger - LightUpTriggerIn")
end

function Q600140Trigger:TriggerOut()
    print("Q600140Trigger - TriggerOut")
end

return Q600140Trigger
