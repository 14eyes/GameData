require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7414423Trigger = class("Q7414423Trigger", GadgetActorProxy)
Q7414423Trigger.defaultAlias = "Q7414423Trigger"
local Q74144ClientConfig = require("Quest/Client/Q74144ClientConfig")

local this
local subIDs = Q74144ClientConfig.SubIDs
local npcs = Q74144ClientConfig.Npcs
local points = Q74144ClientConfig.Points
local datas = Q74144ClientConfig.Datas

function Q7414423Trigger:OnPostDataPrepare()
    print("[MainId: 74144][Trigger: Q7414423Trigger] OnPostDataPrepare")
    this = self
end

function Q7414423Trigger:OnPostComponentPrepare()
    print("[MainId: 74144][Trigger: Q7414423Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7414423Trigger:TriggerIn()
    print("[MainId: 74144][Trigger: Q7414423Trigger] TriggerIn")
    actorMgr:GetActor("74144"):RequestInteraction(npcs.Npc21318Data.alias, "", true)
end

function Q7414423Trigger:PreTriggerIn()
    print("[MainId: 74144][Trigger: Q7414423Trigger] PreTriggerIn")
end

function Q7414423Trigger:LightUpTriggerIn()
    print("[MainId: 74144][Trigger: Q7414423Trigger] LightUpTriggerIn")
end

function Q7414423Trigger:TriggerOut()
    print("[MainId: 74144][Trigger: Q7414423Trigger] TriggerOut")
end

return Q7414423Trigger
