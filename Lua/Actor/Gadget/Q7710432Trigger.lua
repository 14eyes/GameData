require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710432Trigger = class("Q7710432Trigger", GadgetActorProxy)
Q7710432Trigger.defaultAlias = "Q7710432Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710432Trigger:OnPostDataPrepare()
    print("Q7710432Trigger - OnPostDataPrepare")
    this = self
end

function Q7710432Trigger:OnPostComponentPrepare()
    print("Q7710432Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(54, 40, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710432Trigger:TriggerIn()
    print("Q7710432Trigger - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc3417.alias, "", true)
end

function Q7710432Trigger:PreTriggerIn()
    print("Q7710432Trigger - PreTriggerIn")
end

function Q7710432Trigger:LightUpTriggerIn()
    print("Q7710432Trigger - LightUpTriggerIn")
end

function Q7710432Trigger:TriggerOut()
    print("Q7710432Trigger - TriggerOut")
end

return Q7710432Trigger
