require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77656Trigger_2 = class("Q77656Trigger_2", GadgetActorProxy)
Q77656Trigger_2.defaultAlias = "Q77656Trigger_2"
local Q77656ClientConfig = require("Quest/Client/Q77656ClientConfig")

local this
local subIDs = Q77656ClientConfig.SubIDs
local datas = Q77656ClientConfig.Datas
local npcs = Q77656ClientConfig.Npcs
local points = Q77656ClientConfig.Points

function Q77656Trigger_2:OnPostDataPrepare()
    print("Q77656Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q77656Trigger_2:OnPostComponentPrepare()
    print("Q77656Trigger_2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(35, 23, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77656)
end

function Q77656Trigger_2:TriggerIn()
    print("Q77656Trigger_2 - TriggerIn")
    actorMgr:GetActor("77656"):RequestInteraction(npcs.Npc17025.alias, "", true)
    this:DestroySelf()
end

function Q77656Trigger_2:PreTriggerIn()
    print("Q77656Trigger_2 - PreTriggerIn")
end

function Q77656Trigger_2:LightUpTriggerIn()
    print("Q77656Trigger_2 - LightUpTriggerIn")
end

function Q77656Trigger_2:TriggerOut()
    print("Q77656Trigger_2 - TriggerOut")
end

return Q77656Trigger_2
