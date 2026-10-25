require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504825_Trigger02 = class("Q7504825_Trigger02", GadgetActorProxy)
Q7504825_Trigger02.defaultAlias = "Q7504825_Trigger02"
local Q75048ClientConfig = require("Quest/Client/Q75048ClientConfig")

local this
local subIDs = Q75048ClientConfig.SubIDs
local npcs = Q75048ClientConfig.Npcs
local points = Q75048ClientConfig.Points
local datas = Q75048ClientConfig.Datas

function Q7504825_Trigger02:OnPostDataPrepare()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] OnPostDataPrepare")
    this = self
end

function Q7504825_Trigger02:OnPostComponentPrepare()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13.647, 32.693, 28.23099, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75048)
end

function Q7504825_Trigger02:TriggerIn()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] TriggerIn")
    local actor = actorMgr:GetActor("75048")
    actor:EnterSceneLookCamera({x = 80.625, y = 795.076, z = 9705.136}, 0.5, 1, false, false)
    actor:QuestNarratorTask(datas.NarratorWithId02.durationList)
    this:DestroySelf()
end

function Q7504825_Trigger02:PreTriggerIn()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] PreTriggerIn")
end

function Q7504825_Trigger02:LightUpTriggerIn()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] LightUpTriggerIn")
end

function Q7504825_Trigger02:TriggerOut()
    print("[MainId: 75048][Trigger: Q7504825_Trigger02] TriggerOut")
end

return Q7504825_Trigger02
