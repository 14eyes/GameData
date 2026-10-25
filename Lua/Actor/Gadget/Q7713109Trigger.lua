require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713109Trigger = class("Q7713109Trigger", GadgetActorProxy)
Q7713109Trigger.defaultAlias = "Q7713109Trigger"
local Q77131ClientConfig = require("Quest/Client/Q77131ClientConfig")

local this
local subIDs = Q77131ClientConfig.SubIDs
local datas = Q77131ClientConfig.Datas
local npcs = Q77131ClientConfig.Npcs
local points = Q77131ClientConfig.Points

function Q7713109Trigger:OnPostDataPrepare()
    print("Q7713109Trigger - OnPostDataPrepare")
    this = self
end

function Q7713109Trigger:OnPostComponentPrepare()
    print("Q7713109Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(5, 7, 12, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77131)
end

function Q7713109Trigger:TriggerIn()
    print("Q7713109Trigger - TriggerIn")
    actorMgr:GetActor("77131"):RequestInteraction(npcs.Npc7654.alias, "", true)
end

function Q7713109Trigger:PreTriggerIn()
    print("Q7713109Trigger - PreTriggerIn")
end

function Q7713109Trigger:LightUpTriggerIn()
    print("Q7713109Trigger - LightUpTriggerIn")
end

function Q7713109Trigger:TriggerOut()
    print("Q7713109Trigger - TriggerOut")
end

return Q7713109Trigger
