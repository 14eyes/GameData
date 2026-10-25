require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712811Trigger = class("Q7712811Trigger", GadgetActorProxy)
Q7712811Trigger.defaultAlias = "Q7712811Trigger"
local Q77128ClientConfig = require("Quest/Client/Q77128ClientConfig")

local this
local subIDs = Q77128ClientConfig.SubIDs
local datas = Q77128ClientConfig.Datas
local npcs = Q77128ClientConfig.Npcs
local points = Q77128ClientConfig.Points

function Q7712811Trigger:OnPostDataPrepare()
    print("Q7712811Trigger - OnPostDataPrepare")
    this = self
end

function Q7712811Trigger:OnPostComponentPrepare()
    print("Q7712811Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77128)
end

function Q7712811Trigger:TriggerIn()
    print("Q7712811Trigger - TriggerIn")
    actorMgr:GetActor("77128"):RequestInteraction(npcs.Npc7655.alias, "", true)
    this:DestroySelf()
end

function Q7712811Trigger:PreTriggerIn()
    print("Q7712811Trigger - PreTriggerIn")
end

function Q7712811Trigger:LightUpTriggerIn()
    print("Q7712811Trigger - LightUpTriggerIn")
end

function Q7712811Trigger:TriggerOut()
    print("Q7712811Trigger - TriggerOut")
end

return Q7712811Trigger
