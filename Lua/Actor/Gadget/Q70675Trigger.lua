require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70675Trigger = class("Q70675Trigger", GadgetActorProxy)
Q70675Trigger.defaultAlias = "Q70675Trigger"
local Q70675ClientConfig = require("Quest/Client/Q70675ClientConfig")

local this
local subIDs = Q70675ClientConfig.SubIDs
local npcs = Q70675ClientConfig.Npcs
local points = Q70675ClientConfig.Points

function Q70675Trigger:OnPostDataPrepare()
    print("[MainId: 70675][Trigger: Q70675Trigger] OnPostDataPrepare")
    this = self
end

function Q70675Trigger:OnPostComponentPrepare()
    print("[MainId: 70675][Trigger: Q70675Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 15, 10, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70675Trigger:TriggerIn()
    print("[MainId: 70675][Trigger: Q70675Trigger] TriggerIn")
    actorMgr:GetActor("70675"):RequestInteraction(npcs.Npc1712Data.alias)
    this:DestroySelf()
end

function Q70675Trigger:PreTriggerIn()
    print("[MainId: 70675][Trigger: Q70675Trigger] PreTriggerIn")
end

function Q70675Trigger:LightUpTriggerIn()
    print("[MainId: 70675][Trigger: Q70675Trigger] LightUpTriggerIn")
end

function Q70675Trigger:TriggerOut()
    print("[MainId: 70675][Trigger: Q70675Trigger] TriggerOut")
end

return Q70675Trigger
