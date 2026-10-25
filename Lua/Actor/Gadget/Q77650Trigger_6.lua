require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77650Trigger_6 = class("Q77650Trigger_6", GadgetActorProxy)
Q77650Trigger_6.defaultAlias = "Q77650Trigger_6"
local Q77650ClientConfig = require("Quest/Client/Q77650ClientConfig")

local this
local subIDs = Q77650ClientConfig.SubIDs
local datas = Q77650ClientConfig.Datas
local npcs = Q77650ClientConfig.Npcs
local points = Q77650ClientConfig.Points

function Q77650Trigger_6:OnPostDataPrepare()
    print("Q77650Trigger_6 - OnPostDataPrepare")
    this = self
end

function Q77650Trigger_6:OnPostComponentPrepare()
    print("Q77650Trigger_6 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77650)
end

function Q77650Trigger_6:TriggerIn()
    print("Q77650Trigger_6 - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7765009})
    this:DestroySelf()
end

function Q77650Trigger_6:PreTriggerIn()
    print("Q77650Trigger_6 - PreTriggerIn")
end

function Q77650Trigger_6:LightUpTriggerIn()
    print("Q77650Trigger_6 - LightUpTriggerIn")
end

function Q77650Trigger_6:TriggerOut()
    print("Q77650Trigger_6 - TriggerOut")
end

return Q77650Trigger_6
