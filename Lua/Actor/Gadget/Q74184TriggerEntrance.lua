require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184TriggerEntrance = class("Q74184TriggerEntrance", GadgetActorProxy)
Q74184TriggerEntrance.defaultAlias = "Q74184TriggerEntrance"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184TriggerEntrance:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] OnPostDataPrepare")
    this = self
end

function Q74184TriggerEntrance:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] OnPostComponentPrepare")
    this:AddComponentTrigger(33.24567, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q74184TriggerEntrance:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] TriggerIn")
    actorUtils.FinishQuestID(false, 7418410)
    this:DestroySelf()
end

function Q74184TriggerEntrance:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] PreTriggerIn")
end

function Q74184TriggerEntrance:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] LightUpTriggerIn")
end

function Q74184TriggerEntrance:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184TriggerEntrance] TriggerOut")
end

return Q74184TriggerEntrance
