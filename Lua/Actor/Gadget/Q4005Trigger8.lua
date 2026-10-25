require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005Trigger8 = class("Q4005Trigger8", GadgetActorProxy)
Q4005Trigger8.defaultAlias = "Q4005Trigger8"
local Q4005ClientConfig = require("Quest/Client/Q4005ClientConfig")

local this
local subIDs = Q4005ClientConfig.SubIDs
local npcs = Q4005ClientConfig.Npcs
local points = Q4005ClientConfig.Points
local datas = Q4005ClientConfig.Datas

function Q4005Trigger8:OnPostDataPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger8] OnPostDataPrepare")
    this = self
end

function Q4005Trigger8:OnPostComponentPrepare()
    print("[MainId: 4005][Trigger: Q4005Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(75, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4005Trigger8:TriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger8] TriggerIn")
    actorUtils.FinishQuestID(false, 400507)
    this:DestroySelf()
end

function Q4005Trigger8:PreTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger8] PreTriggerIn")
end

function Q4005Trigger8:LightUpTriggerIn()
    print("[MainId: 4005][Trigger: Q4005Trigger8] LightUpTriggerIn")
end

function Q4005Trigger8:TriggerOut()
    print("[MainId: 4005][Trigger: Q4005Trigger8] TriggerOut")
end

return Q4005Trigger8
