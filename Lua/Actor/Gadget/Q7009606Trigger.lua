require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009606Trigger = class("Q7009606Trigger", GadgetActorProxy)
Q7009606Trigger.defaultAlias = "Q7009606Trigger"
local Q70096ClientConfig = require("Quest/Client/Q70096ClientConfig")

local this
local subIDs = Q70096ClientConfig.SubIDs
local datas = Q70096ClientConfig.Datas
local npcs = Q70096ClientConfig.Npcs
local points = Q70096ClientConfig.Points

function Q7009606Trigger:OnPostDataPrepare()
    print("Q7009606Trigger - OnPostDataPrepare")
    this = self
end

function Q7009606Trigger:OnPostComponentPrepare()
    print("Q7009606Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7009606Trigger:TriggerIn()
    print("Q7009606Trigger - TriggerIn")
end

function Q7009606Trigger:PreTriggerIn()
    print("Q7009606Trigger - PreTriggerIn")
end

function Q7009606Trigger:LightUpTriggerIn()
    print("Q7009606Trigger - LightUpTriggerIn")
end

function Q7009606Trigger:TriggerOut()
    print("Q7009606Trigger - TriggerOut")
    actorMgr:GetActor("70096"):DestroyQuestNpcActor(npcs.Npc1322.alias, 3)
    this:DestroySelf()
end

return Q7009606Trigger
