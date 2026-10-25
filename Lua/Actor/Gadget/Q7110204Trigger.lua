require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110204Trigger = class("Q7110204Trigger", GadgetActorProxy)
Q7110204Trigger.defaultAlias = "Q7110204Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110204Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110204Trigger] OnPostDataPrepare")
    this = self
end

function Q7110204Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110204Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7110204Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110204Trigger] TriggerIn")
    actorMgr:GetActor("71102"):RequestInteraction(npcs.Npc2493Data.alias, "", true)
    this:DestroySelf()
end

function Q7110204Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110204Trigger] PreTriggerIn")
end

function Q7110204Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110204Trigger] LightUpTriggerIn")
end

function Q7110204Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110204Trigger] TriggerOut")
end

return Q7110204Trigger
