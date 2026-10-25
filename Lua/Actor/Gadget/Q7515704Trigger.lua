require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515704Trigger = class("Q7515704Trigger", GadgetActorProxy)
Q7515704Trigger.defaultAlias = "Q7515704Trigger"
local Q75157ClientConfig = require("Quest/Client/Q75157ClientConfig")

local this
local subIDs = Q75157ClientConfig.SubIDs
local npcs = Q75157ClientConfig.Npcs
local datas = Q75157ClientConfig.Datas

function Q7515704Trigger:OnPostDataPrepare()
    print("[MainId: 75157][Trigger: Q7515704Trigger] OnPostDataPrepare")
    this = self
end

function Q7515704Trigger:OnPostComponentPrepare()
    print("[MainId: 75157][Trigger: Q7515704Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75157)
end

function Q7515704Trigger:TriggerIn()
    print("[MainId: 75157][Trigger: Q7515704Trigger] TriggerIn")
    actorMgr:GetActor("75157"):RequestInteraction(npcs.Npc21779Data.alias, "", true)
    this:DestroySelf()
end

function Q7515704Trigger:PreTriggerIn()
    print("[MainId: 75157][Trigger: Q7515704Trigger] PreTriggerIn")
end

function Q7515704Trigger:LightUpTriggerIn()
    print("[MainId: 75157][Trigger: Q7515704Trigger] LightUpTriggerIn")
end

function Q7515704Trigger:TriggerOut()
    print("[MainId: 75157][Trigger: Q7515704Trigger] TriggerOut")
end

return Q7515704Trigger
