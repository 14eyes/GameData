require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600021Trigger = class("Q600021Trigger", GadgetActorProxy)
Q600021Trigger.defaultAlias = "Q600021Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600021Trigger:OnPostDataPrepare()
    print("Q600021Trigger - OnPostDataPrepare")
    this = self
end

function Q600021Trigger:OnPostComponentPrepare()
    print("Q600021Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600021Trigger:TriggerIn()
    print("Q600021Trigger - TriggerIn")
    this:DestroySelf()
end

function Q600021Trigger:PreTriggerIn()
    print("Q600021Trigger - PreTriggerIn")
end

function Q600021Trigger:LightUpTriggerIn()
    print("Q600021Trigger - LightUpTriggerIn")
    actorMgr:GetActor("6000"):ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
end

function Q600021Trigger:TriggerOut()
    print("Q600021Trigger - TriggerOut")
end

return Q600021Trigger
