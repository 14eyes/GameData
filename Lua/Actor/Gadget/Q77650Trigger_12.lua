require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_12 = class("Q77650Trigger_12", GadgetActorProxy)
Q77650Trigger_12.defaultAlias = "Q77650Trigger_12"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_12:OnPostDataPrepare()
    print("Q77650Trigger_12 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_12:OnPostComponentPrepare()
    print("Q77650Trigger_12 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_12:TriggerIn()
    print("Q77650Trigger_12 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7765010})
    this:DestroySelf()
end

function Q77650Trigger_12:PreTriggerIn()
    print("Q77650Trigger_12 - PreTriggerIn")
end

function Q77650Trigger_12:LightUpTriggerIn()
    print("Q77650Trigger_12 - LightUpTriggerIn")
end

function Q77650Trigger_12:TriggerOut()
    print("Q77650Trigger_12 - TriggerOut")
end

return Q77650Trigger_12
