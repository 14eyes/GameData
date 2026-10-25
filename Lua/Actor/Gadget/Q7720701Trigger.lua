require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7720701Trigger = class("Q7720701Trigger", GadgetActorProxy)
Q7720701Trigger.defaultAlias = "Q7720701Trigger"
local Q77207ClientConfig = require("Quest/Client/Q77207ClientConfig")

local this
local subIDs = Q77207ClientConfig.SubIDs
local datas = Q77207ClientConfig.Datas
local npcs = Q77207ClientConfig.Npcs

function Q7720701Trigger:OnPostDataPrepare()
    print("Q7720701Trigger - OnPostDataPrepare")
    this = self
end

function Q7720701Trigger:OnPostComponentPrepare()
    print("Q7720701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77207)
end

function Q7720701Trigger:TriggerIn()
    print("Q7720701Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7720701Trigger:PreTriggerIn()
    print("Q7720701Trigger - PreTriggerIn")
end

function Q7720701Trigger:LightUpTriggerIn()
    print("Q7720701Trigger - LightUpTriggerIn")
end

function Q7720701Trigger:TriggerOut()
    print("Q7720701Trigger - TriggerOut")
    actorMgr:GetActor("77207"):DestroyQuestNpcActor(npcs.Npc7425.alias, 3)
end

return Q7720701Trigger
