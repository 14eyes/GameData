require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73225Trigger7322502reminder = class("Q73225Trigger7322502reminder", GadgetActorProxy)
Q73225Trigger7322502reminder.defaultAlias = "Q73225Trigger7322502reminder"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local this
local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q73225Trigger7322502reminder:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73225Trigger7322502reminder:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73225Trigger7322502reminder:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73225")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId7322513)
    actor:EnterSceneLookCamera({x = -1238.0, y = -32.0, z = 5327.0}, 0.5, 3, false, false)
    this:DestroySelf()
end

function Q73225Trigger7322502reminder:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73225Trigger7322502reminder:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73225Trigger7322502reminder:TriggerOut()
    print("TriggerOut")
end

return Q73225Trigger7322502reminder
