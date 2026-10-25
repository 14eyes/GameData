require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710407Trigger_2 = class("Q7710407Trigger_2", GadgetActorProxy)
Q7710407Trigger_2.defaultAlias = "Q7710407Trigger_2"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710407Trigger_2:OnPostDataPrepare()
    print("Q7710407Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q7710407Trigger_2:OnPostComponentPrepare()
    print("Q7710407Trigger_2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 11, 6, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710407Trigger_2:TriggerIn()
    print("Q7710407Trigger_2 - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc3412.alias, "", true)
end

function Q7710407Trigger_2:PreTriggerIn()
    print("Q7710407Trigger_2 - PreTriggerIn")
end

function Q7710407Trigger_2:LightUpTriggerIn()
    print("Q7710407Trigger_2 - LightUpTriggerIn")
end

function Q7710407Trigger_2:TriggerOut()
    print("Q7710407Trigger_2 - TriggerOut")
end

return Q7710407Trigger_2
