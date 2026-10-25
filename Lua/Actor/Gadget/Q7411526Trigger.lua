require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411526Trigger = class("Q7411526Trigger", GadgetActorProxy)
Q7411526Trigger.defaultAlias = "Q7411526Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411526Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411526Trigger] OnPostDataPrepare")
    this = self
end

function Q7411526Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411526Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411526Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411526Trigger] TriggerIn")
    actorMgr:GetActor("74115"):RequestInteraction(npcs.Npc21158Data.alias, "", true)
end

function Q7411526Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411526Trigger] PreTriggerIn")
end

function Q7411526Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411526Trigger] LightUpTriggerIn")
end

function Q7411526Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411526Trigger] TriggerOut")
end

return Q7411526Trigger
