require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_11 = class("Q77650Trigger_11", GadgetActorProxy)
Q77650Trigger_11.defaultAlias = "Q77650Trigger_11"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_11:OnPostDataPrepare()
    print("Q77650Trigger_11 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_11:OnPostComponentPrepare()
    print("Q77650Trigger_11 - OnPostComponentPrepare")
    this:AddComponentTrigger(32, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_11:TriggerIn()
    print("Q77650Trigger_11 - TriggerIn")
    actorMgr:GetActor("77650"):RequestInteraction(npcs.Npc1331.alias, "", true)
    this:DestroySelf()
end

function Q77650Trigger_11:PreTriggerIn()
    print("Q77650Trigger_11 - PreTriggerIn")
end

function Q77650Trigger_11:LightUpTriggerIn()
    print("Q77650Trigger_11 - LightUpTriggerIn")
end

function Q77650Trigger_11:TriggerOut()
    print("Q77650Trigger_11 - TriggerOut")
end

return Q77650Trigger_11
