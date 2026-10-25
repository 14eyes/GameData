require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501412Trigger = class("Q501412Trigger", GadgetActorProxy)
Q501412Trigger.defaultAlias = "Q501412Trigger"
local Q5014ClientConfig = require("Quest/Client/Q5014ClientConfig")

local this
local subIDs = Q5014ClientConfig.SubIDs
local datas = Q5014ClientConfig.Datas
local npcs = Q5014ClientConfig.Npcs
local points = Q5014ClientConfig.Points

function Q501412Trigger:OnPostDataPrepare()
    print("Q501412Trigger - OnPostDataPrepare")
    this = self
end

function Q501412Trigger:OnPostComponentPrepare()
    print("Q501412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5014)
end

function Q501412Trigger:TriggerIn()
    print("Q501412Trigger - TriggerIn")
    actorMgr:GetActor("5014"):CreateQuestNpcById(501412, npcs.Npc1096.id, 0, false, 0)
    actorMgr:GetActor("5014"):RequestInteraction(npcs.Npc1096.alias, "", true)
    this:DestroySelf()
end

function Q501412Trigger:PreTriggerIn()
    print("Q501412Trigger - PreTriggerIn")
end

function Q501412Trigger:LightUpTriggerIn()
    print("Q501412Trigger - LightUpTriggerIn")
end

function Q501412Trigger:TriggerOut()
    print("Q501412Trigger - TriggerOut")
end

return Q501412Trigger
