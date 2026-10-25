require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184TriggerGetItem = class("Q74184TriggerGetItem", GadgetActorProxy)
Q74184TriggerGetItem.defaultAlias = "Q74184TriggerGetItem"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184TriggerGetItem:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] OnPostDataPrepare")
    this = self
end

function Q74184TriggerGetItem:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 15, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74184TriggerGetItem:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] TriggerIn")
    actorUtils.FinishQuestID(false, 7418428)
    this:DestroySelf()
end

function Q74184TriggerGetItem:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] PreTriggerIn")
end

function Q74184TriggerGetItem:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] LightUpTriggerIn")
end

function Q74184TriggerGetItem:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184TriggerGetItem] TriggerOut")
end

return Q74184TriggerGetItem
