require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger = class("Q77650Trigger", GadgetActorProxy)
Q77650Trigger.defaultAlias = "Q77650Trigger"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger:OnPostDataPrepare()
    print("Q77650Trigger - OnPostDataPrepare")
    this = self
end

function Q77650Trigger:OnPostComponentPrepare()
    print("Q77650Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger:TriggerIn()
    print("Q77650Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7765001})
    this:DestroySelf()
end

function Q77650Trigger:PreTriggerIn()
    print("Q77650Trigger - PreTriggerIn")
end

function Q77650Trigger:LightUpTriggerIn()
    print("Q77650Trigger - LightUpTriggerIn")
end

function Q77650Trigger:TriggerOut()
    print("Q77650Trigger - TriggerOut")
end

return Q77650Trigger
