require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7015101Trigger = class("Q7015101Trigger", GadgetActorProxy)
Q7015101Trigger.defaultAlias = "Q7015101Trigger"
local Q70151ClientConfig = require("Quest/Client/Q70151ClientConfig")

local this
local subIDs = Q70151ClientConfig.SubIDs
local npcs = Q70151ClientConfig.Npcs

function Q7015101Trigger:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("70151"):DestroyQuestNpcActor(arg2, arg1)
end

function Q7015101Trigger:OnPostDataPrepare()
    print("Q7015101Trigger - OnPostDataPrepare")
    this = self
end

function Q7015101Trigger:OnPostComponentPrepare()
    print("Q7015101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(77, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70151)
end

function Q7015101Trigger:TriggerIn()
    print("Q7015101Trigger - TriggerIn")
end

function Q7015101Trigger:PreTriggerIn()
    print("Q7015101Trigger - PreTriggerIn")
end

function Q7015101Trigger:LightUpTriggerIn()
    print("Q7015101Trigger - LightUpTriggerIn")
end

function Q7015101Trigger:TriggerOut()
    print("Q7015101Trigger - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc17113_1.alias)
end

return Q7015101Trigger
