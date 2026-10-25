require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411301RMDTrigger = class("Q7411301RMDTrigger", GadgetActorProxy)
Q7411301RMDTrigger.defaultAlias = "Q7411301RMDTrigger"
local Q74113ClientConfig = require("Quest/Client/Q74113ClientConfig")

local this
local subIDs = Q74113ClientConfig.SubIDs
local npcs = Q74113ClientConfig.Npcs
local points = Q74113ClientConfig.Points
local datas = Q74113ClientConfig.Datas

function Q7411301RMDTrigger:OnPostDataPrepare()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] OnPostDataPrepare")
    this = self
end

function Q7411301RMDTrigger:OnPostComponentPrepare()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411301RMDTrigger:TriggerIn()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] TriggerIn")
    local actor = actorMgr:GetActor("74113")
    actor:NarratorOnlyTaskByData(datas.Q7411301far)
    actor:EnterSceneLookCamera({x = 3518.0, y = 453.0, z = 4658.5}, 1, 1.5, false, false)
    this:DestroySelf()
end

function Q7411301RMDTrigger:PreTriggerIn()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] PreTriggerIn")
end

function Q7411301RMDTrigger:LightUpTriggerIn()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] LightUpTriggerIn")
end

function Q7411301RMDTrigger:TriggerOut()
    print("[MainId: 74113][Trigger: Q7411301RMDTrigger] TriggerOut")
end

return Q7411301RMDTrigger
