require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7015201Trigger = class("Q7015201Trigger", GadgetActorProxy)
Q7015201Trigger.defaultAlias = "Q7015201Trigger"
local Q70152ClientConfig = require("Quest/Client/Q70152ClientConfig")

local this
local subIDs = Q70152ClientConfig.SubIDs
local npcs = Q70152ClientConfig.Npcs
local points = Q70152ClientConfig.Points

function Q7015201Trigger:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("70152"):DestroyQuestNpcActor(arg2, arg1)
end

function Q7015201Trigger:OnPostDataPrepare()
    print("Q7015201Trigger - OnPostDataPrepare")
    this = self
end

function Q7015201Trigger:OnPostComponentPrepare()
    print("Q7015201Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(140, 48, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70152)
end

function Q7015201Trigger:TriggerIn()
    print("Q7015201Trigger - TriggerIn")
    actorMgr:GetActor("70152"):CreateQuestNpc(quest, npcs.Npc17113_1.id, 0, false, 0)
end

function Q7015201Trigger:PreTriggerIn()
    print("Q7015201Trigger - PreTriggerIn")
end

function Q7015201Trigger:LightUpTriggerIn()
    print("Q7015201Trigger - LightUpTriggerIn")
end

function Q7015201Trigger:TriggerOut()
    print("Q7015201Trigger - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc17113_1.alias)
end

return Q7015201Trigger
