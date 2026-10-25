require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184TriggerGetMission = class("Q74184TriggerGetMission", GadgetActorProxy)
Q74184TriggerGetMission.defaultAlias = "Q74184TriggerGetMission"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184TriggerGetMission:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] OnPostDataPrepare")
    this = self
end

function Q74184TriggerGetMission:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(518.6473, 375.5938, 65.10337, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74184TriggerGetMission:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] TriggerIn")
    actorUtils.FinishQuestID(false, 7418419)
    this:DestroySelf()
end

function Q74184TriggerGetMission:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] PreTriggerIn")
end

function Q74184TriggerGetMission:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] LightUpTriggerIn")
end

function Q74184TriggerGetMission:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184TriggerGetMission] TriggerOut")
end

return Q74184TriggerGetMission
