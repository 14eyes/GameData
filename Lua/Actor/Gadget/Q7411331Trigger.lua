require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411331Trigger = class("Q7411331Trigger", GadgetActorProxy)
Q7411331Trigger.defaultAlias = "Q7411331Trigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411331Trigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411331Trigger] OnPostDataPrepare")
    this = self
end

function Q7411331Trigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411331Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411331Trigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411331Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74113")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId7411331)
    actor:EnterSceneLookCamera({x = 3254.5, y = 441.3, z = 3640.0}, 0, 2, false, false)
    this:DestroySelf()
end

function Q7411331Trigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411331Trigger] PreTriggerIn")
end

function Q7411331Trigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411331Trigger] LightUpTriggerIn")
end

function Q7411331Trigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411331Trigger] TriggerOut")
end

return Q7411331Trigger
