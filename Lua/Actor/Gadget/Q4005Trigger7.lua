require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005Trigger7 = class("Q4005Trigger7", GadgetActorProxy)
Q4005Trigger7.defaultAlias = "Q4005Trigger7"
local Q4005ClientConfig = require("Quest/Client/Q4005ClientConfig")

local this
local subIDs = Q4005ClientConfig.SubIDs
local npcs = Q4005ClientConfig.Npcs
local points = Q4005ClientConfig.Points
local datas = Q4005ClientConfig.Datas

function Q4005Trigger7:OnPostDataPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger7] OnPostDataPrepare")
    this = self
end

function Q4005Trigger7:OnPostComponentPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger7] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4005Trigger7:TriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger7] TriggerIn")
    actorMgr:GetActor("4005"):RequestInteraction(npcs.Npc1076Data.alias)
    this:DestroySelf()
end

function Q4005Trigger7:PreTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger7] PreTriggerIn")
end

function Q4005Trigger7:LightUpTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger7] LightUpTriggerIn")
end

function Q4005Trigger7:TriggerOut()
    print("[MainId: 4005][Trigger: Q4005Trigger7] TriggerOut")
end

return Q4005Trigger7
